#include "mpu_6050.h"

#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xstatus.h"
#include <stdint.h>
#include <math.h>

//#define IIC_DEVICE_ID	XPAR_XIICPS_0_DEVICE_ID
//#define MPU6050_ADDR	0x68
// #define WHO_AM_I_REG	0x75
//#define PWR_MGMT_1		0x6B
//#define DLPF_CONFIG		0x1A
//#define ACCEL_CONFIG    0x1C
//#define GYRO_CONFIG     0x1B
//#define SMPLRT_DIV      0x19
//#define ACCEL_START		0x3B
#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter

int main()
{
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

    while (1)
    {
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
        usleep(4000); // previously 0.1 Hz (100000), changed to 250 Hz
    }
}
