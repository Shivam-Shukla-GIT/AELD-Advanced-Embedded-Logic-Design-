// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "gmem"
#define AUTOTB_TVIN_gmem  "../tv/cdatafile/c.matmul_MM_SP.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem  "../tv/cdatafile/c.matmul_MM_SP.autotvout_gmem.dat"
// wrapc file define: "Matrix_In"
#define AUTOTB_TVIN_Matrix_In  "../tv/cdatafile/c.matmul_MM_SP.autotvin_Matrix_In.dat"
// wrapc file define: "Matrix_C_HW"
#define AUTOTB_TVIN_Matrix_C_HW  "../tv/cdatafile/c.matmul_MM_SP.autotvin_Matrix_C_HW.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "gmem"
#define AUTOTB_TVOUT_PC_gmem  "../tv/rtldatafile/rtl.matmul_MM_SP.autotvout_gmem.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			gmem_depth = 0;
			Matrix_In_depth = 0;
			Matrix_C_HW_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{gmem " << gmem_depth << "}\n";
			total_list << "{Matrix_In " << Matrix_In_depth << "}\n";
			total_list << "{Matrix_C_HW " << Matrix_C_HW_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int gmem_depth;
		int Matrix_In_depth;
		int Matrix_C_HW_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void matmul_MM_SP (
float* Matrix_In,
float* Matrix_C_HW);

