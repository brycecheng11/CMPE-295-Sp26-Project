#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdint.h>
#include "PmodCAN.h"
#include "xuartps.h"
#include <string.h>
#include <stdint.h>
#include <math.h>
#include <time.h>
#include "xtime_l.h"
#include "mpu_6050.h"
#include "xuartps_hw.h"
#include "xuartlite_l.h"
#include <stdlib.h>
#include <stdbool.h>
#include "xgpio.h"

#define GPIO_BASE XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR

#define PS_UART_BASE XPAR_PS7_UART_1_BASEADDR

#define UWB1_BASE XPAR_AXI_UARTLITE_0_BASEADDR
#define UWB2_BASE XPAR_AXI_UARTLITE_1_BASEADDR
#define UWB3_BASE XPAR_AXI_UARTLITE_2_BASEADDR

#define UWB_TAG_ADDR "TAG00001"



PmodCAN myCAN;
XUartPs Uart;

//MPU Configs
#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter


//PID Memory Space
#define PID_BASE        0x43C00000

#define PID_CONTROL 	(PID_BASE + 0x00)
#define PID_ANGLE       (PID_BASE + 0x04)
#define PID_TARGET		(PID_BASE + 0x14)
#define PID_VELOCITY 	(PID_BASE + 0x20)
#define PID_NEW_VELOCITY (PID_BASE + 0x24)
#define PID_TIME_LO   (PID_BASE + 0x18)   // slv_reg6 -> lower 32 bits of pid_time
#define PID_TIME_HI   (PID_BASE + 0x1C)   // slv_reg7 -> upper 32 bits of pid_time
#define PID_DEBUG_ANGLE (PID_BASE + 0x28)
#define PID_DEBUG_KP    (PID_BASE + 0x2C)
#define PID_DEBUG_KD    (PID_BASE + 0x30)
#define PID_DEBUG_KI    (PID_BASE + 0x34)
#define PID_VELOCITY_READY_TIMEOUT  10000
//#define PID_CONTROL     (PID_BASE + 0x00)
//#define PID_ANGLE       (PID_BASE + 0x04)
//#define PID_TARGET      (PID_BASE + 0x14)
//#define PID_TIME_LO     (PID_BASE + 0x18)
//#define PID_TIME_HI     (PID_BASE + 0x1C)
//#define PID_VELOCITY    (PID_BASE + 0x20)
//#define PID_NEW_VEL     (PID_BASE + 0x24)


#define ANGLE_SCALE     100
#define VELOCITY_SCALE  100

#define MAX_DPS 		648000.0f

#define PITCH_SETPOINT	0.0f		// upright target angle (deg)
#define PID_SETTLE_ITERS         10   // short busy-wait to let the PL pipeline catch up after a write


/* Anchor coordinates in centimeters. All coordinates must be measured
 * from the same origin and must match the physical installation.
 *
 * This A1-A3 version assumes the tag height is known/fixed. It computes
 * horizontal X/Y position instead of attempting unstable 3D positioning.
 */
#define A1_X   0.0f
#define A1_Y   47.0f
#define A1_Z   5.0f

#define A2_X   26.0f
#define A2_Y   0.0f
#define A2_Z   5.0f

#define A3_X  -23.0f
#define A3_Y   0.0f
#define A3_Z   5.0f

/* Corrected distance = raw distance + startup-calculated offset. */

/* Place the tag antenna at this measured position before starting the app.
 * Use the SAME origin and axes as the anchor coordinates above.
 * The tag must remain stationary throughout the calibration minute.
 */
#define CAL_TAG_X_CM       0.0f
#define CAL_TAG_Y_CM     250.0f
#define CAL_TAG_Z_CM       0.0f   /* Also used as the assumed position Z. */
#define CAL_SECONDS       60U
#define CAL_MAX_SAMPLES  128
#define CAL_MIN_VALID     20
#define CAL_MAX_CYCLES    200

/* Offsets are calculated from raw distances at startup, not hardcoded. */
static float anchor_offset_cm[3] = {0.0f, 0.0f, 0.0f};
static int calibration_samples[3][CAL_MAX_SAMPLES];

/* Normal-tracking median filter: one rolling window per anchor. */
#define TRACK_MEDIAN_WINDOW 3
static int tracking_samples[3][TRACK_MEDIAN_WINDOW];
static int tracking_counts[3] = {0, 0, 0};
static int tracking_next[3] = {0, 0, 0};

/* Alpha-beta position filter. The ranging cycle is approximately 0.6--0.7 s. */
#define POSITION_DT_SEC          0.65f
#define AB_ALPHA                 0.45f
#define AB_BETA                  0.08f

#define UWB_GPIO_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define UWB_GPIO_CHANNEL   1

