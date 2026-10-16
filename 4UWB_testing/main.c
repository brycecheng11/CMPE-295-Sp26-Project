#include "platform.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "xuartlite_l.h"
#include "xil_printf.h"
#include "sleep.h"
#include <string.h>
#include <stdlib.h>

#define PS_UART_BASE XPAR_PS7_UART_1_BASEADDR

#define UWB1_BASE XPAR_AXI_UARTLITE_0_BASEADDR
#define UWB2_BASE XPAR_AXI_UARTLITE_1_BASEADDR
#define UWB3_BASE XPAR_AXI_UARTLITE_2_BASEADDR
#define UWB4_BASE XPAR_AXI_UARTLITE_3_BASEADDR

#define UWB_TAG_ADDR "TAG00001"

/* Anchor coordinates in centimeters.
 * A4 is 30 cm above the origin. All coordinates must be measured
 * from the same origin and must match the physical installation.
 */
#define A1_X   0.0f
#define A1_Y  35.0f
#define A1_Z   0.0f

#define A2_X  26.0f
#define A2_Y   0.0f
#define A2_Z   0.0f

#define A3_X -23.0f
#define A3_Y   0.0f
#define A3_Z   0.0f

#define A4_X   0.0f
#define A4_Y   0.0f
#define A4_Z  30.0f

/* corrected distance = measured distance + offset */
#define A1_OFFSET_CM 0
#define A2_OFFSET_CM 0
#define A3_OFFSET_CM 0
#define A4_OFFSET_CM 0

typedef struct {
    float x;
    float y;
    float z;
} Point3D;

static void uwb_send_byte(u32 uart_base, u8 c)
{
    while (XUartLite_IsTransmitFull(uart_base)) {
        /* Wait for TX FIFO space. */
    }
    XUartLite_WriteReg(uart_base, XUL_TX_FIFO_OFFSET, c);
}

static void uwb_send_cmd(u32 uart_base, const char *label, const char *cmd)
{
    (void)label;

    while (*cmd != '\0') {
        uwb_send_byte(uart_base, (u8)*cmd++);
        usleep(1000);
    }

    uwb_send_byte(uart_base, '\r');
    usleep(1000);
    uwb_send_byte(uart_base, '\n');
    usleep(1000);
}

static void uwb_read_for_ms(u32 uart_base, int ms)
{
    int elapsed = 0;

    while (elapsed < ms) {
        while (!XUartLite_IsReceiveEmpty(uart_base)) {
            (void)XUartLite_ReadReg(uart_base, XUL_RX_FIFO_OFFSET);
        }
        usleep(1000);
        elapsed++;
    }
}

static int uwb_read_line(u32 uart_base, char *buf, int max_len, int timeout_ms)
{
    int idx = 0;
    int elapsed = 0;

    while ((elapsed < timeout_ms) && (idx < max_len - 1)) {
        if (!XUartLite_IsReceiveEmpty(uart_base)) {
            char c = (char)XUartLite_ReadReg(uart_base,
                                             XUL_RX_FIFO_OFFSET);

            if (c == '\n') {
                break;
            }
            if (c != '\r') {
                buf[idx++] = c;
            }
        } else {
            usleep(1000);
            elapsed++;
        }
    }

    buf[idx] = '\0';
    return idx;
}

static int parse_anchor_distance_cm(const char *line)
{
    const char *p;

    if (strstr(line, "+ANCHOR_RCV=") == NULL) {
        return -1;
    }

    p = strrchr(line, ',');
    if (p == NULL) {
        return -1;
    }

    return atoi(p + 1);
}

static void configure_anchor(u32 uart_base, const char *label,
                             int anchor_number)
{
    const char *address_command;

    switch (anchor_number) {
    case 1:
        address_command = "AT+ADDRESS=ANC00001";
        break;
    case 2:
        address_command = "AT+ADDRESS=ANC00002";
        break;
    case 3:
        address_command = "AT+ADDRESS=ANC00003";
        break;
    case 4:
        address_command = "AT+ADDRESS=ANC00004";
        break;
    default:
        xil_printf("ERROR: Invalid anchor number\r\n");
        return;
    }

    xil_printf("Configuring %s...\r\n", label);

    uwb_send_cmd(uart_base, label, "AT");
    uwb_read_for_ms(uart_base, 500);

    uwb_send_cmd(uart_base, label, "AT+MODE=1");
    uwb_read_for_ms(uart_base, 500);

    uwb_send_cmd(uart_base, label, "AT+NETWORKID=REYAX123");
    uwb_read_for_ms(uart_base, 500);

    uwb_send_cmd(uart_base, label, address_command);
    uwb_read_for_ms(uart_base, 500);

    uwb_send_cmd(uart_base, label,
                 "AT+CPIN=00000000000000000000000000000000");
    uwb_read_for_ms(uart_base, 500);

    uwb_send_cmd(uart_base, label, "AT+RSSI=0");
    uwb_read_for_ms(uart_base, 500);
}

