
#include "platform.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "xuartlite_l.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xtime_l.h"
#include <math.h>
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
 * NOTE: The separate terminal log showed DIFFERENT anchor X/Y coordinates.
 * Replace these with the actual physical coordinates before calibrating.
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

/* Place the tag antenna at this measured position before starting the app.
 * Use the SAME origin and axes as the anchor coordinates above.
 * The tag must remain stationary throughout the calibration minute.
 */
#define CAL_TAG_X_CM       0.0f
#define CAL_TAG_Y_CM     200.0f
#define CAL_TAG_Z_CM       0.0f
#define CAL_SECONDS       60U
#define CAL_MAX_SAMPLES  128
#define CAL_MIN_VALID     20

/* Offsets are calculated from raw distances at startup, not hardcoded. */
static float anchor_offset_cm[4] = {0.0f, 0.0f, 0.0f, 0.0f};
static int calibration_samples[4][CAL_MAX_SAMPLES];

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

/* Insertion sort is sufficient for at most 128 calibration readings. */
static float median_cm(int *values, int count)
{
    int i;

    for (i = 1; i < count; ++i) {
        int value = values[i];
        int j = i;
        while (j > 0 && values[j - 1] > value) {
            values[j] = values[j - 1];
            --j;
        }
        values[j] = value;
    }

    if (count & 1) {
        return (float)values[count / 2];
    }
    return ((float)values[count / 2 - 1] +
            (float)values[count / 2]) * 0.5f;
}

/* xil_printf does not support %f; show centimeters to one decimal place. */
static void print_cm_1dp(float value)
{
    int tenths = (int)((value < 0.0f ? -value : value) * 10.0f + 0.5f);
    xil_printf("%s%d.%d", value < 0.0f ? "-" : "",
               tenths / 10, tenths % 10);
}

static int calibrate_anchors(void)
{
    static const u32 bases[4] = {
        UWB1_BASE, UWB2_BASE, UWB3_BASE, UWB4_BASE
    };
    static const char *labels[4] = {
        "ANCHOR1", "ANCHOR2", "ANCHOR3", "ANCHOR4"
    };
    static const float anchor_x[4] = {A1_X, A2_X, A3_X, A4_X};
    static const float anchor_y[4] = {A1_Y, A2_Y, A3_Y, A4_Y};
    static const float anchor_z[4] = {A1_Z, A2_Z, A3_Z, A4_Z};
    int counts[4] = {0, 0, 0, 0};
    float new_offsets[4];
    XTime start, now;
    int i, cycles = 0;

    xil_printf("\r\n[CALIBRATION] Keep tag antenna fixed at "
               "(%d,%d,%d) cm for %d seconds.\r\n",
               (int)CAL_TAG_X_CM, (int)CAL_TAG_Y_CM,
               (int)CAL_TAG_Z_CM, (int)CAL_SECONDS);
    xil_printf("[CALIBRATION] Collecting RAW distances; no offsets yet.\r\n");

    XTime_GetTime(&start);
    do {
        for (i = 0; i < 4; ++i) {
            int d;
            if (counts[i] >= CAL_MAX_SAMPLES) {
                continue;
            }
            d = get_distance_from_anchor(bases[i], labels[i]);
            if (d > 0) { /* Ignore missing or malformed distances. */
                calibration_samples[i][counts[i]++] = d;
            }
        }

        ++cycles;
        xil_printf("[CALIBRATION] Cycle %d; valid A1=%d A2=%d A3=%d A4=%d\r\n",
                   cycles, counts[0], counts[1], counts[2], counts[3]);

        XTime_GetTime(&now);
    } while ((now - start) < ((XTime)COUNTS_PER_SECOND * CAL_SECONDS));

    for (i = 0; i < 4; ++i) {
        if (counts[i] < CAL_MIN_VALID) {
            xil_printf("[CALIBRATION] FAILED: A%d has only %d valid readings "
                       "(minimum %d).\r\n", i + 1, counts[i], CAL_MIN_VALID);
            return -1;
        }
    }

    for (i = 0; i < 4; ++i) {
        float dx = CAL_TAG_X_CM - anchor_x[i];
        float dy = CAL_TAG_Y_CM - anchor_y[i];
        float dz = CAL_TAG_Z_CM - anchor_z[i];
        float expected = sqrtf(dx * dx + dy * dy + dz * dz);
        float measured = median_cm(calibration_samples[i], counts[i]);

        new_offsets[i] = expected - measured;
        xil_printf("[CALIBRATION] A%d: n=%d expected=", i + 1, counts[i]);
        print_cm_1dp(expected);
        xil_printf(" cm median=");
        print_cm_1dp(measured);
        xil_printf(" cm offset=");
        print_cm_1dp(new_offsets[i]);
        xil_printf(" cm\r\n");
    }

    for (i = 0; i < 4; ++i) {
        anchor_offset_cm[i] = new_offsets[i];
    }

    xil_printf("[CALIBRATION] Complete. Move the tag for normal ranging.\r\n");
    return 0;
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
    float c1, c2, c3, c4;
    int ok;

    if ((d1 < 0) || (d2 < 0) || (d3 < 0) || (d4 < 0)) {
        xil_printf("[TAG POSITION] Not enough valid distance data\r\n");
        return;
    }

    c1 = (float)d1 + anchor_offset_cm[0];
    c2 = (float)d2 + anchor_offset_cm[1];
    c3 = (float)d3 + anchor_offset_cm[2];
    c4 = (float)d4 + anchor_offset_cm[3];

    if (c1 <= 0.0f || c2 <= 0.0f || c3 <= 0.0f || c4 <= 0.0f) {
        xil_printf("[TAG POSITION] Invalid corrected distance\r\n");
        return;
    }

    xil_printf("[CAL DIST] A1="); print_cm_1dp(c1);
    xil_printf(" A2="); print_cm_1dp(c2);
    xil_printf(" A3="); print_cm_1dp(c3);
    xil_printf(" A4="); print_cm_1dp(c4);
    xil_printf(" cm\r\n");

    ok = trilaterate_3d(
        A1_X, A1_Y, A1_Z, c1,
        A2_X, A2_Y, A2_Z, c2,
        A3_X, A3_Y, A3_Z, c3,
        A4_X, A4_Y, A4_Z, c4,
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

    if (calibrate_anchors() != 0) {
        xil_printf("[CALIBRATION] Position reporting stopped. "
                   "Check tag and restart with it at the known location.\r\n");
        cleanup_platform();
        return -1;
    }

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