void AESL_WRAP_matmul_MM_SP (
float* Matrix_In,
float* Matrix_C_HW)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "gmem"
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // data

			sc_bv<32> *gmem_pc_buffer = new sc_bv<32>[192];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'gmem', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					gmem_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_gmem, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_gmem))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: gmem
				{
					// bitslice(31, 0)
					// {
						// celement: Matrix_In(31, 0)
						// {
							sc_lv<32>* Matrix_In_lv0_0_127_1 = new sc_lv<32>[192];
						// }
						// celement: Matrix_C_HW(31, 0)
						// {
							sc_lv<32>* Matrix_C_HW_lv0_0_63_1 = new sc_lv<32>[192];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Matrix_In(31, 0)
						{
							// carray: (0) => (127) @ (1)
							for (int i_0 = 0; i_0 <= 127; i_0 += 1)
							{
								hls_map_index++;
							}
						}
						// celement: Matrix_C_HW(31, 0)
						{
							// carray: (0) => (63) @ (1)
							for (int i_0 = 0; i_0 <= 63; i_0 += 1)
							{
								if (&(Matrix_C_HW[0]) != NULL) // check the null address if the c port is array or others
								{
									Matrix_C_HW_lv0_0_63_1[hls_map_index].range(31, 0) = sc_bv<32>(gmem_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: Matrix_In(31, 0)
						{
							// carray: (0) => (127) @ (1)
							for (int i_0 = 0; i_0 <= 127; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : Matrix_In[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Matrix_In[0]
								// output_left_conversion : *(int*)&Matrix_In[i_0]
								// output_type_conversion : (Matrix_In_lv0_0_127_1[hls_map_index]).to_uint64()
								hls_map_index++;
							}
						}
						// celement: Matrix_C_HW(31, 0)
						{
							// carray: (0) => (63) @ (1)
							for (int i_0 = 0; i_0 <= 63; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : Matrix_C_HW[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : Matrix_C_HW[0]
								// output_left_conversion : *(int*)&Matrix_C_HW[i_0]
								// output_type_conversion : (Matrix_C_HW_lv0_0_63_1[hls_map_index]).to_uint64()
								if (&(Matrix_C_HW[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&Matrix_C_HW[i_0] = (Matrix_C_HW_lv0_0_63_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] gmem_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "gmem"
		char* tvin_gmem = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_gmem);
		char* tvout_gmem = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_gmem);

		// "Matrix_In"
		char* tvin_Matrix_In = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Matrix_In);

		// "Matrix_C_HW"
		char* tvin_Matrix_C_HW = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Matrix_C_HW);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_gmem, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);

		sc_bv<32>* gmem_tvin_wrapc_buffer = new sc_bv<32>[192];

		// RTL Name: gmem
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Matrix_In(31, 0)
				{
					// carray: (0) => (127) @ (1)
					for (int i_0 = 0; i_0 <= 127; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Matrix_In[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Matrix_In[0]
						// regulate_c_name       : Matrix_In
						// input_type_conversion : *(int*)&Matrix_In[i_0]
						if (&(Matrix_In[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Matrix_In_tmp_mem;
							Matrix_In_tmp_mem = *(int*)&Matrix_In[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Matrix_In_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: Matrix_C_HW(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Matrix_C_HW[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Matrix_C_HW[0]
						// regulate_c_name       : Matrix_C_HW
						// input_type_conversion : *(int*)&Matrix_C_HW[i_0]
						if (&(Matrix_C_HW[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Matrix_C_HW_tmp_mem;
							Matrix_C_HW_tmp_mem = *(int*)&Matrix_C_HW[i_0];
							gmem_tvin_wrapc_buffer[hls_map_index].range(31, 0) = Matrix_C_HW_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 192; i++)
		{
			sprintf(tvin_gmem, "%s\n", (gmem_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);
		}

		tcl_file.set_num(192, &tcl_file.gmem_depth);
		sprintf(tvin_gmem, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_gmem, tvin_gmem);

		// release memory allocation
		delete [] gmem_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_Matrix_In, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Matrix_In, tvin_Matrix_In);

		sc_bv<32> Matrix_In_tvin_wrapc_buffer;

		// RTL Name: Matrix_In
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Matrix_In, "%s\n", (Matrix_In_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Matrix_In, tvin_Matrix_In);
		}

		tcl_file.set_num(1, &tcl_file.Matrix_In_depth);
		sprintf(tvin_Matrix_In, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Matrix_In, tvin_Matrix_In);

		// [[transaction]]
		sprintf(tvin_Matrix_C_HW, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Matrix_C_HW, tvin_Matrix_C_HW);

		sc_bv<32> Matrix_C_HW_tvin_wrapc_buffer;

		// RTL Name: Matrix_C_HW
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Matrix_C_HW, "%s\n", (Matrix_C_HW_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Matrix_C_HW, tvin_Matrix_C_HW);
		}

		tcl_file.set_num(1, &tcl_file.Matrix_C_HW_depth);
		sprintf(tvin_Matrix_C_HW, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Matrix_C_HW, tvin_Matrix_C_HW);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		matmul_MM_SP(Matrix_In, Matrix_C_HW);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_gmem, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);

		sc_bv<32>* gmem_tvout_wrapc_buffer = new sc_bv<32>[192];

		// RTL Name: gmem
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: Matrix_In(31, 0)
				{
					// carray: (0) => (127) @ (1)
					for (int i_0 = 0; i_0 <= 127; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Matrix_In[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Matrix_In[0]
						// regulate_c_name       : Matrix_In
						// input_type_conversion : *(int*)&Matrix_In[i_0]
						if (&(Matrix_In[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Matrix_In_tmp_mem;
							Matrix_In_tmp_mem = *(int*)&Matrix_In[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Matrix_In_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
				// celement: Matrix_C_HW(31, 0)
				{
					// carray: (0) => (63) @ (1)
					for (int i_0 = 0; i_0 <= 63; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : Matrix_C_HW[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : Matrix_C_HW[0]
						// regulate_c_name       : Matrix_C_HW
						// input_type_conversion : *(int*)&Matrix_C_HW[i_0]
						if (&(Matrix_C_HW[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> Matrix_C_HW_tmp_mem;
							Matrix_C_HW_tmp_mem = *(int*)&Matrix_C_HW[i_0];
							gmem_tvout_wrapc_buffer[hls_map_index].range(31, 0) = Matrix_C_HW_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 192; i++)
		{
			sprintf(tvout_gmem, "%s\n", (gmem_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);
		}

		tcl_file.set_num(192, &tcl_file.gmem_depth);
		sprintf(tvout_gmem, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_gmem, tvout_gmem);

		// release memory allocation
		delete [] gmem_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "gmem"
		delete [] tvin_gmem;
		delete [] tvout_gmem;
		// release memory allocation: "Matrix_In"
		delete [] tvin_Matrix_In;
		// release memory allocation: "Matrix_C_HW"
		delete [] tvin_Matrix_C_HW;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