static int get_distance_from_anchor(u32 uart_base, const char *label)
{
    char line[128];
    int total_wait = 0;
    int distance_cm = -1;

    /* Remove any stale response before starting a new measurement. */
    uwb_read_for_ms(uart_base, 20);

    uwb_send_cmd(uart_base, label,
                 "AT+ANCHOR_SEND=TAG00001,5,HELLO");

    while (total_wait < 1500) {
        int len = uwb_read_line(uart_base, line, sizeof(line), 300);

        if (len > 0) {
            int parsed = parse_anchor_distance_cm(line);
            if (parsed >= 0) {
                distance_cm = parsed;
                break;
            }
        }

        total_wait += 300;
    }

    return distance_cm;
}

static float determinant_3x3(float a11, float a12, float a13,
                             float a21, float a22, float a23,
                             float a31, float a32, float a33)
{
    return a11 * ((a22 * a33) - (a23 * a32))
         - a12 * ((a21 * a33) - (a23 * a31))
         + a13 * ((a21 * a32) - (a22 * a31));
}

/*
 * Solve the four sphere equations:
 * (x-xi)^2 + (y-yi)^2 + (z-zi)^2 = di^2
 *
 * Subtracting sphere 1 from spheres 2, 3 and 4 produces a 3x3
 * linear system. Cramer's rule then provides x, y and z.
 */
static int trilaterate_3d(
    float x1, float y1, float z1, float d1,
    float x2, float y2, float z2, float d2,
    float x3, float y3, float z3, float d3,
    float x4, float y4, float z4, float d4,
    Point3D *result)
{
    float a11 = 2.0f * (x2 - x1);
    float a12 = 2.0f * (y2 - y1);
    float a13 = 2.0f * (z2 - z1);

    float a21 = 2.0f * (x3 - x1);
    float a22 = 2.0f * (y3 - y1);
    float a23 = 2.0f * (z3 - z1);

    float a31 = 2.0f * (x4 - x1);
    float a32 = 2.0f * (y4 - y1);
    float a33 = 2.0f * (z4 - z1);

    float b1 = (d1 * d1) - (d2 * d2)
             - (x1 * x1) + (x2 * x2)
             - (y1 * y1) + (y2 * y2)
             - (z1 * z1) + (z2 * z2);

    float b2 = (d1 * d1) - (d3 * d3)
             - (x1 * x1) + (x3 * x3)
             - (y1 * y1) + (y3 * y3)
             - (z1 * z1) + (z3 * z3);

    float b3 = (d1 * d1) - (d4 * d4)
             - (x1 * x1) + (x4 * x4)
             - (y1 * y1) + (y4 * y4)
             - (z1 * z1) + (z4 * z4);

    float det_a = determinant_3x3(
        a11, a12, a13,
        a21, a22, a23,
        a31, a32, a33);

    if ((det_a > -0.0001f) && (det_a < 0.0001f)) {
        return -1;
    }

    result->x = determinant_3x3(
        b1,  a12, a13,
        b2,  a22, a23,
        b3,  a32, a33) / det_a;

    result->y = determinant_3x3(
        a11, b1,  a13,
        a21, b2,  a23,
        a31, b3,  a33) / det_a;

    result->z = determinant_3x3(
        a11, a12, b1,
        a21, a22, b2,
        a31, a32, b3) / det_a;

    return 0;
}

