// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATMUL_MM_SP_H
#define XMATMUL_MM_SP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatmul_mm_sp_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XMatmul_mm_sp_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XMatmul_mm_sp;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatmul_mm_sp_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatmul_mm_sp_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatmul_mm_sp_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatmul_mm_sp_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMatmul_mm_sp_Initialize(XMatmul_mm_sp *InstancePtr, u16 DeviceId);
XMatmul_mm_sp_Config* XMatmul_mm_sp_LookupConfig(u16 DeviceId);
int XMatmul_mm_sp_CfgInitialize(XMatmul_mm_sp *InstancePtr, XMatmul_mm_sp_Config *ConfigPtr);
#else
int XMatmul_mm_sp_Initialize(XMatmul_mm_sp *InstancePtr, const char* InstanceName);
int XMatmul_mm_sp_Release(XMatmul_mm_sp *InstancePtr);
#endif

void XMatmul_mm_sp_Start(XMatmul_mm_sp *InstancePtr);
u32 XMatmul_mm_sp_IsDone(XMatmul_mm_sp *InstancePtr);
u32 XMatmul_mm_sp_IsIdle(XMatmul_mm_sp *InstancePtr);
u32 XMatmul_mm_sp_IsReady(XMatmul_mm_sp *InstancePtr);
void XMatmul_mm_sp_EnableAutoRestart(XMatmul_mm_sp *InstancePtr);
void XMatmul_mm_sp_DisableAutoRestart(XMatmul_mm_sp *InstancePtr);

void XMatmul_mm_sp_Set_Matrix_In(XMatmul_mm_sp *InstancePtr, u32 Data);
u32 XMatmul_mm_sp_Get_Matrix_In(XMatmul_mm_sp *InstancePtr);
void XMatmul_mm_sp_Set_Matrix_C_HW(XMatmul_mm_sp *InstancePtr, u32 Data);
u32 XMatmul_mm_sp_Get_Matrix_C_HW(XMatmul_mm_sp *InstancePtr);

void XMatmul_mm_sp_InterruptGlobalEnable(XMatmul_mm_sp *InstancePtr);
void XMatmul_mm_sp_InterruptGlobalDisable(XMatmul_mm_sp *InstancePtr);
void XMatmul_mm_sp_InterruptEnable(XMatmul_mm_sp *InstancePtr, u32 Mask);
void XMatmul_mm_sp_InterruptDisable(XMatmul_mm_sp *InstancePtr, u32 Mask);
void XMatmul_mm_sp_InterruptClear(XMatmul_mm_sp *InstancePtr, u32 Mask);
u32 XMatmul_mm_sp_InterruptGetEnabled(XMatmul_mm_sp *InstancePtr);
u32 XMatmul_mm_sp_InterruptGetStatus(XMatmul_mm_sp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