#define STOP_RADIUS_FEET   4.0f
#define STOP_RADIUS_CM     150.0f   /* 121.92 cm */

XGpio UwbResetGpio;

int reset_all_uwb_modules(void)
{
	int status;

	// Initialize AXI GPIO
	status = XGpio_Initialize(&UwbResetGpio, UWB_GPIO_DEVICE_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Direction mask: 0 = output, 1 = input
	XGpio_SetDataDirection(
			&UwbResetGpio,
			UWB_GPIO_CHANNEL,
			0x0
	);

	// Keep reset released initially
	XGpio_DiscreteWrite(
			&UwbResetGpio,
			UWB_GPIO_CHANNEL,
			0x1
	);

	usleep(10000);       // 10 ms

	// Assert active-low reset
	XGpio_DiscreteWrite(
			&UwbResetGpio,
			UWB_GPIO_CHANNEL,
			0x0
	);

	usleep(100000);      // Hold reset low for 100 ms

	// Release reset
	XGpio_DiscreteWrite(
			&UwbResetGpio,
			UWB_GPIO_CHANNEL,
			0x1
	);

	// Allow all four RYUW122 modules to boot
	usleep(1500000);     // 1.5 seconds

	return XST_SUCCESS;
}


typedef struct {
	float x;
	float y;
	float z;
} Point3D;

static bool position_filter_valid = false;
static Point3D filtered_position = {0.0f, 0.0f, 0.0f};
static Point3D position_velocity = {0.0f, 0.0f, 0.0f};

/* True if the tag's horizontal (X/Y) position is inside the stop circle
 * centered on the origin. Z is ignored because it is a fixed assumed value,
 * not a measurement. */
bool isWithinStopRadius(Point3D p)
{
	float distanceSquared = p.x * p.x + p.y * p.y;

	return distanceSquared <= (STOP_RADIUS_CM * STOP_RADIUS_CM);
}

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

/* Sort calibration samples in place and return their median. */
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
	if (count & 1) return (float)values[count / 2];
	return ((float)values[count / 2 - 1] + (float)values[count / 2]) * 0.5f;
}

/* Clear the normal-ranging filter after calibration or a UWB reset. */
static void reset_tracking_filters(void)
{
	memset(tracking_samples, 0, sizeof(tracking_samples));
	memset(tracking_counts, 0, sizeof(tracking_counts));
	memset(tracking_next, 0, sizeof(tracking_next));
}

/*
 * Add one raw reading to an anchor's rolling window and return its median.
 * The first four readings use a partially filled window. Starting with the
 * third reading, this is a full 3-sample rolling median.
 */
static int tracking_median_cm(int anchor_index, int raw_distance_cm)
{
	int sorted[TRACK_MEDIAN_WINDOW];
	int count;
	int i;

	if (anchor_index < 0 || anchor_index >= 3 || raw_distance_cm <= 0) {
		return -1;
	}

	tracking_samples[anchor_index][tracking_next[anchor_index]] =
			raw_distance_cm;
	tracking_next[anchor_index] =
			(tracking_next[anchor_index] + 1) % TRACK_MEDIAN_WINDOW;

	if (tracking_counts[anchor_index] < TRACK_MEDIAN_WINDOW) {
		tracking_counts[anchor_index]++;
	}

	count = tracking_counts[anchor_index];
	for (i = 0; i < count; ++i) {
		sorted[i] = tracking_samples[anchor_index][i];
	}

	return (int)(median_cm(sorted, count) + 0.5f);
}

static void reset_position_filter(void)
{
	position_filter_valid = false;
	filtered_position.x = 0.0f;
	filtered_position.y = 0.0f;
	filtered_position.z = CAL_TAG_Z_CM;
	position_velocity.x = 0.0f;
	position_velocity.y = 0.0f;
	position_velocity.z = 0.0f;
}

/*
 * Alpha-beta filter. Every valid nonlinear-solver result is accepted; the
 * filter smooths the position and estimates its velocity.
 */
static bool filter_position(const Point3D *measurement, Point3D *output)
{
	Point3D predicted;
	float dx;
	float dy;
	float ex;
	float ey;

	if (!position_filter_valid) {
		filtered_position = *measurement;
		position_velocity.x = 0.0f;
		position_velocity.y = 0.0f;
		position_velocity.z = 0.0f;
		position_filter_valid = true;
		*output = filtered_position;
		return true;
	}

	predicted.x = filtered_position.x +
			position_velocity.x * POSITION_DT_SEC;
	predicted.y = filtered_position.y +
			position_velocity.y * POSITION_DT_SEC;
	predicted.z = CAL_TAG_Z_CM;

	dx = measurement->x - predicted.x;
	dy = measurement->y - predicted.y;

	ex = AB_ALPHA * dx;
	ey = AB_ALPHA * dy;
	filtered_position.x = predicted.x + ex;
	filtered_position.y = predicted.y + ey;
	filtered_position.z = CAL_TAG_Z_CM;
	position_velocity.x += (AB_BETA / POSITION_DT_SEC) * dx;
	position_velocity.y += (AB_BETA / POSITION_DT_SEC) * dy;

	*output = filtered_position;
	return true;
}