static void print_tag_position(int d1, int d2, int d3, int d4)
{
    Point3D tag_pos;
    int c1, c2, c3, c4;
    int ok;

    if ((d1 < 0) || (d2 < 0) || (d3 < 0) || (d4 < 0)) {
        xil_printf("[TAG POSITION] Not enough valid distance data\r\n");
        return;
    }

    c1 = d1 + A1_OFFSET_CM;
    c2 = d2 + A2_OFFSET_CM;
    c3 = d3 + A3_OFFSET_CM;
    c4 = d4 + A4_OFFSET_CM;

    if (c1 < 0) c1 = 0;
    if (c2 < 0) c2 = 0;
    if (c3 < 0) c3 = 0;
    if (c4 < 0) c4 = 0;

    xil_printf("[CAL DIST] A1=%d A2=%d A3=%d A4=%d cm\r\n",
               c1, c2, c3, c4);

    ok = trilaterate_3d(
        A1_X, A1_Y, A1_Z, (float)c1,
        A2_X, A2_Y, A2_Z, (float)c2,
        A3_X, A3_Y, A3_Z, (float)c3,
        A4_X, A4_Y, A4_Z, (float)c4,
        &tag_pos);

    if (ok != 0) {
        xil_printf("[TAG POSITION] ERROR: Anchors are coplanar or geometry is invalid\r\n");
        return;
    }

    xil_printf("[TAG POSITION] X=%d cm, Y=%d cm, Z=%d cm\r\n",
               (int)tag_pos.x, (int)tag_pos.y, (int)tag_pos.z);

    if (tag_pos.x > 20.0f) {
        xil_printf("[LEFT/RIGHT] Tag is to the RIGHT\r\n");
    } else if (tag_pos.x < -20.0f) {
        xil_printf("[LEFT/RIGHT] Tag is to the LEFT\r\n");
    } else {
        xil_printf("[LEFT/RIGHT] Tag is CENTERED\r\n");
    }

    if (tag_pos.y > A1_Y) {
        xil_printf("[FRONT/BACK] Tag is in FRONT\r\n");
    } else if (tag_pos.y < 0.0f) {
        xil_printf("[FRONT/BACK] Tag is BEHIND\r\n");
    } else {
        xil_printf("[FRONT/BACK] Tag is near the center area\r\n");
    }

    if (tag_pos.z > A4_Z) {
        xil_printf("[HEIGHT] Tag is above Anchor 4 height\r\n");
    } else if (tag_pos.z < 0.0f) {
        xil_printf("[HEIGHT] WARNING: Calculated Z is below the reference plane\r\n");
    } else {
        xil_printf("[HEIGHT] Tag is between Z=0 and Z=30 cm\r\n");
    }
}

int main(void)
{
    int d1, d2, d3, d4;

    init_platform();

    xil_printf("\r\n========================================\r\n");
    xil_printf("Zybo Four-Anchor RYUW122 3D Position\r\n");
    xil_printf("Target tag: %s\r\n", UWB_TAG_ADDR);
    xil_printf("A1=(%d,%d,%d) cm\r\n", (int)A1_X, (int)A1_Y, (int)A1_Z);
    xil_printf("A2=(%d,%d,%d) cm\r\n", (int)A2_X, (int)A2_Y, (int)A2_Z);
    xil_printf("A3=(%d,%d,%d) cm\r\n", (int)A3_X, (int)A3_Y, (int)A3_Z);
    xil_printf("A4=(%d,%d,%d) cm\r\n", (int)A4_X, (int)A4_Y, (int)A4_Z);
    xil_printf("========================================\r\n");

    configure_anchor(UWB1_BASE, "ANCHOR1", 1);
    configure_anchor(UWB2_BASE, "ANCHOR2", 2);
    configure_anchor(UWB3_BASE, "ANCHOR3", 3);
    configure_anchor(UWB4_BASE, "ANCHOR4", 4);

    while (1) {
        xil_printf("\r\n========== New Ranging Cycle ==========\r\n");

        d1 = get_distance_from_anchor(UWB1_BASE, "ANCHOR1");
        usleep(300000);

        d2 = get_distance_from_anchor(UWB2_BASE, "ANCHOR2");
        usleep(300000);

        d3 = get_distance_from_anchor(UWB3_BASE, "ANCHOR3");
        usleep(300000);

        d4 = get_distance_from_anchor(UWB4_BASE, "ANCHOR4");

        xil_printf("Summary RAW: ");
        if (d1 >= 0) xil_printf("A1=%d cm ", d1);
        else         xil_printf("A1=NO DATA ");

        if (d2 >= 0) xil_printf("A2=%d cm ", d2);
        else         xil_printf("A2=NO DATA ");

        if (d3 >= 0) xil_printf("A3=%d cm ", d3);
        else         xil_printf("A3=NO DATA ");

        if (d4 >= 0) xil_printf("A4=%d cm", d4);
        else         xil_printf("A4=NO DATA");

        xil_printf("\r\n");
        print_tag_position(d1, d2, d3, d4);

        sleep(1);
    }

    cleanup_platform();
    return 0;
}
