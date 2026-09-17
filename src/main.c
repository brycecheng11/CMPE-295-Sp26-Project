#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdint.h>

#define PID_BASE        0x43C00000

#define PID_CONTROL     (PID_BASE + 0x00)
#define PID_ANGLE       (PID_BASE + 0x04)
#define PID_TARGET      (PID_BASE + 0x14)
#define PID_TIME_LO     (PID_BASE + 0x18)
#define PID_TIME_HI     (PID_BASE + 0x1C)
#define PID_VELOCITY    (PID_BASE + 0x20)
#define PID_NEW_VEL     (PID_BASE + 0x24)

int main(void)
{
	xil_printf("Writing angle...\r\n");

	    Xil_Out32(PID_ANGLE, 100);

	    xil_printf("Readback = %lu\r\n",
	        (unsigned long)Xil_In32(PID_ANGLE));

	    while (1) {
	        sleep(1);
	    }

	    return 0;
}
