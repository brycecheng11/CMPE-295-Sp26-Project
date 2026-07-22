#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xstatus.h"
#include <stdint.h>
#include <math.h>

#define IIC_DEVICE_ID	XPAR_XIICPS_0_DEVICE_ID
#define MPU6050_ADDR	0x68
// #define WHO_AM_I_REG	0x75
#define PWR_MGMT_1		0x6B
#define DLPF_CONFIG		0x1A
#define ACCEL_CONFIG    0x1C
#define GYRO_CONFIG     0x1B
#define SMPLRT_DIV      0x19
#define ACCEL_START		0x3B
#define DEG_PER_RAD 	57.2957795f	// convert
#define DT				0.004f		// 250 Hz sample rate--check SMPLRT_DIV
#define ALPHA			0.98f		// complementary filter


XIicPs Iic; // I2C instance

/* initialize I2C */
int IicInit()
{
    XIicPs_Config *cfg;

    cfg = XIicPs_LookupConfig(IIC_DEVICE_ID);
    if (cfg == NULL)
    {
        xil_printf("No I2C config found\r\n");
        return XST_FAILURE;
    }

    int status = XIicPs_CfgInitialize(&Iic, cfg, cfg->BaseAddress);
    if (status != XST_SUCCESS) 
    {
        xil_printf("I2C init failed\r\n");
        return XST_FAILURE;
    }

    XIicPs_SetSClk(&Iic, 400000); // 400kHz--max supported by MPU-6050
    return XST_SUCCESS;
}

int MPU6050_Config()
{
    uint8_t data[2];
    int status;

    /* Wake up device */
    data[0] = PWR_MGMT_1;
    data[1] = 0x01; // use PLL with X axis gyroscope reference for better stability
    status = XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);
    usleep(10000); // just in case
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write PWR_MGMT_1 failed\r\n");
        return status;
    }
    
    /* Accel +/- 2g */
    data[0] = ACCEL_CONFIG;
    data[1] = 0x00;
    status = XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write ACCEL_CONFIG failed\r\n");
        return status;
    }

    /* Gyro +/- 250 deg/s */
    data[0] = GYRO_CONFIG;
    data[1] = 0x00;
    status = XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write GYRO_CONFIG failed\r\n");
        return status;
    }

    /* configure DLPF (digital low-pass filter) */
    data[0] = DLPF_CONFIG;
    data[1] = 0x03; // accel BW = 44 Hz, gyroscope BW = 42 Hz
    status = XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write DLPF_CONFIG failed\r\n");
        return status;
    }

    /* configure sample rate divider */
    data[0] = SMPLRT_DIV;
    /* Sample Rate = Gyroscope Output Rate / (1 + SMPLRT_DIV)
       w/ DLPF enabled, Gyroscope Output Rate = 1kHz */
    data[1] = 3; // 1000 / (1 + 3) = 250 Hz
    // data[1] = 7; // 1000 / (1 + 7) = 125 Hz
    status = XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write SMPLRT_DIV failed\r\n");
        return status;
    }

    return XST_SUCCESS;
}

/* burst read accelerometer and gyroscope values */
int ReadSensor(int16_t *accel, int16_t *gyro)
{
    uint8_t reg = ACCEL_START;
    uint8_t buf[14];
    int status;

    /* Set register pointer */
    status = XIicPs_MasterSendPolled(&Iic, &reg, 1, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C write register failed\r\n");
        return status;
    }

    /* Read 14 bytes--6 bytes for accel, 2 bytes for temp (unused), and 6 bytes for gyro */
    status = XIicPs_MasterRecvPolled(&Iic, buf, 14, MPU6050_ADDR);
    if (status != XST_SUCCESS)
    {
        xil_printf("I2C read failed\r\n");
        return status;
    }

    /* Parse accel */
    accel[0] = (int16_t)((buf[0] << 8) | buf[1]);   // ACCEL_XOUT_H and ACCEL_XOUT_L
    accel[1] = (int16_t)((buf[2] << 8) | buf[3]);   // ACCEL_YOUT_H and ACCEL_YOUT_L
    accel[2] = (int16_t)((buf[4] << 8) | buf[5]);   // ACCEL_ZOUT_H and ACCEL_ZOUT_L

    /* Parse gyro */
    gyro[0]  = (int16_t)((buf[8] << 8) | buf[9]);   // GYRO_XOUT_H and GYRO_XOUT_L
    gyro[1]  = (int16_t)((buf[10] << 8) | buf[11]); // GYRO_YOUT_H and GYRO_YOUT_L
    gyro[2]  = (int16_t)((buf[12] << 8) | buf[13]); // GYRO_ZOUT_H and GYRO_ZOUT_L

    return XST_SUCCESS;
}

/* one point accelerometer calibration--while FLAT, get 1000 samples from accelerometer, use average as sensor bias */
void CalibrateAccel(int16_t *ax_off, int16_t *ay_off, int16_t *az_off)
{
    int32_t ax = 0, ay = 0, az = 0; // 32-bit accumulator to have enough space
    int16_t accel[3];
    int16_t gyro_dummy[3];
    const int samples = 1000;

    xil_printf("Calibrating accelerometer...\r\n");
    for (int i = 0; i < samples; i++)
    {
        if (ReadSensor(accel, gyro_dummy) == XST_SUCCESS)
        {
            ax += accel[0];
            ay += accel[1];
            az += accel[2];
        }
        usleep(2000);
    }

    *ax_off = (int16_t)(ax / samples);
    *ay_off = (int16_t)(ay / samples);
    *az_off = (int16_t)((az / samples) - 16384);

    xil_printf("Accel offsets: %d %d %d\r\n",
               *ax_off, *ay_off, *az_off);
}

/* zero-rate offset calibration--while STATIONARY, get 300 samples from gyroscope, use average as sensor bias */
void CalibrateGyro(int16_t *gx_off, int16_t *gy_off, int16_t *gz_off)
{
    int32_t gx = 0, gy = 0, gz = 0;
    int16_t accel_dummy[3];
    int16_t gyro[3];
    const int samples = 300;

    xil_printf("Calibrating gyro...\r\n");
    for (int i = 0; i < samples; i++)
    {
        if (ReadSensor(accel_dummy, gyro) == XST_SUCCESS)
        {
            gx += gyro[0];
            gy += gyro[1];
            gz += gyro[2];
        }
        usleep(5000);
    }

    *gx_off = (int16_t)(gx / samples);
    *gy_off = (int16_t)(gy / samples);
    *gz_off = (int16_t)(gz / samples);

    xil_printf("Gyro offsets: %d %d %d\r\n",
               *gx_off, *gy_off, *gz_off);
}

int main()
{
    xil_printf("\r\nMPU6050 full demo starting...\r\n");

    if (IicInit() != XST_SUCCESS)
        return -1;

    xil_printf("I2C OK\r\n");

    if (MPU6050_Config() != XST_SUCCESS)
        return -1;

    xil_printf("MPU configured\r\n");

    int16_t accel[3];
    int16_t gyro[3];

    int16_t ax_off = 0, ay_off = 0, az_off = 0;
    int16_t gx_off = 0, gy_off = 0, gz_off = 0;

    CalibrateAccel(&ax_off, &ay_off, &az_off);
    CalibrateGyro(&gx_off, &gy_off, &gz_off);

    xil_printf("Entering main loop...\r\n");
    float pitch = 0.0f;
    float pitch_rate = 0.0f;

    while (1)
    {
        ReadSensor(accel, gyro);

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
