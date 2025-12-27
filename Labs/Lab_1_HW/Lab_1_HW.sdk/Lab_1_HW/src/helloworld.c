#include <stdio.h>
#include <stdlib.h>
#include <xtime_l.h> // Timer for execution time calculations
#include "platform.h"
#include "xil_printf.h"

#define FIR_Size 5        // FIR Filter Size
#define FIR_Data_Size 6   // Size of input and output

const int FIR_COEFF[FIR_Size] = {1, 2, 6, 2, 1}; // Filter Coefficients

// Optimized FIR Filter Implementation using Symmetry
void FIR_PS_Optimized(int FIR_input[FIR_Data_Size], int FIR_output[FIR_Data_Size])
{
    int index1, index2;
    int shift_reg[FIR_Size] = {0}; // Initialize shift register

    for (index1 = 0; index1 < FIR_Data_Size; index1++)
    {
        // Shift the register (unrolling loop for better performance)
        for (index2 = FIR_Size - 1; index2 > 0; index2--)
        {
            shift_reg[index2] = shift_reg[index2 - 1];
        }
        shift_reg[0] = FIR_input[index1]; // Update the first input

        // Using symmetry to reduce computations
        FIR_output[index1] = FIR_COEFF[FIR_Size / 2] * shift_reg[FIR_Size / 2]; // Middle coefficient
        for (index2 = 0; index2 < FIR_Size / 2; index2++)
        {
            FIR_output[index1] += (shift_reg[index2] + shift_reg[FIR_Size - index2 - 1]) * FIR_COEFF[index2];
        }
    }
}

int main()
{
    init_platform();

    // Define input and output vectors for FIR Filter
    int FIR_input[FIR_Data_Size], FIR_output[FIR_Data_Size];
    int index;
    // to store the time at which certain processes start and end
    XTime time_PS_start, time_PS_end;

    // Initialize the input
    for (index = 0; index < FIR_Data_Size; index++)
    {
        FIR_input[index] = index + 1;
    }

    // Initialize the time to 0
    XTime_SetTime(0);
    XTime_GetTime(&time_PS_start); // Capture the timer value before calling FIR filter

    FIR_PS_Optimized(FIR_input, FIR_output); // Call optimized FIR filter implementation

    XTime_GetTime(&time_PS_end); // Capture the timer value at the end of FIR filter

    // Print the FIR output on the UART
    printf("\n FIR output: \n");
    for (index = 0; index < FIR_Data_Size; index++)
    {
        printf("%d\n", FIR_output[index]);
    }

    printf("\n-------------EXECUTION TIME-----------------------\n");
    float time_processor = 0;
    time_processor = (float)1.0 * (time_PS_end - time_PS_start) / (COUNTS_PER_SECOND / 1000000);
    printf("Execution Time for PS in Micro-Seconds: %f\n", time_processor);

    cleanup_platform();
    return 0;
}
