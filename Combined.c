#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "PmodCAN.h"
#include "xuartps.h"
#include "sleep.h"
#include <string.h>
#include "xstatus.h"
#include <stdint.h>
#include <math.h>
#include "xiicps.h"

#include "mpu_6050.h"

#define GPIO_BASE XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR

PmodCAN myCAN;
XUartPs Uart;

#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter

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

void SendMotorMessage(CAN_Message *message,
		const char *description)
{
	PrintMessage(description, message);

	CAN_SendMessage(
			&myCAN,
			*message,
			CAN_Tx0
	);

	/*
	 * Allow transmit buffer 0 to finish before
	 * loading the next CAN message.
	 */
	usleep(500000);

	PrintCANStatus();
}

int main(void)
{
	init_platform();
	UART_Init();

	XIicPs Iic;
	xil_printf("\r\nMPU6050 full demo starting...\r\n");

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

	xil_printf("Entering main loop...\r\n");
	float pitch = 0.0f;
	float pitch_rate = 0.0f;



	xil_printf("\r\n");
	xil_printf("Automatic dual-motor CAN test\r\n");

	CAN_begin(
			&myCAN,
			XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR,
			XPAR_PMODCAN_0_AXI_LITE_SPI_BASEADDR
	);

	/*
	 * PmodCAN GPIO reset/enable sequence.
	 */
	Xil_Out32(GPIO_BASE + 4, 0xE);
	Xil_Out32(GPIO_BASE + 0, 0x00);

	for (volatile int i = 0; i < 1000000; i++);

	Xil_Out32(GPIO_BASE + 0, 0x01);

	for (volatile int i = 0; i < 1000000; i++);

	/*
	 * Use the same CAN configuration as the
	 * working terminal-controlled program.
	 */
	CAN_Configure(
			&myCAN,
			CAN_ModeNormalOperation
	);

	CAN_ModifyReg(
			&myCAN,
			CAN_CANCTRL_REG_ADDR,
			CAN_CAN_CANCTRL_MODE_MASK,
			CAN_ModeConfiguration
	);

	for (volatile int i = 0; i < 100000; i++);

	/*
	 * 1 Mbps CAN configuration.
	 *
	 * Written starting at CNF3:
	 * CNF3 = 0x82
	 * CNF2 = 0xD9
	 * CNF1 = 0x00
	 */
	u8 CNF_1Mbps[3] = {
			0x82,
			0xD9,
			0x00
	};

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

	for (volatile int i = 0; i < 100000; i++);

	u8 canstat = 0;

	CAN_ReadReg_Fixed(&myCAN, 0x0E, &canstat, 1);

	xil_printf(
			"CANSTAT=0x%02X, expected normal mode 0x00\r\n",
			canstat
	);

	/*
	 * Initialization command:
	 *
	 * 31 00 55 19 55 19 55 19
	 */
	const u8 initializeCommand[8] = {
			0x31,
			0x00,
			0x55,
			0x19,
			0x55,
			0x19,
			0x55,
			0x19
	};

	/*
	 * Motor command:
	 *
	 * A2 00 00 00 11 22 00 00
	 */
	const u8 motorCommand[8] = {
			0xA2,
			0x00,
			0x00,
			0x00,
			0x11,
			0x22,
			0x00,
			0x00
	};

	const u8 motorCommand2[8] = {
			0xA2,
			0x00,
			0x00,
			0x00,
			0x00,
			0x00,
			0x11,
			0x22
	};

	const u8 motorCommand3[8] = {
			0xA2,
			0x00,
			0x00,
			0x00,
			0x00,
			0x00,
			0xFF,
			0xFF
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

	/*
	 * Give both motor controllers time to finish
	 * their own startup before sending commands.
	 */
	xil_printf("Waiting for motor startup...\r\n");
	sleep(5);

	/*
	 * Initialize motor 0x141.
	 */
	memcpy(
			motor141.data,
			initializeCommand,
			sizeof(initializeCommand)
	);

	SendMotorMessage(
			&motor141,
			"Initialize motor 0x141"
	);

	/*
	 * Initialize motor 0x142.
	 */
	memcpy(
			motor142.data,
			initializeCommand,
			sizeof(initializeCommand)
	);

	SendMotorMessage(
			&motor142,
			"Initialize motor 0x142"
	);

	/*
	 * Give both motors time to process the
	 * initialization command.
	 */
	xil_printf("Waiting after initialization...\r\n");
	sleep(1);

	/*
	 * Send A2 command to motor 0x141.
	 */
	memcpy(
			motor141.data,
			motorCommand,
			sizeof(motorCommand)
	);

	SendMotorMessage(
			&motor141,
			"Command motor 0x141"
	);

	/*
	 * Send A2 command to motor 0x142.
	 */
	memcpy(
			motor142.data,
			motorCommand,
			sizeof(motorCommand)
	);

	SendMotorMessage(
			&motor142,
			"Command motor 0x142"
	);



	xil_printf("All four CAN messages submitted\r\n");

	while (1) {
		ReadSensor(&Iic, accel, gyro);

		/* apply calibration */
		int ax = accel[0] - ax_off;
		int ay = accel[1] - ay_off;
		int az = accel[2] - az_off;

		int gx = gyro[0] - gx_off;
		int gy = gyro[1] - gy_off;
		int gz = gyro[2] - gz_off;

		// xil_printf("A: %d %d %d | G: %d %d %d\r\n",
		//     ax, ay, az,
		//     gx, gy, gz);

		/* convert accelerometer to angle */
		float accel_pitch = atan2f( // may need to change to -atan2f depending on how sensor is mounted
				(float) ax,
				sqrtf((float) ay * ay + (float) az * az)) * DEG_PER_RAD;

		/* convert gyro counts to angular velocity */
		pitch_rate = gy / 131.0f; // at +/- 250 dps, 131 LSB/(deg/s); use gx if balancing around x axis

		/* add complementary filter */
		pitch = ALPHA * (pitch + pitch_rate * DT) + (1.0f - ALPHA) * accel_pitch; // gyro predicts new angle, accel corrects drift
		xil_printf("Pitch: %d | Rate: %d\r\n",
				(int)pitch,
				(int)pitch_rate
		);

		if(pitch > 0){
			memcpy(
					motor142.data,
					motorCommand3,
					sizeof(motorCommand3)
			);

			SendMotorMessage(
					&motor142,
					"Command motor 0x142"
			);
			memcpy(
					motor141.data,
					motorCommand3,
					sizeof(motorCommand3)
			);

			SendMotorMessage(
					&motor141,
					"Command motor 0x142"
			);
		}
		else if(pitch < 0){
			memcpy(
					motor142.data,
					motorCommand2,
					sizeof(motorCommand2)
			);

			SendMotorMessage(
					&motor142,
					"Command motor 0x142"
			);
			memcpy(
					motor141.data,
					motorCommand2,
					sizeof(motorCommand2)
			);

			SendMotorMessage(
					&motor141,
					"Command motor 0x142"
			);
		}

		usleep(4000); // previously 0.1 Hz (100000), changed to 250 Hz
	}

	cleanup_platform();
	return 0;
}
