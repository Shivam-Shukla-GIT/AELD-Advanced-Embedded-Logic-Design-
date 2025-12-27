// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatmul_mm_sp.h"

extern XMatmul_mm_sp_Config XMatmul_mm_sp_ConfigTable[];

XMatmul_mm_sp_Config *XMatmul_mm_sp_LookupConfig(u16 DeviceId) {
	XMatmul_mm_sp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATMUL_MM_SP_NUM_INSTANCES; Index++) {
		if (XMatmul_mm_sp_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatmul_mm_sp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatmul_mm_sp_Initialize(XMatmul_mm_sp *InstancePtr, u16 DeviceId) {
	XMatmul_mm_sp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatmul_mm_sp_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatmul_mm_sp_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

