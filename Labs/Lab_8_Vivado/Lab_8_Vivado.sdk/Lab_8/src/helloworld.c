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

#include <stdio.h>
#include <stdlib.h>
#include <xtime_l.h>
#include "xaxidma.h"
#include "xparameters.h"
#include "platform.h"
#include "xmatmul_mm_sp.h"

#define MATSIZE 8
typedef float Mat_Dtype;

Mat_Dtype time_AXIMM;

// PS FUNCTION
void matmul_bm(Mat_Dtype Matrix_A[MATSIZE][MATSIZE], Mat_Dtype Matrix_B[MATSIZE][MATSIZE], Mat_Dtype Matrix_C_PS[MATSIZE][MATSIZE]) {

	int row, col, index;
	for (row = 0; row < MATSIZE; row++) {
		for (col = 0; col < MATSIZE; col++) {
			Mat_Dtype res = 0;
			for(index = 0; index < MATSIZE; index++) {
				res += Matrix_A[row][index] * Matrix_B[index][col];
			}
			Matrix_C_PS[row][col] = res;
			}
		}
}

void matmul_2(Mat_Dtype Matrix_AB[MATSIZE*2][MATSIZE], Mat_Dtype Matrix_C_sol2[MATSIZE][MATSIZE]) {

	int status;

	 // ACP DMA Initialization
	 XAxiDma_Config *DMA_confptracp; //DMA configuration pointer
	 XAxiDma AxiDMAacp; // DMA instance pointer

	 // Copy the DMA information (received from hardware in xparameters.h file)
	 DMA_confptracp = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	 status = XAxiDma_CfgInitialize(&AxiDMAacp, DMA_confptracp);
	 if(status != XST_SUCCESS)
	 {
		printf("ACP DMA Init Failed\t\n");
		return XST_FAILURE;
	 }

	   status = XAxiDma_SimpleTransfer(&AxiDMAacp, (UINTPTR)Matrix_C_sol2, (sizeof(int)*MATSIZE*MATSIZE),XAXIDMA_DEVICE_TO_DMA);
	   status = XAxiDma_SimpleTransfer(&AxiDMAacp, (UINTPTR)Matrix_AB, (sizeof(int)*MATSIZE*MATSIZE*2),XAXIDMA_DMA_TO_DEVICE);
	   // We have only configure the DMA to perform these two transactions..DMA might not have started the transactions.

	   status = XAxiDma_ReadReg(XPAR_AXIDMA_0_BASEADDR,0x04) & 0x00000002;
	   while(status!=0x00000002)
	   {
		 status = XAxiDma_ReadReg(XPAR_AXIDMA_0_BASEADDR,0x04) & 0x00000002;
	   }
	   status = XAxiDma_ReadReg(XPAR_AXIDMA_0_BASEADDR,0x34) & 0x00000002;

	  while(status!=0x00000002)
	  {
		status = XAxiDma_ReadReg(XPAR_AXIDMA_0_BASEADDR,0x34) & 0x00000002;
	  }
}

void matmul_3(Mat_Dtype Matrix_AB[MATSIZE*2][MATSIZE], Mat_Dtype Matrix_C_sol3[MATSIZE][MATSIZE]) {

	int status;

	 // ACP DMA Initialization
	 XAxiDma_Config *DMA_confptracp; //DMA configuration pointer
	 XAxiDma AxiDMAacp; // DMA instance pointer

	 // Copy the DMA information (received from hardware in xparameters.h file)
	 DMA_confptracp = XAxiDma_LookupConfig(XPAR_AXIDMA_1_DEVICE_ID);
	 status = XAxiDma_CfgInitialize(&AxiDMAacp, DMA_confptracp);
	 if(status != XST_SUCCESS)
	 {
		printf("ACP DMA Init Failed\t\n");
		return XST_FAILURE;
	 }

	   status = XAxiDma_SimpleTransfer(&AxiDMAacp, (UINTPTR)Matrix_C_sol3, (sizeof(int)*MATSIZE*MATSIZE),XAXIDMA_DEVICE_TO_DMA);
	   status = XAxiDma_SimpleTransfer(&AxiDMAacp, (UINTPTR)Matrix_AB, (sizeof(int)*MATSIZE*MATSIZE*2),XAXIDMA_DMA_TO_DEVICE);
	   // We have only configure the DMA to perform these two transactions..DMA might not have started the transactions.

	   status = XAxiDma_ReadReg(XPAR_AXIDMA_1_BASEADDR,0x04) & 0x00000002;
	   while(status!=0x00000002)
	   {
		 status = XAxiDma_ReadReg(XPAR_AXIDMA_1_BASEADDR,0x04) & 0x00000002;
	   }
	   status = XAxiDma_ReadReg(XPAR_AXIDMA_1_BASEADDR,0x34) & 0x00000002;

	  while(status!=0x00000002)
	  {
		status = XAxiDma_ReadReg(XPAR_AXIDMA_1_BASEADDR,0x34) & 0x00000002;
	  }
}

