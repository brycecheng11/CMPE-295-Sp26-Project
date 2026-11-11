#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "driver/uart.h"
#include "driver/gpio.h"
#include "esp_err.h"

#define UWB_UART   UART_NUM_1
#define UWB_TX_PIN GPIO_NUM_21
#define UWB_RX_PIN GPIO_NUM_20
#define UWB_RST_PIN GPIO_NUM_5

/*
 * Print everything received from the RYUW122 for a fixed time.
 */
static void read_uwb_for_ms(int duration_ms)
{
    uint8_t data[128];
    int elapsed_ms = 0;

    while (elapsed_ms < duration_ms) {
        int length = uart_read_bytes(
            UWB_UART,
            data,
            sizeof(data) - 1,
            pdMS_TO_TICKS(100)
        );

        if (length > 0) {
            data[length] = '\0';
            printf("%s", (char *)data);
            fflush(stdout);
        }

        elapsed_ms += 100;
    }
}

/*
 * Generate an active-low hardware reset.
 *
 * Open-drain mode:
 *   Write 0 = actively pull NRST to ground
 *   Write 1 = release NRST; 10k resistor pulls it to 3.3 V
 */
static void reset_uwb(void)
{
    const gpio_config_t reset_config = {
        .pin_bit_mask = 1ULL << UWB_RST_PIN,
        .mode = GPIO_MODE_OUTPUT_OD,
        .pull_up_en = GPIO_PULLUP_ENABLE,
        .pull_down_en = GPIO_PULLDOWN_DISABLE,
        .intr_type = GPIO_INTR_DISABLE
    };

    ESP_ERROR_CHECK(gpio_config(&reset_config));

    /*
     * Release reset while power stabilizes.
     */
    gpio_set_level(UWB_RST_PIN, 1);
    vTaskDelay(pdMS_TO_TICKS(500));

    printf("Pulling RYUW122 NRST low...\n");

    gpio_set_level(UWB_RST_PIN, 0);
    vTaskDelay(pdMS_TO_TICKS(100));

    printf("Releasing RYUW122 NRST...\n");

    gpio_set_level(UWB_RST_PIN, 1);

    /*
     * Give the module enough time to boot completely.
     */
    vTaskDelay(pdMS_TO_TICKS(1500));
}

/*
 * Send one AT command, print the complete response,
 * and wait for +OK or +ERR.
 */
static bool send_cmd(const char *command)
{
    char tx_buffer[128];
    char response[256] = {0};

    size_t response_length = 0;
    int elapsed_ms = 0;

    int command_length = snprintf(
        tx_buffer,
        sizeof(tx_buffer),
        "%s\r\n",
        command
    );

    if (command_length < 0 ||
        command_length >= (int)sizeof(tx_buffer)) {
        printf("ERROR: Command is too long\n");
        return false;
    }

    /*
     * Remove stale UART data before sending this command.
     */
    uart_flush_input(UWB_UART);

    printf(">> %s\n", command);

    int written = uart_write_bytes(
        UWB_UART,
        tx_buffer,
        command_length
    );

    if (written != command_length) {
        printf("ERROR: UART transmission failed\n");
        return false;
    }

    ESP_ERROR_CHECK(
        uart_wait_tx_done(
            UWB_UART,
            pdMS_TO_TICKS(100)
        )
    );

    /*
     * Wait up to 1.5 seconds for +OK or +ERR.
     */
    while (elapsed_ms < 1500) {
        uint8_t data[128];

        int length = uart_read_bytes(
            UWB_UART,
            data,
            sizeof(data) - 1,
            pdMS_TO_TICKS(100)
        );

        if (length > 0) {
            size_t available;
            size_t copy_length;

            data[length] = '\0';

            printf("%s", (char *)data);
            fflush(stdout);

            available =
                sizeof(response) - response_length - 1;

            copy_length =
                (size_t)length < available
                    ? (size_t)length
                    : available;

            memcpy(
                response + response_length,
                data,
                copy_length
            );

            response_length += copy_length;
            response[response_length] = '\0';

            if (strstr(response, "+OK") != NULL) {
                return true;
            }

            if (strstr(response, "+ERR") != NULL) {
                printf(
                    "ERROR: Module rejected command: %s\n",
                    command
                );
                return false;
            }
        }

        elapsed_ms += 100;
    }

    printf("ERROR: No +OK response for: %s\n", command);
    return false;
}

