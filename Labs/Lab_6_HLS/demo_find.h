#include <hls_stream.h>
#define dim 32
#include <ap_int.h>
struct axis_data{
	ap_uint<32> data;
	ap_uint<1> last;
};