void Matrixmul_MM(Mat_Dtype In_A[MATSIZE][MATSIZE], Mat_Dtype In_B[MATSIZE][MATSIZE], Mat_Dtype Out_C[MATSIZE][MATSIZE])
{
	int status;
	int row,col;

	Mat_Dtype Inarray_AB[MATSIZE*MATSIZE*2];  // MM input
	Mat_Dtype Outarray_C[MATSIZE*MATSIZE];   // MM output

	XTime time_PL_start , time_PL_end;

	//Generate Input
	int index=0;
	for(row=0;row<MATSIZE;row++)
	{
		for(col=0;col<MATSIZE;col++)
		{
			Inarray_AB[index]=In_A[row][col];
			index=index+1;
		}
	}
	for(row=0;row<MATSIZE;row++)
	{
		for(col=0;col<MATSIZE;col++)
		{
			Inarray_AB[index]=In_B[row][col];
			index=index+1;
		}
	}


	XMatmul_mm_sp AxiMM;
	XMatmul_mm_sp_Config *MM_Config;
	MM_Config = XMatmul_mm_sp_LookupConfig(XPAR_MATMUL_MM_SP_0_DEVICE_ID);
	status = XMatmul_mm_sp_CfgInitialize(&AxiMM, MM_Config);

	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Matrix Multiplication on PL using AXI MM
	XTime_SetTime(0);
	XTime_GetTime(&time_PL_start); // Capture the timer value at the start
	XMatmul_mm_sp_Set_Matrix_In(&AxiMM, (u32)Inarray_AB);
	XMatmul_mm_sp_Set_Matrix_C_HW(&AxiMM, (u32)Outarray_C);
	XMatmul_mm_sp_Start(&AxiMM);
	while(XMatmul_mm_sp_IsDone(&AxiMM) == 0)
	XTime_GetTime(&time_PL_end); // Capture the timer value at the end

	time_AXIMM = ((Mat_Dtype)1.0 * (time_PL_end - time_PL_start) / (COUNTS_PER_SECOND/1000000));

	index=0;
	for(row=0;row<MATSIZE;row++)
	{
		for(col=0;col<MATSIZE;col++)
		{
			Out_C[row][col] = Outarray_C[index];
			index = index+1;
		}
	}
}


