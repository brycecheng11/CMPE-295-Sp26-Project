/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "PmodCAN.h"
#include "xuartps.h"
#include <string.h>
#include <stdlib.h>

#define GPIO_BASE XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR

PmodCAN myCAN;
XUartPs Uart;

void CAN_ReadReg_Fixed(PmodCAN *InstancePtr, u8 reg, u8 *data, u32 nData) {
    u8 buf[nData + 2];
    buf[0] = CAN_READ_REG_CMD;
    buf[1] = reg;
    XSpi_Transfer(&InstancePtr->CANSpi, buf, buf, nData + 2);
    for (u32 i = 0; i < nData; i++)
        data[i] = buf[i + 2];
}

void UART_Init() {
    XUartPs_Config *Config;
    Config = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
    XUartPs_CfgInitialize(&Uart, Config, Config->BaseAddress);
    XUartPs_SetBaudRate(&Uart, 115200);
}

void UART_ReadLine(char *buf, int maxlen) {
    int i = 0;
    while (i < maxlen - 1) {
        while (!XUartPs_IsReceiveData(Uart.Config.BaseAddress));
        char c = XUartPs_RecvByte(Uart.Config.BaseAddress);
        XUartPs_SendByte(Uart.Config.BaseAddress, c); // echo
        if (c == '\r' || c == '\n') {
            xil_printf("\r\n");
            break;
        }
        // Handle backspace
        if (c == 0x7F || c == '\b') {
            if (i > 0) {
                i--;
                xil_printf("\b \b");
            }
            continue;
        }
        buf[i++] = c;
    }
    buf[i] = '\0';
}

// Parse hex string like "0x1A2" or "1A2"
u32 parse_hex(const char *str) {
    if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
        return strtoul(str + 2, NULL, 16);
    return strtoul(str, NULL, 16);
}

void print_help() {
    xil_printf("\r\nAvailable commands:\r\n");
    xil_printf("  send <id> <byte0> [byte1] ... [byte7]\r\n");
    xil_printf("    e.g. send 0x123 0xDE 0xAD 0xBE 0xEF\r\n");
    xil_printf("  recv\r\n");
    xil_printf("    wait for incoming CAN message\r\n");
    xil_printf("  status\r\n");
    xil_printf("    print TEC/REC/EFLG error counters\r\n");
    xil_printf("  help\r\n");
    xil_printf("    print this message\r\n\r\n");
}

int main() {
    init_platform();
    UART_Init();
    xil_printf("PmodCAN UART Commander\r\n");

    CAN_begin(&myCAN,
              XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR,
              XPAR_PMODCAN_0_AXI_LITE_SPI_BASEADDR);

    Xil_Out32(GPIO_BASE + 4, 0xE);
    Xil_Out32(GPIO_BASE + 0, 0x00);
    for (volatile int i = 0; i < 1000000; i++);
    Xil_Out32(GPIO_BASE + 0, 0x01);
    for (volatile int i = 0; i < 1000000; i++);

    CAN_Configure(&myCAN, CAN_ModeNormalOperation);
    CAN_ModifyReg(&myCAN, CAN_CANCTRL_REG_ADDR,
                  CAN_CAN_CANCTRL_MODE_MASK, CAN_ModeConfiguration);
    for (volatile int i = 0; i < 100000; i++);
    u8 CNF_1Mbps[3] = {0x82, 0xD9, 0x00};
    CAN_WriteReg(&myCAN, CAN_CNF3_REG_ADDR, CNF_1Mbps, 3);
    CAN_ModifyReg(&myCAN, CAN_CANCTRL_REG_ADDR,
                  CAN_CAN_CANCTRL_MODE_MASK, CAN_ModeNormalOperation);
    for (volatile int i = 0; i < 100000; i++);
    u8 canstat = 0;
    CAN_ReadReg_Fixed(&myCAN, 0x0E, &canstat, 1);
    xil_printf("CANSTAT = 0x%02X (expect 0x00)\r\n", canstat);

    print_help();
    xil_printf("> ");

    char line[128];
    char *tokens[12];  // max 1 cmd + 1 id + 8 data bytes + spare

    while(1) {
        UART_ReadLine(line, sizeof(line));

        if (strlen(line) == 0) {
            xil_printf("> ");
            continue;
        }

        // Tokenize the input
        int ntokens = 0;
        char *token = strtok(line, " ");
        while (token != NULL && ntokens < 12) {
            tokens[ntokens++] = token;
            token = strtok(NULL, " ");
        }

        if (ntokens == 0) {
            xil_printf("> ");
            continue;
        }

        // --- SEND command ---
        // Usage: send <id> <byte0> [byte1..byte7]
        if (strcmp(tokens[0], "send") == 0) {
            if (ntokens < 3) {
                xil_printf("Usage: send <id> <byte0> [byte1..byte7]\r\n");
                xil_printf("  e.g. send 0x123 0xDE 0xAD 0xBE 0xEF\r\n");
            } else {
                CAN_Message txMsg;
                txMsg.id  = parse_hex(tokens[1]) & 0x7FF;
                txMsg.ide = 0;
                txMsg.rtr = 0;
                txMsg.eid = 0;
                txMsg.dlc = ntokens - 2;  // remaining tokens are data bytes
                if (txMsg.dlc > 8) txMsg.dlc = 8;

                for (int i = 0; i < txMsg.dlc; i++)
                    txMsg.data[i] = parse_hex(tokens[i + 2]) & 0xFF;

                CAN_SendMessage(&myCAN, txMsg, CAN_Tx0);

                xil_printf("Sent: ID=0x%03X DLC=%d data=", txMsg.id, txMsg.dlc);
                for (int i = 0; i < txMsg.dlc; i++)
                    xil_printf("0x%02X ", txMsg.data[i]);
                xil_printf("\r\n");
            }

        // --- RECV command ---
        } else if (strcmp(tokens[0], "recv") == 0) {
            xil_printf("Waiting for message...\r\n");
            u8 intf = 0;
            int timeout = 0;
            do {
                CAN_ReadReg_Fixed(&myCAN, 0x2C, &intf, 1);
                for (volatile int i = 0; i < 100000; i++);
                timeout++;
            } while (!(intf & 0x01) && timeout < 100);

            if (intf & 0x01) {
                CAN_Message rxMsg;
                CAN_ReceiveMessage(&myCAN, &rxMsg, CAN_Rx0);
                xil_printf("Received! ID=0x%03X DLC=%d data=",
                           rxMsg.id, rxMsg.dlc);
                for (int i = 0; i < rxMsg.dlc; i++)
                    xil_printf("0x%02X ", rxMsg.data[i]);
                xil_printf("\r\n");
                CAN_ModifyReg(&myCAN, 0x2C, 0x01, 0x00);
            } else {
                xil_printf("Timeout - no message received\r\n");
            }

        // --- STATUS command ---
        } else if (strcmp(tokens[0], "status") == 0) {
            u8 eflg = 0, tec = 0, rec = 0;
            CAN_ReadReg_Fixed(&myCAN, 0x2D, &eflg, 1);
            CAN_ReadReg_Fixed(&myCAN, 0x1C, &tec, 1);
            CAN_ReadReg_Fixed(&myCAN, 0x1D, &rec, 1);
            xil_printf("EFLG=0x%02X TEC=%d REC=%d\r\n", eflg, tec, rec);

        // --- HELP command ---
        } else if (strcmp(tokens[0], "help") == 0) {
            print_help();

        } else {
            xil_printf("Unknown command: '%s' - type 'help'\r\n", tokens[0]);
        }

        xil_printf("> ");
    }

    cleanup_platform();
    return 0;
}
