#include "demo_find.h"
#include <stdio.h>

void demo_find(char val, hls::stream<axis_data> &in_vec, hls::stream<axis_data> &out_vec);
void demo_find_benchmark(char val, int in_vec[dim], int out_vec[dim]);

int main()
{
	int input_vec[dim], output_vec_hw[dim],output_vec_bm[dim];
	// Generate data inputs
	for (int i=0; i<dim;i++)
		input_vec[i]= i+1;
	// Call the software/benchmark function
		demo_find_benchmark(4,input_vec,output_vec_bm);
		hls::stream<axis_data> in_vec,out_vec;
		axis_data local_read,local_write;
	// Call the hardware function
	for(int i=0;i<dim;i++)
	{
		local_read.data = input_vec[i];
		if(i==dim-1)
			local_read.last =1;
		else
			local_read.last=0;
		in_vec.write(local_read);
	}
	demo_find(4,in_vec,out_vec);

	// Compare the outputs of benchmark and hardware function
	for (int i=0; i<dim;i++)
	{
		local_write = out_vec.read();
		if(local_write.data!=output_vec_bm[i])
		{
			printf("Error at index %d\n",i);
			return 1;
		}
	}
	printf("No Error!\n");
	return 0;
}

void demo_find_benchmark(char val, int in_vec[dim], int out_vec[dim])
{
	for (int i=0;i<dim;i++)
	{
		if(in_vec[i]==val)
			out_vec[i]=1;
		else
			out_vec[i]=0;
	}
}