void app_main(void)
{
    const uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT
    };

    /*
     * Configure ESP32 UART connected to the RYUW122.
     */
    ESP_ERROR_CHECK(
        uart_driver_install(
            UWB_UART,
            2048,
            0,
            0,
            NULL,
            0
        )
    );

    ESP_ERROR_CHECK(
        uart_param_config(
            UWB_UART,
            &uart_config
        )
    );

    ESP_ERROR_CHECK(
        uart_set_pin(
            UWB_UART,
            UWB_TX_PIN,
            UWB_RX_PIN,
            UART_PIN_NO_CHANGE,
            UART_PIN_NO_CHANGE
        )
    );

    /*
     * Automatically reset the RYUW122.
     */
    printf("\nStarting RYUW122 tag...\n");
    reset_uwb();

    /*
     * Print startup messages such as +RESET and +READY.
     */
    read_uwb_for_ms(500);

    /*
     * Configure the RYUW122 as the tag.
     * Stop immediately if any command fails.
     */
    if (!send_cmd("AT")) {
        goto configuration_failed;
    }

    if (!send_cmd("AT+MODE=0")) {
        goto configuration_failed;
    }

    if (!send_cmd("AT+NETWORKID=REYAX123")) {
        goto configuration_failed;
    }

    if (!send_cmd("AT+ADDRESS=TAG00001")) {
        goto configuration_failed;
    }

    if (!send_cmd(
            "AT+CPIN=00000000000000000000000000000000")) {
        goto configuration_failed;
    }

    /*
     * Keep the tag radio continuously enabled while debugging.
     */
    if (!send_cmd("AT+TAGD=0,0")) {
        goto configuration_failed;
    }

    if (!send_cmd("AT+RSSI=0")) {
        goto configuration_failed;
    }

    /*
     * Store the HELLO payload once.
     * Do not repeatedly execute TAG_SEND.
     */
    if (!send_cmd("AT+TAG_SEND=5,HELLO")) {
        printf("ERROR: Could not load tag payload\n");
        goto configuration_failed;
    }

    printf("\n====================================\n");
    printf("TAG configured and ready for anchors\n");
    printf("Address: TAG00001\n");
    printf("====================================\n");

    /*
     * Wait for messages from the anchors.
     */
    while (1) {
        read_uwb_for_ms(1000);
    }

