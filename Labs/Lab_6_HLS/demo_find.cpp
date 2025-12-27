#include "demo_find.h"
void demo_find(char val, hls::stream<axis_data> &in_vec, hls::stream<axis_data> &out_vec)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis register both port=out_vec
#pragma HLS INTERFACE axis register both port=in_vec
#pragma HLS INTERFACE axis register both port=val
	axis_data local_read, local_write;
	for (int i=0;i<dim;i++)
	{
		local_read = in_vec.read();
		if(local_read.data==val)
			local_write.data=1;
		else
			local_write.data=0;
		if(i==dim-1)
			local_write.last=1;
		else
			local_write.last=0;
		out_vec.write(local_write);
	}
}
