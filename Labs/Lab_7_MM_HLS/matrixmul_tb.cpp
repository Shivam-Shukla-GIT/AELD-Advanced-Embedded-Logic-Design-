#include "matrixmul.h"
#include <stdio.h>
#include <math.h>

void matrixmul_2(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_3(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matmul_MM_SP(Mat_Dtype *Matrix_In, Mat_Dtype *Matrix_C_HW);
void matrixmul_benchmark(Mat_Dtype input_A[MATSIZE][MATSIZE],Mat_Dtype input_B[MATSIZE][MATSIZE],Mat_Dtype output_C[MATSIZE][MATSIZE]);

int main()
{
	Mat_Dtype input_A[MATSIZE][MATSIZE];
	Mat_Dtype input_B[MATSIZE][MATSIZE];
	Mat_Dtype output_C_bm[MATSIZE][MATSIZE],output_C_hw[MATSIZE][MATSIZE];
	Mat_Dtype Matrix_In[MATSIZE*MATSIZE*2], Matrix_C_HW[MATSIZE*MATSIZE];
	int row,col;
	axis_data local_read, local_write;
	hls::stream<axis_data> in_A,in_B,out_C;

	//Generate test data
	loop_input_1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_2: for(col=0;col<MATSIZE;col++)
		{
			input_A[row][col] =  ((Mat_Dtype)rand()/(RAND_MAX/5));
			input_B[row][col] =  ((Mat_Dtype)rand()/(RAND_MAX/5));
		}
	}
	// Call software benchmark function
	matrixmul_benchmark(input_A,input_B,output_C_bm);

	//Generate stream input A for hardware function
	loop_input_A1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_A2: for(col=0;col<MATSIZE;col++)
		{
			local_write.data = input_A[row][col];
			if((row==MATSIZE-1) && ((col==MATSIZE-1)))
				local_write.last = 1;
			else
				local_write.last = 0;
			in_A.write(local_write);
		}
	}

	//Generate stream input B for hardware function
	loop_input_B1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_B2: for(col=0;col<MATSIZE;col++)
		{
			local_write.data = input_B[row][col];
			if((row==MATSIZE-1) && ((col==MATSIZE-1)))
				local_write.last = 1;
			else
				local_write.last = 0;
			in_A.write(local_write);
		}
	}

	// Generate Mat_Dtype input for MM hardware function
	int ind=0;
	loop_input_MatA1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_MatA2: for(col=0;col<MATSIZE;col++)
		{
			Matrix_In[ind] = input_A[row][col];
			ind=ind+1;
		}
	}

	loop_input_MatB1: for(row=0;row<MATSIZE;row++)
	{
		loop_input_MatB2: for(col=0;col<MATSIZE;col++)
		{
			Matrix_In[ind] = input_B[row][col];
			ind=ind+1;
		}
	}

	//Call the hardware function
		#ifdef solution2
		matrixmul_2(in_A,out_C);
		//Receive stream output C from hardware function
		loop_output_C1: for(row=0;row<MATSIZE;row++)
		{
			loop_output_C2: for(col=0;col<MATSIZE;col++)
			{
				local_read = out_C.read();
				output_C_hw[row][col] = local_read.data;
			}
		}
		#endif

		#ifdef solution3
		matrixmul_3(in_A,out_C);
		//Receive stream output C from hardware function
		loop_output_C1: for(row=0;row<MATSIZE;row++)
		{
			loop_output_C2: for(col=0;col<MATSIZE;col++)
			{
				local_read = out_C.read();
				output_C_hw[row][col] = local_read.data;
			}
		}
		#endif

		#ifdef solution4
		matmul_MM_SP(Matrix_In, Matrix_C_HW);
		ind = 0;
		loop_output_MatC1: for (row = 0; row < MATSIZE; row++) {
			loop_output_MatC2: for (col = 0; col < MATSIZE; col++) {
				output_C_hw[row][col] = Matrix_C_HW[ind];
				ind= ind+1;
				}
		}
		#endif


	// Compare benchmark and hardware functions output
	//Receive stream output C from hardware function
	loop_compare_C1: for(row=0;row<MATSIZE;row++)
	{
		loop_compare_C2: for(col=0;col<MATSIZE;col++)
		{
			if(fabs(output_C_hw[row][col]-output_C_bm[row][col])>0.01)
			{
				printf("Error at row index %d and column index %d\n",row,col);
				printf("Hardware output %f\n",output_C_hw[row][col]);
				printf("Software output %f\n",output_C_bm[row][col]);
				return 1;
			}
		}
	}
	printf("No Error!\n");
	return 0;
}


void matrixmul_benchmark(Mat_Dtype input_A[MATSIZE][MATSIZE],Mat_Dtype input_B[MATSIZE][MATSIZE],Mat_Dtype output_C[MATSIZE][MATSIZE])
{
	loop1: for (int row=0;row<MATSIZE;row++){
		loop2: for(int col=0;col<MATSIZE;col++){
			Mat_Dtype res=0;
			loop3: for(int index=0;index<MATSIZE;index++){
				res += input_A[row][index] * input_B[index][col];
			}
			output_C[row][col] = res;
		}
	}
}
