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

#include "mpu_6050.h"

#define GPIO_BASE XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR

PmodCAN myCAN;
XUartPs Uart;

//MPU Configs
#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter


#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter


//PID Memory Space
#define PID_BASE        0x43C00000

#define PID_CONTROL     (PID_BASE + 0x00)
#define PID_ANGLE       (PID_BASE + 0x04)
#define PID_TARGET      (PID_BASE + 0x14)
#define PID_TIME_LO     (PID_BASE + 0x18)
#define PID_TIME_HI     (PID_BASE + 0x1C)
#define PID_VELOCITY    (PID_BASE + 0x20)
#define PID_NEW_VEL     (PID_BASE + 0x24)


#define ANGLE_SCALE     100
#define VELOCITY_SCALE  100

#define MAX_DPS			100.0f		// hard safety ceiling on commanded speed (deg/s)
#define PITCH_SETPOINT	90.0f		// upright target angle (deg)
#define PID_SETTLE_ITERS         10   // short busy-wait to let the PL pipeline catch up after a write


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
	int32_t angle_fixed = (int32_t)(pitch_deg * ANGLE_SCALE);

	Xil_Out32(PID_ANGLE, (uint32_t)angle_fixed);
}

void PID_ReadVelocity(float *velocity_dps)
{
	for (volatile int i = 0; i < PID_SETTLE_ITERS; i++);

	int32_t raw = (int32_t)Xil_In32(PID_VELOCITY);
	*velocity_dps = (float)raw / (float)VELOCITY_SCALE;
}


int ClampAndCheckVelocity(float velocity_dps, int32_t *speed_centidps)
{
	if (fabsf(velocity_dps) > MAX_DPS) {

		return 0;
	}

	*speed_centidps = (int32_t)(velocity_dps * 100.0f);
	return 1;
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

	float pitch = 0.0f;
	float pitch_rate = 0.0f;
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

	xil_printf("Testing New angle and output velocity...\r\n");

	//Xil_Out32(PID_ANGLE, 100);

	xil_printf("Readback = %lu\r\n",
			(unsigned long)Xil_In32(PID_ANGLE));

	uint32_t loop_count = 0;
	Xil_Out32(PID_TARGET, (int32_t)(PITCH_SETPOINT * ANGLE_SCALE));
	while (1) {
		ReadSensor(&Iic, accel, gyro);

		int ax = accel[0] - ax_off;
		int ay = accel[1] - ay_off;
		int az = accel[2] - az_off;

		int gx = gyro[0] - gx_off;
		int gy = gyro[1] - gy_off;
		int gz = gyro[2] - gz_off;

		float accel_pitch = atan2f(
				(float) ax,
				sqrtf((float) ay * ay + (float) az * az)) * DEG_PER_RAD;

		pitch_rate = gy / 131.0f;

		pitch = ALPHA * (pitch + pitch_rate * DT) + (1.0f - ALPHA) * accel_pitch;

		PID_WriteAngle(pitch);

		float velocity_dps = 0.0f;
		PID_ReadVelocity(&velocity_dps);

		int32_t speed_centidps = 0;
		int safe = ClampAndCheckVelocity(velocity_dps, &speed_centidps);

		if (!safe) {
			xil_printf(
					"WARNING: requested velocity %d dps exceeds MAX_DPS=%d, NOT sending\r\n",
					(int)velocity_dps,
					(int)MAX_DPS
			);
		} else {

			CAN_SendVelocityFast(&motor141, speed_centidps);
			CAN_SendVelocityFast(&motor142, speed_centidps );
			xil_printf(
					"Pitch=%d PitchRate=%d Velocity=%d dps Sent=%d\r\n",
					(int)pitch,
					(int)pitch_rate,
					(int)velocity_dps,
					safe
			);
		}

		if ((loop_count % 25) == 0) {
			xil_printf(
					"Pitch=%d PitchRate=%d Velocity=%d dps Sent=%d\r\n",
					(int)pitch,
					(int)pitch_rate,
					(int)velocity_dps,
					safe
			);
		}

		loop_count++;

		usleep(4000); // 250 Hz loop
		sleep(10);
	}

	cleanup_platform();
	return 0;
}