/* xil_printf does not support floating-point format specifiers. */
static void print_cm_1dp(float value)
{
	int tenths = (int)(fabsf(value) * 10.0f + 0.5f);
	xil_printf("%s%d.%d", value < 0.0f ? "-" : "",
			tenths / 10, tenths % 10);
}

/* Calibrate each anchor using a stationary tag at a known location. */
static int calibrate_anchors(void)
{
	static const u32 bases[3] = {
			UWB1_BASE, UWB2_BASE, UWB3_BASE
	};
	static const char *labels[3] = {
			"ANCHOR1", "ANCHOR2", "ANCHOR3"
	};
	static const float xs[3] = {A1_X, A2_X, A3_X};
	static const float ys[3] = {A1_Y, A2_Y, A3_Y};
	static const float zs[3] = {A1_Z, A2_Z, A3_Z};
	int counts[3] = {0, 0, 0};
	float offsets[3];
	XTime start, now;
	int cycles = 0;
	int i;

	xil_printf("\r\n[CALIBRATION] Hold tag at (%d,%d,%d) cm for up to %d seconds.\r\n",
			(int)CAL_TAG_X_CM, (int)CAL_TAG_Y_CM,
			(int)CAL_TAG_Z_CM, (int)CAL_SECONDS);
	xil_printf("[CALIBRATION] Measuring raw distances...\r\n");

	XTime_GetTime(&start);
	do {
		for (i = 0; i < 3; ++i) {
			int distance;
			if (counts[i] >= CAL_MAX_SAMPLES) continue;
			distance = get_distance_from_anchor(bases[i], labels[i]);
			if (distance > 0) {
				calibration_samples[i][counts[i]++] = distance;
			}
		}
		++cycles;
		xil_printf("[CALIBRATION] Cycle %d: A1=%d A2=%d A3=%d\r\n",
				cycles, counts[0], counts[1], counts[2]);
		if (counts[0] >= CAL_MAX_SAMPLES &&
				counts[1] >= CAL_MAX_SAMPLES &&
				counts[2] >= CAL_MAX_SAMPLES) {
			xil_printf("[CALIBRATION] Collected %d samples from all anchors.\r\n",
					CAL_MAX_SAMPLES);
			break;
		}
		XTime_GetTime(&now);
	} while (cycles < CAL_MAX_CYCLES &&
			(now - start) < ((XTime)COUNTS_PER_SECOND * CAL_SECONDS));

	if (cycles >= CAL_MAX_CYCLES &&
			(counts[0] < CAL_MAX_SAMPLES ||
					counts[1] < CAL_MAX_SAMPLES ||
					counts[2] < CAL_MAX_SAMPLES)) {
		xil_printf("[CALIBRATION] Stopped at safety limit of %d cycles.\r\n",
				CAL_MAX_CYCLES);
	}

	for (i = 0; i < 3; ++i) {
		if (counts[i] < CAL_MIN_VALID) {
			xil_printf("[CALIBRATION] FAILED: A%d has %d valid readings; need %d.\r\n",
					i + 1, counts[i], CAL_MIN_VALID);
			return -1;
		}
	}

	for (i = 0; i < 3; ++i) {
		float dx = CAL_TAG_X_CM - xs[i];
		float dy = CAL_TAG_Y_CM - ys[i];
		float dz = CAL_TAG_Z_CM - zs[i];
		float expected = sqrtf(dx * dx + dy * dy + dz * dz);
		float measured = median_cm(calibration_samples[i], counts[i]);
		offsets[i] = expected - measured;
		xil_printf("[CALIBRATION] A%d n=%d expected=", i + 1, counts[i]);
		print_cm_1dp(expected);
		xil_printf(" cm median=");
		print_cm_1dp(measured);
		xil_printf(" cm offset=");
		print_cm_1dp(offsets[i]);
		xil_printf(" cm\r\n");
	}
	for (i = 0; i < 3; ++i) anchor_offset_cm[i] = offsets[i];
	xil_printf("[CALIBRATION] Complete. Move tag for normal ranging.\r\n");
	return 0;
}

/*
 * Solve horizontal position using A1-A3 and a known/fixed tag height.
 * With only three nearly coplanar anchors, a reliable 3D Z estimate is not
 * available. The known tag height is substituted into the sphere equations,
 * leaving a 2x2 system for X and Y.
 */
