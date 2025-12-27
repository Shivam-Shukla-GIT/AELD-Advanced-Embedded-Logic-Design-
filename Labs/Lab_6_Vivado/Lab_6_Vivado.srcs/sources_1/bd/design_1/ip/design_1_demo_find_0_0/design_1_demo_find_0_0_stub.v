// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 25 15:01:39 2025
// Host        : Shivam-Shukla running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Sem_6/AELD/Labs/Lab_6_Vivado/Lab_6_Vivado.srcs/sources_1/bd/design_1/ip/design_1_demo_find_0_0/design_1_demo_find_0_0_stub.v
// Design      : design_1_demo_find_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "demo_find,Vivado 2019.1" *)
module design_1_demo_find_0_0(ap_clk, ap_rst_n, val_r_TVALID, val_r_TREADY, 
  val_r_TDATA, in_vec_TVALID, in_vec_TREADY, in_vec_TDATA, in_vec_TLAST, out_vec_TVALID, 
  out_vec_TREADY, out_vec_TDATA, out_vec_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,val_r_TVALID,val_r_TREADY,val_r_TDATA[7:0],in_vec_TVALID,in_vec_TREADY,in_vec_TDATA[31:0],in_vec_TLAST[0:0],out_vec_TVALID,out_vec_TREADY,out_vec_TDATA[31:0],out_vec_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input val_r_TVALID;
  output val_r_TREADY;
  input [7:0]val_r_TDATA;
  input in_vec_TVALID;
  output in_vec_TREADY;
  input [31:0]in_vec_TDATA;
  input [0:0]in_vec_TLAST;
  output out_vec_TVALID;
  input out_vec_TREADY;
  output [31:0]out_vec_TDATA;
  output [0:0]out_vec_TLAST;
endmodule
