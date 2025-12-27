// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr  7 22:21:36 2025
// Host        : Shivam-Shukla running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_matrixmul_2_0_0_stub.v
// Design      : design_1_matrixmul_2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "matrixmul_2,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in_A_TVALID, in_A_TREADY, 
  in_A_TDATA, in_A_TLAST, out_C_TVALID, out_C_TREADY, out_C_TDATA, out_C_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in_A_TVALID,in_A_TREADY,in_A_TDATA[31:0],in_A_TLAST[0:0],out_C_TVALID,out_C_TREADY,out_C_TDATA[31:0],out_C_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in_A_TVALID;
  output in_A_TREADY;
  input [31:0]in_A_TDATA;
  input [0:0]in_A_TLAST;
  output out_C_TVALID;
  input out_C_TREADY;
  output [31:0]out_C_TDATA;
  output [0:0]out_C_TLAST;
endmodule
