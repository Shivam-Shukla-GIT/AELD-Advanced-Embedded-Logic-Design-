// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatmul_mm_sp.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatmul_mm_sp_CfgInitialize(XMatmul_mm_sp *InstancePtr, XMatmul_mm_sp_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatmul_mm_sp_Start(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL) & 0x80;
    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatmul_mm_sp_IsDone(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatmul_mm_sp_IsIdle(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatmul_mm_sp_IsReady(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatmul_mm_sp_EnableAutoRestart(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XMatmul_mm_sp_DisableAutoRestart(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_AP_CTRL, 0);
}

void XMatmul_mm_sp_Set_Matrix_In(XMatmul_mm_sp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_MATRIX_IN_DATA, Data);
}

u32 XMatmul_mm_sp_Get_Matrix_In(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_MATRIX_IN_DATA);
    return Data;
}

void XMatmul_mm_sp_Set_Matrix_C_HW(XMatmul_mm_sp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_MATRIX_C_HW_DATA, Data);
}

u32 XMatmul_mm_sp_Get_Matrix_C_HW(XMatmul_mm_sp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_MATRIX_C_HW_DATA);
    return Data;
}

void XMatmul_mm_sp_InterruptGlobalEnable(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_GIE, 1);
}

void XMatmul_mm_sp_InterruptGlobalDisable(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_GIE, 0);
}

void XMatmul_mm_sp_InterruptEnable(XMatmul_mm_sp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_IER);
    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_IER, Register | Mask);
}

void XMatmul_mm_sp_InterruptDisable(XMatmul_mm_sp *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_IER);
    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_IER, Register & (~Mask));
}

void XMatmul_mm_sp_InterruptClear(XMatmul_mm_sp *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatmul_mm_sp_WriteReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_ISR, Mask);
}

u32 XMatmul_mm_sp_InterruptGetEnabled(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_IER);
}

u32 XMatmul_mm_sp_InterruptGetStatus(XMatmul_mm_sp *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatmul_mm_sp_ReadReg(InstancePtr->Axilites_BaseAddress, XMATMUL_MM_SP_AXILITES_ADDR_ISR);
}