static int trilaterate_2d_fixed_z(
		float x1, float y1, float z1, float d1,
		float x2, float y2, float z2, float d2,
		float x3, float y3, float z3, float d3,
		float tag_z, Point3D *result)
{
	float a11 = 2.0f * (x2 - x1);
	float a12 = 2.0f * (y2 - y1);
	float a21 = 2.0f * (x3 - x1);
	float a22 = 2.0f * (y3 - y1);
	float b1 = (d1 * d1) - (d2 * d2)
									- (x1 * x1) + (x2 * x2)
									- (y1 * y1) + (y2 * y2)
									- 2.0f * tag_z * (z2 - z1)
									- (z1 * z1) + (z2 * z2);
	float b2 = (d1 * d1) - (d3 * d3)
									- (x1 * x1) + (x3 * x3)
									- (y1 * y1) + (y3 * y3)
									- 2.0f * tag_z * (z3 - z1)
									- (z1 * z1) + (z3 * z3);
	float det = (a11 * a22) - (a12 * a21);

	if (fabsf(det) < 0.0001f) {
		return -1;
	}

	result->x = ((b1 * a22) - (a12 * b2)) / det;
	result->y = ((a11 * b2) - (b1 * a21)) / det;
	result->z = tag_z;
	return 0;
}

/*
 * Robust weighted nonlinear least-squares solver for fixed-Z 2D positioning.
 * A3 is deliberately given less weight because it has shown the largest
 * amount of measurement instability in the recorded tests. The Huber factor
 * additionally reduces the effect of any anchor whose residual is unusually
 * large during a particular cycle.
 */
static int solve_position_weighted_nls(
		const float distances[3], Point3D *result)
{
	static const float ax[3] = {A1_X, A2_X, A3_X};
	static const float ay[3] = {A1_Y, A2_Y, A3_Y};
	static const float az[3] = {A1_Z, A2_Z, A3_Z};
	static const float base_weight[3] = {1.0f, 1.0f, 1.0f};
	float x = 0.0f;
	float y = 0.0f;
	int iteration;

	/* Use the previous filtered prediction when available. This keeps a bad
	 * A3 reading from becoming the starting point of the next solve. */
	if (position_filter_valid) {
		x = filtered_position.x + position_velocity.x * POSITION_DT_SEC;
		y = filtered_position.y + position_velocity.y * POSITION_DT_SEC;
	} else if (trilaterate_2d_fixed_z(
			ax[0], ay[0], az[0], distances[0],
			ax[1], ay[1], az[1], distances[1],
			ax[2], ay[2], az[2], distances[2],
			CAL_TAG_Z_CM, result) == 0) {
		x = result->x;
		y = result->y;
	} else {
		return -1;
	}

	for (iteration = 0; iteration < 6; ++iteration) {
		float h11 = 0.0f;
		float h12 = 0.0f;
		float h22 = 0.0f;
		float g1 = 0.0f;
		float g2 = 0.0f;
		int i;

		for (i = 0; i < 3; ++i) {
			float dx = x - ax[i];
			float dy = y - ay[i];
			float dz = CAL_TAG_Z_CM - az[i];
			float predicted = sqrtf(dx * dx + dy * dy + dz * dz);
			float residual;
			float jx;
			float jy;
			float weight;

			if (predicted < 0.001f) {
				return -1;
			}

			residual = predicted - distances[i];
			jx = dx / predicted;
			jy = dy / predicted;
			weight = base_weight[i];

			/* Huber loss: down-weight large residuals without discarding them. */
			if (fabsf(residual) > 15.0f) {
				weight *= 15.0f / fabsf(residual);
			}

			h11 += weight * jx * jx;
			h12 += weight * jx * jy;
			h22 += weight * jy * jy;
			g1 += weight * jx * residual;
			g2 += weight * jy * residual;
		}

		{
			float determinant = h11 * h22 - h12 * h12;
			float step_x;
			float step_y;

			if (fabsf(determinant) < 0.000001f) {
				return -1;
			}

			step_x = (-h22 * g1 + h12 * g2) / determinant;
			step_y = (h12 * g1 - h11 * g2) / determinant;

			/* Prevent one bad iteration from creating an enormous position step. */
			if (step_x > 50.0f) step_x = 50.0f;
			if (step_x < -50.0f) step_x = -50.0f;
			if (step_y > 50.0f) step_y = 50.0f;
			if (step_y < -50.0f) step_y = -50.0f;

			x += step_x;
			y += step_y;
			if (fabsf(step_x) + fabsf(step_y) < 0.01f) {
				break;
			}
		}
	}

	result->x = x;
	result->y = y;
	result->z = CAL_TAG_Z_CM;
	return 0;
}

