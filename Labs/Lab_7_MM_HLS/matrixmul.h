#include <stdio.h>
#include <stdlib.h>
//  For stream interface
#include <hls_stream.h>
#define MATSIZE 8
#include <ap_int.h>
#include <string.h>
#include <math.h>
//#define solution2
//#define solution3
#define solution4

#ifdef solution2
typedef float Mat_Dtype;
#endif

#ifdef solution3
typedef float Mat_Dtype;
#endif

#ifdef solution4
typedef float Mat_Dtype;
#endif

struct axis_data{
	Mat_Dtype data;
	ap_uint<1> last;
};

void matrixmul_2(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matrixmul_3(hls::stream<axis_data> &in_A, hls::stream<axis_data> &out_C);
void matmul_MM_SP(Mat_Dtype *Matrix_In, Mat_Dtype *Matrix_C_HW);
