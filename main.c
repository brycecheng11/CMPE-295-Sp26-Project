#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xstatus.h"
#include <stdint.h>

#define IIC_DEVICE_ID	XPAR_XIICPS_0_DEVICE_ID
#define MPU6050_ADDR	0x68
#define WHO_AM_I_REG	0x75
#define PWR_MGMT_1		0x6B
#define ACCEL_CONFIG    0x1C
#define GYRO_CONFIG     0x1B
#define SMPLRT_DIV      0x19
#define ACCEL_START		0x3B

XIicPs Iic; // I2C instance

// Init I2C
int IicInit()
{
    XIicPs_Config *cfg;

    cfg = XIicPs_LookupConfig(IIC_DEVICE_ID);
    if (cfg == NULL)
    {
        xil_printf("No I2C config found\r\n");
        return XST_FAILURE;
    }

    int Status = XIicPs_CfgInitialize(&Iic, cfg, cfg->BaseAddress);
    if (Status != XST_SUCCESS) 
    {
        xil_printf("I2C init failed\r\n");
        return XST_FAILURE;
    }

    XIicPs_SetSClk(&Iic, 100000); // 100 kHz standard mode
    return XST_SUCCESS;
}

int MPU6050_Config()
{
    uint8_t data[2];

    /* Wake up device */
    data[0] = PWR_MGMT_1;
    data[1] = 0x00;
    XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);

    usleep(10000);

    /* Accel ±2g */
    data[0] = ACCEL_CONFIG;
    data[1] = 0x00;
    XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);

    usleep(10000);

    /* Gyro ±250 deg/s */
    data[0] = GYRO_CONFIG;
    data[1] = 0x00;
    XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);

    usleep(10000);

    /* Sample rate divider (125 Hz) */
    data[0] = SMPLRT_DIV;
    data[1] = 7;
    XIicPs_MasterSendPolled(&Iic, data, 2, MPU6050_ADDR);

    usleep(10000);

    return XST_SUCCESS;
}

// Burst read
int ReadSensor(int16_t *accel, int16_t *gyro)
{
    uint8_t reg = ACCEL_START;
    uint8_t buf[14];

    /* Set register pointer */
    XIicPs_MasterSendPolled(&Iic, &reg, 1, MPU6050_ADDR);

    /* Read 14 bytes */
    XIicPs_MasterRecvPolled(&Iic, buf, 14, MPU6050_ADDR);

    /* Parse accel */
    accel[0] = (int16_t)((buf[0] << 8) | buf[1]);
    accel[1] = (int16_t)((buf[2] << 8) | buf[3]);
    accel[2] = (int16_t)((buf[4] << 8) | buf[5]);

    /* Parse gyro */
    gyro[0]  = (int16_t)((buf[8] << 8) | buf[9]);
    gyro[1]  = (int16_t)((buf[10] << 8) | buf[11]);
    gyro[2]  = (int16_t)((buf[12] << 8) | buf[13]);

    return XST_SUCCESS;
}

void CalibrateAccel(int32_t *ax_off, int32_t *ay_off, int32_t *az_off)
{
    int32_t ax = 0, ay = 0, az = 0;

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

    ax /= samples;
    ay /= samples;
    az /= samples;

    // target values when flat
    *ax_off = ax;
    *ay_off = ay;
    *az_off = az - 16384;

    xil_printf("Accel offsets: %ld %ld %ld\r\n",
               (long)*ax_off,
               (long)*ay_off,
               (long)*az_off);
}

void CalibrateGyro(int16_t *gx_off, int16_t *gy_off, int16_t *gz_off)
{
    int32_t gx = 0, gy = 0, gz = 0;
    int16_t a[3], g[3];

    xil_printf("Calibrating gyro...\r\n");

    const int samples = 300;

    for (int i = 0; i < samples; i++)
    {
        ReadSensor(a, g);

        gx += g[0];
        gy += g[1];
        gz += g[2];

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

    int32_t ax_off = 0, ay_off = 0, az_off = 0;
    int16_t gx_off = 0, gy_off = 0, gz_off = 0;

    CalibrateAccel(&ax_off, &ay_off, &az_off);
    CalibrateGyro(&gx_off, &gy_off, &gz_off);

    xil_printf("Entering main loop...\r\n");

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

        xil_printf("A: %d %d %d | G: %d %d %d\r\n",
                   ax, ay, az,
                   gx, gy, gz);

        usleep(100000);
    }
}
