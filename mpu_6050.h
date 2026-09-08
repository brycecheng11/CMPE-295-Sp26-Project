#ifndef MPU_6050_H
#define MPU_6050_H

#include "xiicps.h"
#include <stdint.h>

/* initialize I2C */
int IicInit(XIicPs *Iic);

int MPU6050_Config(XIicPs *Iic);

/* burst read accelerometer and gyroscope values */
int ReadSensor(XIicPs *Iic, int16_t *accel, int16_t *gyro);

/* one point accelerometer calibration--while FLAT, get 1000 samples from accelerometer, use average as sensor bias */
void CalibrateAccel(XIicPs *Iic, int16_t *ax_off, int16_t *ay_off, int16_t *az_off);

/* zero-rate offset calibration--while STATIONARY, get 300 samples from gyroscope, use average as sensor bias */
void CalibrateGyro(XIicPs *Iic, int16_t *gx_off, int16_t *gy_off, int16_t *gz_off);

#endif