int main() {

	init_platform();

	printf("Hello world");

	// initializing the inputs
	Mat_Dtype Matrix_A[MATSIZE][MATSIZE], Matrix_B[MATSIZE][MATSIZE];  // input vector
	Mat_Dtype Matrix_C_PS[MATSIZE][MATSIZE]; 					 // output vector

	Mat_Dtype Matrix_AB[MATSIZE*2][MATSIZE];  // input vector combined for PL
	Mat_Dtype Matrix_C_sol2[MATSIZE][MATSIZE]; // output vector of solution 1
	Mat_Dtype Matrix_C_sol3[MATSIZE][MATSIZE]; // output vector of soultion 2
	Mat_Dtype Matrix_C_MM[MATSIZE][MATSIZE]; // output vector of soultion MM

	// Generate random numbers for Matrix_A and Matrix_B
	int i, j;
	for (i = 0; i < MATSIZE; i++) {
		for(j = 0; j < MATSIZE; j++) {
			Matrix_A[i][j] = (rand()%20);
			Matrix_B[i][j] = (rand()%20);
			Matrix_AB[i][j] = Matrix_A[i][j]; // First appending Matrix_A in Matrix_AB
			Matrix_AB[i+MATSIZE][j] = Matrix_B[i][j];  // Then combining Matrix B in Matrix_AB for final input matrix of PL
		}
	}
	//printing input matrices
	printf("Input Matrices:\n");
	for(i = 0; i < MATSIZE; i++) {
		for(j = 0; j < MATSIZE; j++) {
			printf("Matrix_A[%d][%d]: %.2f, Matrix_B[%d][%d]: %.2f\n", i+1, j+1, Matrix_A[i][j], i+1, j+1, Matrix_B[i][j]);
		}
	}

	XTime PS_start, PS_end, sol2_start , sol2_end, sol3_start , sol3_end;

	XTime_SetTime(0);
	XTime_GetTime(&PS_start);
	matmul_bm(Matrix_A, Matrix_B, Matrix_C_PS);
	XTime_GetTime(&PS_end);

	XTime_SetTime(0);
	XTime_GetTime(&sol2_start);
	matmul_2(Matrix_AB, Matrix_C_sol2);
	XTime_GetTime(&sol2_end);

	XTime_SetTime(0);
	XTime_GetTime(&sol3_start);
	matmul_3(Matrix_AB, Matrix_C_sol3);
	XTime_GetTime(&sol3_end);

	Matrixmul_MM(Matrix_A, Matrix_B, Matrix_C_MM);

	// Compare PS and PL output
    int mismatch = 0;
    printf("\nOutput Matrices:\n");
    for(i = 0; i < MATSIZE; i++) {
    	for(j = 0; j < MATSIZE; j++) {
	    	printf("PS output[%d][%d]: %.2f, sol2 output[%d][%d]: %.2f, sol3 output[%d][%d]: %.2f, MM output[%d][%d]: %.2f\n", i+1, j+1, Matrix_C_PS[i][j], i+1, j+1, Matrix_C_sol2[i][j], i+1, j+1, Matrix_C_sol3[i][j], i+1, j+1, Matrix_C_MM[i][j]);
	    	Mat_Dtype diff1 = abs(Matrix_C_PS[i][j] - Matrix_C_sol2[i][j]);
	    	Mat_Dtype diff2 = abs(Matrix_C_PS[i][j] - Matrix_C_sol3[i][j]);
	    	Mat_Dtype diff3 = abs(Matrix_C_PS[i][j] - Matrix_C_MM[i][j]);
	    	Mat_Dtype diff4 = abs(Matrix_C_sol2[i][j] - Matrix_C_sol3[i][j]);
	    	Mat_Dtype diff5 = abs(Matrix_C_sol2[i][j] - Matrix_C_MM[i][j]);

	    	if ((diff1 >= 0.0001)&(diff2 >= 0.0001)&(diff3 >= 0.0001)&(diff4 >= 0.0001)&(diff5 >= 0.0001)) {
	    		mismatch = 1;
	    		break;
    		}
    	}
    }

    if(mismatch == 1) {
		printf("\nOutput mismatch at index = %d , %d\r\n", i, j);
	}
	else {
		printf("\nNo error! \n");
	}

    Mat_Dtype time_processor = (Mat_Dtype)1.0 * (PS_end - PS_start) / (COUNTS_PER_SECOND/1000000);
    Mat_Dtype time_sol2 = (Mat_Dtype)1.0 * (sol2_end - sol2_start) / (COUNTS_PER_SECOND/1000000);
    Mat_Dtype time_sol3 = (Mat_Dtype)1.0 * (sol3_end - sol3_start) / (COUNTS_PER_SECOND/1000000);


    printf("\n--------------------------- EXECUTION TIME (Microseconds) ----------------------------------\n");
	printf("PS Time: %.2f, PL Time pipeline optimized: %.2f, PL Time array partitioning optimized: %.2f, PL Time MM: %.2f\n", time_processor, time_sol2, time_sol3, time_AXIMM);
	printf("-----------------------------------------------------------------------------------------------\n");

	 cleanup_platform();
	 return 0;

}
