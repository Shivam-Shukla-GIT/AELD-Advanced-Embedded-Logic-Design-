############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Lab_8_HLS
set_top matmul_MM_SP
add_files Lab_7_MM_HLS/matrixmul.h
add_files Lab_7_MM_HLS/matrixmul.cpp
add_files -tb Lab_7_MM_HLS/matrixmul_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 1.1.0
#source "./Lab_8_HLS/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog -version "1.1.0"