static bool print_tag_position(int d1, int d2, int d3)
{
	Point3D tag_pos;
	Point3D filtered_tag_pos;
	float distances[3];
	float c1, c2, c3;

	if ((d1 < 0) || (d2 < 0) || (d3 < 0)) {
		xil_printf("[TAG POSITION] Not enough valid distance data\r\n");
		return false;
	}

	c1 = (float)d1 + anchor_offset_cm[0];
	c2 = (float)d2 + anchor_offset_cm[1];
	c3 = (float)d3 + anchor_offset_cm[2];

	if (c1 <= 0.0f || c2 <= 0.0f || c3 <= 0.0f) {
		xil_printf("[TAG POSITION] Invalid corrected distance\r\n");
		return false;
	}

	xil_printf("[CAL DIST] A1="); print_cm_1dp(c1);
	xil_printf(" A2="); print_cm_1dp(c2);
	xil_printf(" A3="); print_cm_1dp(c3);
	xil_printf(" cm\r\n");

	distances[0] = c1;
	distances[1] = c2;
	distances[2] = c3;

	if (solve_position_weighted_nls(distances, &tag_pos) != 0) {
		xil_printf("[TAG POSITION] ERROR: weighted nonlinear solve failed\r\n");
		return false;
	}

	xil_printf("[SOLVER RAW] X=%d cm, Y=%d cm\r\n",
			(int)tag_pos.x, (int)tag_pos.y);

	(void)filter_position(&tag_pos, &filtered_tag_pos);
	tag_pos = filtered_tag_pos;

	xil_printf("[TAG POSITION] X=%d cm, Y=%d cm, Z=%d cm\r\n",
			(int)tag_pos.x, (int)tag_pos.y, (int)tag_pos.z);

	if (tag_pos.x > 60.0f) {
		xil_printf("[LEFT/RIGHT] Tag is to the RIGHT\r\n");
	} else if (tag_pos.x < -60.0f) {
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

	xil_printf("[HEIGHT] Z is fixed at %d cm for 2D positioning\r\n",
			(int)CAL_TAG_Z_CM);

	bool inside = isWithinStopRadius(tag_pos);

	if (inside) {
		xil_printf("[UWB] Tag is within %d cm circle\r\n", (int)STOP_RADIUS_CM);
	} else {
		xil_printf("[UWB] Tag is outside %d cm circle\r\n", (int)STOP_RADIUS_CM);
	}

	return inside;
}

void UART_Init(void)
{
	XUartPs_Config *Config;

	Config = XUartPs_LookupConfig(
			XPAR_PS7_UART_1_DEVICE_ID
	);

	if (Config == NULL) {
		return;
	}

	XUartPs_CfgInitialize(
			&Uart,
			Config,
			Config->BaseAddress
	);

	XUartPs_SetBaudRate(&Uart, 115200);
}


void CAN_ReadReg_Fixed(PmodCAN *InstancePtr,
		u8 reg,
		u8 *data,
		u32 nData)
{
	u8 buf[16] = {0};

	if (nData > 14) {
		return;
	}

	buf[0] = CAN_READ_REG_CMD;
	buf[1] = reg;

	XSpi_Transfer(&InstancePtr->CANSpi,
			buf,
			buf,
			nData + 2);

	for (u32 i = 0; i < nData; i++) {
		data[i] = buf[i + 2];
	}
}

void PrintMessage(const char *name, CAN_Message *message)
{
	xil_printf(
			"%s: ID=0x%03X DLC=%d data=",
			name,
			message->id,
			message->dlc
	);

	for (int i = 0; i < message->dlc; i++) {
		xil_printf("0x%02X ", message->data[i]);
	}

	xil_printf("\r\n");
}

void PrintCANStatus(void)
{
	u8 txb0ctrl = 0;
	u8 canintf = 0;
	u8 eflg = 0;
	u8 tec = 0;
	u8 rec = 0;

	CAN_ReadReg_Fixed(&myCAN, 0x30, &txb0ctrl, 1);
	CAN_ReadReg_Fixed(&myCAN, 0x2C, &canintf, 1);
	CAN_ReadReg_Fixed(&myCAN, 0x2D, &eflg, 1);
	CAN_ReadReg_Fixed(&myCAN, 0x1C, &tec, 1);
	CAN_ReadReg_Fixed(&myCAN, 0x1D, &rec, 1);

	xil_printf(
			"TXB0CTRL=0x%02X CANINTF=0x%02X "
			"EFLG=0x%02X TEC=%d REC=%d\r\n",
			txb0ctrl,
			canintf,
			eflg,
			tec,
			rec
	);
}

void SendMotorMessageInit(CAN_Message *message,
		const char *description)
{
	PrintMessage(description, message);

	CAN_SendMessage(
			&myCAN,
			*message,
			CAN_Tx0
	);

	usleep(500000);

	PrintCANStatus();
}
static int CAN_WaitTxReady(void)
{
	u8 txb0ctrl = 0;

	for (int i = 0; i < 1000; i++) {
		CAN_ReadReg_Fixed(&myCAN, 0x30, &txb0ctrl, 1);

		if ((txb0ctrl & 0x08) == 0) {
			return 1; // buffer free
		}
	}

	return 0; // timed out; caller decides whether to send anyway
}
void BuildSpeedCommand(u8 *data, int32_t speed_centidps)
{
	//speed_centidps = speed_centidps / 10;
	data[0] = 0xA2;
	data[1] = 0x00;
	data[2] = 0x00;
	data[3] = 0x00;
	data[4] = (u8)( speed_centidps        & 0xFF);
	data[5] = (u8)((speed_centidps >> 8)  & 0xFF);
	data[6] = (u8)((speed_centidps >> 16) & 0xFF);
	data[7] = (u8)((speed_centidps >> 24) & 0xFF);
}

void CAN_SendVelocityFast(CAN_Message *message, int32_t speed_centidps)
{
	if (!CAN_WaitTxReady()) {
		xil_printf("WARNING: CAN TX buffer busy, sending anyway\r\n");
	}

	BuildSpeedCommand(message->data, speed_centidps);

	CAN_SendMessage(
			&myCAN,
			*message,
			CAN_Tx0
	);
}


void PID_WriteAngle(float pitch_deg)
{
	int32_t angle_fixed = (int32_t)(pitch_deg);

	Xil_Out32(PID_ANGLE, (uint32_t)angle_fixed);
}

int PID_ReadVelocity(int32_t *velocity)
{
	/*
	uint32_t timeout = PID_VELOCITY_READY_TIMEOUT;

	while (((Xil_In32(PID_NEW_VELOCITY) & 0x1) == 0) && (timeout > 0)) {
		timeout--;
	}

	if (timeout == 0) {
		xil_printf("WARNING: PID velocity not ready, timed out\r\n");
	 *velocity_dps = 0.0f;
		return 0;
	}
	 */
	uint32_t new_velocity = Xil_In32(PID_NEW_VELOCITY) & 0x1;
	u32 debug_angle = Xil_In32(PID_DEBUG_ANGLE);

	xil_printf("PID Debug Angle: %d\n",
			(unsigned long)debug_angle);
	xil_printf("Kp: %u\r\n", Xil_In32(PID_DEBUG_KP) & 0xFFF);
	xil_printf("Kd: %u\r\n", Xil_In32(PID_DEBUG_KD) & 0xFFF);
	xil_printf("Ki: %u\r\n", Xil_In32(PID_DEBUG_KI) & 0xFFF);
	if (new_velocity != 1) {
		xil_printf("Velocity flag has not been raised\n");
		xil_printf("Velocity from PID controller: %d\n",new_velocity);
		return 0;   // No new velocity, don't send CAN
	}
	*velocity = (int32_t)Xil_In32(PID_VELOCITY);
	return 1;
}


int ClampAndCheckVelocity(int32_t velocity_dps, int32_t *speed_centidps)
{
	/*
	if (fabsf(velocity_dps) > MAX_DPS) {

		return 0;
	}
	 */
	*speed_centidps = (int32_t)(velocity_dps);
	return 1;
}

uint64_t get_timestamp_ns(void)
{
	XTime tsf;
	XTime_GetTime(&tsf);
	return (tsf * 1000000000ULL) / COUNTS_PER_SECOND;
}

void balanceCheck(
		XIicPs *Iic,
		int16_t accel[3],
		int16_t gyro[3],
		int16_t ax_off,
		int16_t ay_off,
		int16_t az_off,
		CAN_Message *motor141,
		CAN_Message *motor142
) {
	ReadSensor(Iic, accel, gyro);

	int ax = accel[0] - ax_off;
	int ay = accel[1] - ay_off;
	int az = accel[2] - az_off;

	/*
	 * Accel pitch formula is currently set, so that going towards the nose of the robot is positive.
	 * Going opposite direction of the nose of the robot is negative.
	 */
	float accel_pitch = -atan2f(
			(float)ax,
			sqrtf((float)ay * ay + (float)az * az)
	) * DEG_PER_RAD;
	xil_printf(
			"RAW ax=%d ay=%d az=%d accel_pitch=%d\n",
			ax, ay, az, (int)accel_pitch
	);
	PID_WriteAngle(accel_pitch);
	int32_t velocity = 0;

	if (PID_ReadVelocity(&velocity)) {
		int32_t speed_centidps = 0;

		if (ClampAndCheckVelocity(velocity, &speed_centidps)) {
			int32_t speed_inverted =
					(int32_t)(0u - (uint32_t)speed_centidps);
			xil_printf("Motor 141 speed is: %d\n", speed_centidps);
			xil_printf("Motor 142 speed is: %d\n", speed_inverted);
			//Testing motor 142 to not use inverted speed
			CAN_SendVelocityFast(motor141, speed_centidps);
			CAN_SendVelocityFast(motor142, speed_inverted);
		}
	}

	usleep(4000);
}

void uwbCheck(CAN_Message *motor141, CAN_Message *motor142)
{
	int d1, d2, d3;
	int f1, f2, f3;

	const u8 testSpeedCommand[8] = {
			0xA2, 0x00, 0x00, 0x00,
			0x30, 0x2A, 0x00, 0x03
	};

	const u8 stopCommand[8] = {
			0xA2, 0x00, 0x00, 0x00,
			0x00, 0x00, 0x00, 0x00
	};

	xil_printf("\r\n========== New Ranging Cycle ==========\r\n");

	d1 = get_distance_from_anchor(UWB1_BASE, "ANCHOR1");
	usleep(300000);

	d2 = get_distance_from_anchor(UWB2_BASE, "ANCHOR2");
	usleep(300000);

	d3 = get_distance_from_anchor(UWB3_BASE, "ANCHOR3");

	xil_printf("Summary RAW: A1=%d A2=%d A3=%d\r\n",
			d1, d2, d3);

	/* Filter each anchor independently before calibration correction and
	 * trilateration. This prevents one bad UWB reading from moving the
	 * calculated position sharply. */
	f1 = tracking_median_cm(0, d1);
	f2 = tracking_median_cm(1, d2);
	f3 = tracking_median_cm(2, d3);

	if (f1 < 0 || f2 < 0 || f3 < 0) {
		xil_printf("Summary MEDIAN(%d): invalid reading\r\n",
				TRACK_MEDIAN_WINDOW);
		return;
	}

	xil_printf("Summary MEDIAN(%d): A1=%d A2=%d A3=%d\r\n",
			TRACK_MEDIAN_WINDOW, f1, f2, f3);

	/* Calculate horizontal position using filtered A1-A3 distances. */
	bool insideCircle = print_tag_position(f1, f2, f3);

	if (insideCircle) {
		memcpy(motor141->data, stopCommand, 8);
		memcpy(motor142->data, stopCommand, 8);

		xil_printf("Inside %d cm circle: Sending zero speed\r\n", (int)STOP_RADIUS_CM);
	} else {
		memcpy(motor141->data, testSpeedCommand, 8);
		memcpy(motor142->data, testSpeedCommand, 8);

		xil_printf("Outside %d cm circle: Sending speed\r\n", (int)STOP_RADIUS_CM);
	}

	if (CAN_WaitTxReady()) {
		CAN_SendMessage(&myCAN, *motor141, CAN_Tx0);
	}

	if (CAN_WaitTxReady()) {
		CAN_SendMessage(&myCAN, *motor142, CAN_Tx0);
	}
}

int main(void)
{
	init_platform();
	UART_Init();

	XIicPs Iic;
	xil_printf("\r\nMPU6050 + PID + CAN balance loop starting...\r\n");

	if (IicInit(&Iic) != XST_SUCCESS)
		return -1;

	xil_printf("I2C OK\r\n");

	if (MPU6050_Config(&Iic) != XST_SUCCESS)
		return -1;

	xil_printf("MPU configured\r\n");

	int16_t accel[3];
	int16_t gyro[3];

	int16_t ax_off = 0, ay_off = 0, az_off = 0;
	int16_t gx_off = 0, gy_off = 0, gz_off = 0;

	CalibrateAccel(&Iic, &ax_off, &ay_off, &az_off);
	CalibrateGyro(&Iic, &gx_off, &gy_off, &gz_off);

	/*
	int status;

	status = reset_all_uwb_modules();

	if (status != XST_SUCCESS) {
		xil_printf("UWB reset GPIO initialization failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("All UWB modules reset successfully\r\n");

	xil_printf("\r\n========================================\r\n");
	xil_printf("Zybo Three-Anchor RYUW122 2D Position\r\n");
	xil_printf("Target tag: %s\r\n", UWB_TAG_ADDR);
	xil_printf("A1=(%d,%d,%d) cm\r\n", (int)A1_X, (int)A1_Y, (int)A1_Z);
	xil_printf("A2=(%d,%d,%d) cm\r\n", (int)A2_X, (int)A2_Y, (int)A2_Z);
	xil_printf("A3=(%d,%d,%d) cm\r\n", (int)A3_X, (int)A3_Y, (int)A3_Z);
	xil_printf("Position mode: fixed Z=%d cm\r\n", (int)CAL_TAG_Z_CM);
	xil_printf("========================================\r\n");

	configure_anchor(UWB1_BASE, "ANCHOR1", 1);
	configure_anchor(UWB2_BASE, "ANCHOR2", 2);
	configure_anchor(UWB3_BASE, "ANCHOR3", 3);

	// Startup UWB calibration happens before CAN motor initialization.
	if (calibrate_anchors() != 0) {
		xil_printf("[CALIBRATION] Aborted. Check tag position and anchors.\r\n");
		cleanup_platform();
		return -1;
	}
	*/

	//float pitch = 0.0f;
	//float pitch_rate = 0.0f;
	CAN_begin(
			&myCAN,
			XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR,
			XPAR_PMODCAN_0_AXI_LITE_SPI_BASEADDR
	);
	xil_printf("Before CAN_Configure\r\n");
	CAN_Configure(
			&myCAN,
			CAN_ModeNormalOperation
	);
	xil_printf("After CAN_Configure\r\n");
	xil_printf("Before CAN_ModifyReg config mode\r\n");
	CAN_ModifyReg(
			&myCAN,
			CAN_CANCTRL_REG_ADDR,
			CAN_CAN_CANCTRL_MODE_MASK,
			CAN_ModeConfiguration
	);
	xil_printf("After CAN_ModifyReg config mode\r\n");
	u8 CNF_1Mbps[3] = {
			0x82,
			0xD9,
			0x00
	};

	for (volatile int i = 0; i < 100000; i++);

	CAN_WriteReg(
			&myCAN,
			CAN_CNF3_REG_ADDR,
			CNF_1Mbps,
			3
	);

	CAN_ModifyReg(
			&myCAN,
			CAN_CANCTRL_REG_ADDR,
			CAN_CAN_CANCTRL_MODE_MASK,
			CAN_ModeNormalOperation
	);
	u8 canstat = 0;
	CAN_ReadReg_Fixed(&myCAN, 0x0E, &canstat, 1);

	xil_printf(
			"CANSTAT=0x%02X, expected normal mode 0x00\r\n",
			canstat
	);

	const u8 initializeCommand[8] = {
			0x31, 0x00, 0x55, 0x19, 0x55, 0x19, 0x55, 0x19
	};

	CAN_Message motor141 = {0};
	CAN_Message motor142 = {0};

	motor141.id = 0x141;
	motor141.eid = 0;
	motor141.ide = 0;
	motor141.rtr = 0;
	motor141.dlc = 8;

	motor142.id = 0x142;
	motor142.eid = 0;
	motor142.ide = 0;
	motor142.rtr = 0;
	motor142.dlc = 8;

	xil_printf("Waiting for motor startup...\r\n");
	sleep(5);


	memcpy(motor141.data, initializeCommand, sizeof(initializeCommand));
	SendMotorMessageInit(&motor141, "Initialize motor 0x141");

	memcpy(motor142.data, initializeCommand, sizeof(initializeCommand));
	SendMotorMessageInit(&motor142, "Initialize motor 0x142");

	xil_printf("Waiting after initialization...\r\n");
	sleep(1);

	//xil_printf("Testing New angle and output velocity...\r\n");

	//Xil_Out32(PID_ANGLE, 100);

	xil_printf("Readback = %lu\r\n",
			(unsigned long)Xil_In32(PID_ANGLE));


	Xil_Out32(PID_TARGET, (int32_t)(PITCH_SETPOINT));
	Xil_Out32(PID_CONTROL, 0x02);
	Xil_Out32(PID_CONTROL, 0x00);
	/*
	const u8 testSpeedCommand[8] = {
			0xA2, 0x00, 0x00, 0x00, 0x30, 0x2A, 0x00, 0x7F
	};
	memcpy(motor142.data, testSpeedCommand, sizeof(testSpeedCommand));
	SendMotorMessageInit(&motor142, "Test first max speed");


	const u8 testSpeed2Command[8] = {
			0xA2, 0x00, 0x00, 0x00, 0x30, 0x2A, 0x00, 0x01
	};
	memcpy(motor141.data, testSpeed2Command, sizeof(testSpeed2Command));
	SendMotorMessageInit(&motor141, "Test  second max speed");
	 */
	/*
	sleep(10);
	const u8 testSpeed3Command[8] = {
			0xA2, 0x00, 0x00, 0x00, 0x30, 0x2A, 0x00, 0x7F
	};
	memcpy(motor141.data, testSpeed 3Command, sizeof(testSpeed3Command));
	SendMotorMessageInit(&motor141, "Test third max speed");
	return 0;
	 */

	//return 0;

	/* Start normal UWB tracking with empty median windows. */
	//reset_tracking_filters();
	//reset_position_filter();


	while (1) {
		//uwbCheck(&motor141, &motor142);


		balanceCheck(
				&Iic,
				accel,
				gyro,
				ax_off,
				ay_off,
				az_off,
				&motor141,
				&motor142
		);

		//sleep(1);
	}

	cleanup_platform();
	return 0;
}
