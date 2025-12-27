#include "matrixmul.h"

#ifdef solution2
void matrixmul_2(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C)
{

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis register both port=out_C
#pragma HLS INTERFACE axis register both port=in_A

	Mat_Dtype input_A[MATSIZE][MATSIZE];
	Mat_Dtype input_B[MATSIZE][MATSIZE];
	Mat_Dtype output_C[MATSIZE][MATSIZE];
	int row,col,index;
	axis_data local_read, local_write;

	//saving streaming data to respective variables
	loop_input_A1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_A2: for(col=0;col<MATSIZE;col++)
		{
			#pragma HLS PIPELINE // Added for solution 2
			local_read = in_A.read();
			input_A[row][col] = local_read.data;
		}
	}

	loop_input_B1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_B2: for(col=0;col<MATSIZE;col++)
		{
			#pragma HLS PIPELINE // Added for solution 2
			local_read = in_A.read();
			input_B[row][col] = local_read.data;
		}
	}

	// MATRIX MULTIPLICATION
	loop1: for (row=0;row<MATSIZE;row++){
		loop2: for(col=0;col<MATSIZE;col++){
			Mat_Dtype res=0;
			loop3: for(index=0;index<MATSIZE;index++){
				#pragma HLS PIPELINE // Added for solution 2
				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}

	// stream output data back
	loop_output_C1: for(row=0;row<MATSIZE;row++){
		loop_output_C2: for(col=0;col<MATSIZE;col++){
			#pragma HLS PIPELINE // Added for solution 2
			local_write.data = output_C[row][col];
			// generating the last signal and strobe signal
			if((row==MATSIZE-1) && ((col==MATSIZE-1)))
				local_write.last = 1;
			else
				local_write.last = 0;
			out_C.write(local_write);
		}
	}
}
#endif

#ifdef solution3
void matrixmul_3(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C)
{

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis register both port=out_C
#pragma HLS INTERFACE axis register both port=in_A

	Mat_Dtype input_A[MATSIZE][MATSIZE];
	#pragma HLS ARRAY_PARTITION variable=input_A complete dim=2	 // Added for solution 3
	Mat_Dtype input_B[MATSIZE][MATSIZE];
	#pragma HLS ARRAY_PARTITION variable=input_B complete dim=1	 // Added for solution 3
	Mat_Dtype output_C[MATSIZE][MATSIZE];
	int row,col,index;
	axis_data local_read, local_write;

	//saving streaming data to respective variables
	loop_input_A1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_A2: for(col=0;col<MATSIZE;col++)
		{
			#pragma HLS PIPELINE // Added for solution 2
			local_read = in_A.read();
			input_A[row][col] = local_read.data;
		}
	}

	loop_input_B1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_B2: for(col=0;col<MATSIZE;col++)
		{
			#pragma HLS PIPELINE // Added for solution 2
			local_read = in_A.read();
			input_B[row][col] = local_read.data;
		}
	}

	// MATRIX MULTIPLICATION
	loop1: for (row=0;row<MATSIZE;row++){
		loop2: for(col=0;col<MATSIZE;col++){
			#pragma HLS PIPELINE // Added for solution 3
			Mat_Dtype res=0;
			loop3: for(index=0;index<MATSIZE;index++){
				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}

	// stream output data back
	loop_output_C1: for(row=0;row<MATSIZE;row++){
		loop_output_C2: for(col=0;col<MATSIZE;col++){
			#pragma HLS PIPELINE // Added for solution 3
			local_write.data = output_C[row][col];
			// generating the last signal and strobe signal
			if((row==MATSIZE-1) && ((col==MATSIZE-1)))
				local_write.last = 1;
			else
				local_write.last = 0;
			out_C.write(local_write);
		}
	}
}
#endif

#ifdef solution4
// Interface for AXI MM
void matmul_MM_SP(Mat_Dtype *Matrix_In, Mat_Dtype *Matrix_C_HW) {
#pragma HLS INTERFACE s_axilite port=return
// We define the depth same as the number of elements to be read or write
// slave offset means we can update the offset from AXI Lite interface
#pragma HLS INTERFACE m_axi depth=64 port=Matrix_C_HW offset=slave
#pragma HLS INTERFACE m_axi depth=128 port=Matrix_In offset=slave


	int row, col, index;
	// Data read from Memory is stored in 1D array
	Mat_Dtype Inarray_AB[MATSIZE*MATSIZE*2];
	Mat_Dtype Outarray_C[MATSIZE*MATSIZE];
	// Data is then mapped to 2D array for matrix multiplication
	Mat_Dtype In_A[MATSIZE][MATSIZE];
	#pragma HLS ARRAY_PARTITION variable=In_A complete dim=2
	Mat_Dtype In_B[MATSIZE][MATSIZE];
	#pragma HLS ARRAY_PARTITION variable=In_B complete dim=1
	Mat_Dtype Out_C[MATSIZE][MATSIZE];


	// Read the data (2 matrices) from memory
	memcpy(Inarray_AB, (const Mat_Dtype*)Matrix_In, 2*MATSIZE*MATSIZE*sizeof(Mat_Dtype));

	// Convert it into 2D matrix
	int ind = 0;
	loop1_A1: for (row = 0; row < MATSIZE; row++) {
		loop2_A2: for (col = 0; col < MATSIZE; col++) {
			#pragma HLS PIPELINE
			In_A[row][col] = Inarray_AB[ind];
			ind= ind+1;

			}
	}

	loop1_B1: for (row = 0; row < MATSIZE; row++) {
		loop2_B2: for (col = 0; col < MATSIZE; col++) {
			#pragma HLS PIPELINE
			In_B[row][col] = Inarray_AB[ind];
			ind= ind+1;

			}
	}

	// Perform Matrix Multiplication
	ind = 0;
	loop1_row: for (row = 0; row < MATSIZE; row++) {
			loop2_col: for (col = 0; col < MATSIZE; col++) {
				#pragma HLS PIPELINE
				Mat_Dtype result = 0;
				loop3_MAC: for(index = 0; index < MATSIZE; index++) {
					result += In_A[row][index] * In_B[index][col];
				}
				Outarray_C[ind] = result;
				ind = ind + 1;
				}
		}

	// Write the data back to memory
	memcpy((Mat_Dtype *)Matrix_C_HW, Outarray_C , MATSIZE*MATSIZE*sizeof(Mat_Dtype));

}

#endif
