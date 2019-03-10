/**************************************************************************
*
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
*     FOR A PARTICULAR PURPOSE.
*
*     (c) Copyright 2010 Xilinx, Inc.
*     All rights reserved.
*
**************************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "ff.h"
#include "xdevcfg.h"
#include "xil_io.h"
#include "xil_types.h"

// Parameters for Partial Reconfiguration
//#ifdef ZED
//#define PARTIAL_LEFT_ADDR   0x200000
//#define PARTIAL_RIGHT_ADDR   0x300000
//#define PARTIAL_BLANK_SHIFT_ADDR   0x400000
//#define PARTIAL_LEFT_BITFILE_LEN 37871 // in number of words
//#define PARTIAL_RIGHT_BITFILE_LEN 37871 // in number of words
//#define PARTIAL_BLANK_SHIFT_BITFILE_LEN 30490 // in number of words
//#endif

// BOOT.BIN is approx. 4.5MB = 2107684 Words = 0x202924
// cortex_ecu.bin is approx. 1.5MB = 736718 Words = 0xB3DCE
// Parameters for Partial Reconfiguration
#ifdef ZED
#define PARTIAL_ECU_ADDR   		0x400000
#define PARTIAL_THROTTLE_ADDR   0x800000
#define PARTIAL_ENGINE_ADDR   	0xC00000
#define PARTIAL_BLANK_ADDR   	0x1000000
#define PARTIAL_ECU_BITFILE_LEN 		736718 // in number of words
#define PARTIAL_THROTTLE_BITFILE_LEN 	736718 // in number of words
#define PARTIAL_ENGINE_BITFILE_LEN 		736718 // in number of words
#define PARTIAL_BLANK_BITFILE_LEN 		736718 // in number of words
#endif



#ifdef ZYBO
#define PARTIAL_LEFT_ADDR   0x200000
#define PARTIAL_RIGHT_ADDR   0x300000
#define PARTIAL_BLANK_SHIFT_ADDR   0x400000
#define PARTIAL_LEFT_BITFILE_LEN 26559 // in number of words
#define PARTIAL_RIGHT_BITFILE_LEN 26559 // in number of words
#define PARTIAL_BLANK_SHIFT_BITFILE_LEN 19178 // in number of words
#endif

// Read function for STDIN
extern char inbyte(void);

static FATFS fatfs;

// Driver Instantiations
static XDcfg_Config *XDcfg_0;
XDcfg DcfgInstance;
XDcfg *DcfgInstPtr;

int SD_Init()
{
	FRESULT rc;

	//rc = f_mount(&fatfs,"",0);
	rc = f_mount(&fatfs,"0:",1);
	if (rc) {
		xil_printf(" ERROR : f_mount returned %d\r\n", rc);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int SD_TransferPartial(char *FileName, u32 DestinationAddress, u32 ByteLength)
{
	FIL fil;
	FRESULT rc;
	UINT br;

	xil_printf("Open %s...\r\n", FileName);

	rc = f_open(&fil, FileName, FA_READ);
	if (rc) {
		xil_printf(" ERROR : f_open returned %d\r\n", rc);
		return XST_FAILURE;
	}

	rc = f_lseek(&fil, 0);
	if (rc) {
		xil_printf(" ERROR : f_lseek returned %d\r\n", rc);
		return XST_FAILURE;
	}

	rc = f_read(&fil, (void*) DestinationAddress, ByteLength, &br);
	if (rc) {
		xil_printf(" ERROR : f_read returned %d\r\n", rc);
		return XST_FAILURE;
	}

	rc = f_close(&fil);
	if (rc) {
		xil_printf(" ERROR : f_close returned %d\r\n", rc);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}


int main()
{
	int Status;

	// Flush and disable Data Cache
	Xil_DCacheDisable();

    // Initialize SD controller and transfer partials to DDR
	SD_Init();
//	SD_TransferPartial("b_led.bin", PARTIAL_BLANK_SHIFT_ADDR, (PARTIAL_BLANK_SHIFT_BITFILE_LEN << 2));
//	SD_TransferPartial("left.bin", PARTIAL_LEFT_ADDR, (PARTIAL_LEFT_BITFILE_LEN << 2));
//	SD_TransferPartial("right.bin", PARTIAL_RIGHT_ADDR, (PARTIAL_RIGHT_BITFILE_LEN << 2));

	SD_TransferPartial("ecu.bin", PARTIAL_ECU_ADDR, (PARTIAL_ECU_BITFILE_LEN << 2));
	SD_TransferPartial("trl.bin", PARTIAL_THROTTLE_ADDR, (PARTIAL_THROTTLE_BITFILE_LEN << 2));
	SD_TransferPartial("eng.bin", PARTIAL_ENGINE_ADDR, (PARTIAL_ENGINE_BITFILE_LEN << 2));
	SD_TransferPartial("blk.bin", PARTIAL_BLANK_ADDR, (PARTIAL_BLANK_BITFILE_LEN << 2));
	xil_printf("Partial Binaries transferred successfully!\r\n");

	// Invalidate and enable Data Cache
	Xil_DCacheEnable();

	// Initialize Device Configuration Interface
	DcfgInstPtr = &DcfgInstance;
	XDcfg_0 = XDcfg_LookupConfig(XPAR_XDCFG_0_DEVICE_ID) ;
	Status =  XDcfg_CfgInitialize(DcfgInstPtr, XDcfg_0, XDcfg_0->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// De-select PCAP as the configuration device as we are going to use the ICAP
	XDcfg_ClearControlRegister(DcfgInstPtr, XDCFG_CTRL_PCAP_PR_MASK | XDCFG_CTRL_PCAP_MODE_MASK);


    return 0;
}