configuration_failed:

    printf("\nTAG CONFIGURATION FAILED\n");
    printf("Check reset, power, TX/RX, ground and baud rate.\n");

    while (1) {
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
// #include <stdio.h>
// #include <string.h>

// #include "freertos/FreeRTOS.h"
// #include "freertos/task.h"

// #include "driver/uart.h"
// #include "driver/gpio.h"

// #define UART_NUM UART_NUM_1
// #define TX_PIN 21   // ESP32-C3 TX → UWB RX
// #define RX_PIN 20   // ESP32-C3 RX ← UWB TX
// #define RST_PIN 5

// void uwb_reset()
// {
//     gpio_set_direction(RST_PIN, GPIO_MODE_OUTPUT);

//     gpio_set_level(RST_PIN, 0);
//     vTaskDelay(pdMS_TO_TICKS(100));
//     gpio_set_level(RST_PIN, 1);
//     vTaskDelay(pdMS_TO_TICKS(500));
// }

// void send_cmd(const char *cmd)
// {
//     char buffer[128];
//     sprintf(buffer, "%s\r\n", cmd);
//     uart_write_bytes(UART_NUM, buffer, strlen(buffer));
//     printf(">> %s\n", cmd);
// }

// void app_main(void)
// {
//     uart_config_t config = {
//         .baud_rate = 115200,
//         .data_bits = UART_DATA_8_BITS,
//         .parity = UART_PARITY_DISABLE,
//         .stop_bits = UART_STOP_BITS_1,
//         .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
//     };

//     uart_driver_install(UART_NUM, 1024, 0, 0, NULL, 0);
//     uart_param_config(UART_NUM, &config);
//     uart_set_pin(UART_NUM, TX_PIN, RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

//     uwb_reset();

//     // Configure TAG
//     send_cmd("AT");
//     vTaskDelay(1000 / portTICK_PERIOD_MS);

//     send_cmd("AT+MODE=0");
//     send_cmd("AT+NETWORKID=REYAX123");
//     send_cmd("AT+ADDRESS=TAG00001");
//     send_cmd("AT+CPIN=00000000000000000000000000000000");

//     uint8_t data[128];

//     while (1) {
//         // Send ranging request
//         send_cmd("AT+TAG_SEND=5,HELLO");

//         int len = uart_read_bytes(UART_NUM, data, sizeof(data)-1, 200 / portTICK_PERIOD_MS);
//         if (len > 0) {
//             data[len] = 0;
//             printf("%s", data);
//         }

//         vTaskDelay(1000 / portTICK_PERIOD_MS);
//     }
// }
// // #include <stdio.h>
// // #include <string.h>

// // #include "freertos/FreeRTOS.h"
// // #include "freertos/task.h"

// // #include "driver/uart.h"
// // #include "driver/gpio.h"

// // #define UART_NUM UART_NUM_1
// // #define TX_PIN 21   // ESP32-C3 TX -> RYW122 RXD
// // #define RX_PIN 20   // ESP32-C3 RX <- RYW122 TXD
// // #define RST_PIN 5

// // void uwb_reset()
// // {
// //     gpio_set_direction(RST_PIN, GPIO_MODE_OUTPUT);

// //     gpio_set_level(RST_PIN, 0);
// //     vTaskDelay(pdMS_TO_TICKS(100));
// //     gpio_set_level(RST_PIN, 1);
// //     vTaskDelay(pdMS_TO_TICKS(1000));
// // }

// // void read_uwb_for_ms(int ms)
// // {
// //     uint8_t data[128];
// //     int elapsed = 0;

// //     while (elapsed < ms) {
// //         int len = uart_read_bytes(UART_NUM, data, sizeof(data) - 1, pdMS_TO_TICKS(100));

// //         if (len > 0) {
// //             data[len] = 0;
// //             printf("%s", (char *)data);
// //         }

// //         elapsed += 100;
// //     }
// // }

// // void send_cmd(const char *cmd)
// // {
// //     char buffer[128];

// //     snprintf(buffer, sizeof(buffer), "%s\r\n", cmd);
// //     uart_write_bytes(UART_NUM, buffer, strlen(buffer));

// //     printf(">> %s\n", cmd);

// //     // Give module time to answer and print the response
// //     read_uwb_for_ms(500);
// // }

// // void app_main(void)
// // {
// //     uart_config_t config = {
// //         .baud_rate = 115200,
// //         .data_bits = UART_DATA_8_BITS,
// //         .parity = UART_PARITY_DISABLE,
// //         .stop_bits = UART_STOP_BITS_1,
// //         .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
// //         .source_clk = UART_SCLK_DEFAULT,
// //     };

// //     uart_driver_install(UART_NUM, 2048, 2048, 0, NULL, 0);
// //     uart_param_config(UART_NUM, &config);
// //     uart_set_pin(UART_NUM, TX_PIN, RX_PIN, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);

// //     uwb_reset();

// //     send_cmd("AT");
// //     send_cmd("AT+MODE=0");
// //     send_cmd("AT+NETWORKID=REYAX123");
// //     send_cmd("AT+ADDRESS=TAG00001");
// //     send_cmd("AT+CPIN=00000000000000000000000000000000");

// //     printf("\nTAG configured. Waiting for anchor ranging requests...\n");

// //     while (1) {
// //         read_uwb_for_ms(1000);
// //         vTaskDelay(pdMS_TO_TICKS(100));
// //     }
// // }