vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/gigantic_mux
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/lib_fifo_v1_0_13
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_21
vlib activehdl/axi_sg_v4_1_12
vlib activehdl/axi_dma_v7_1_20
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/axi_protocol_converter_v2_1_19
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/fir_compiler_v7_2_12
vlib activehdl/xlslice_v1_0_2

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap gigantic_mux activehdl/gigantic_mux
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 activehdl/lib_fifo_v1_0_13
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_21 activehdl/axi_datamover_v5_1_21
vmap axi_sg_v4_1_12 activehdl/axi_sg_v4_1_12
vmap axi_dma_v7_1_20 activehdl/axi_dma_v7_1_20
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap fir_compiler_v7_2_12 activehdl/fir_compiler_v7_2_12
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_2/sim/design_1_processing_system7_0_2.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_0/sim/bd_f88d_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_1/bd_f88d_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_1/sim/bd_f88d_g_inst_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_2/sim/bd_f88d_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_3/sim/bd_f88d_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_4/sim/bd_f88d_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_5/sim/bd_f88d_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_6/sim/bd_f88d_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_7/sim/bd_f88d_slot_1_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_8/sim/bd_f88d_slot_1_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_9/sim/bd_f88d_slot_1_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_10/sim/bd_f88d_slot_1_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/ip/ip_11/sim/bd_f88d_slot_1_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/bd_0/sim/bd_f88d.v" \
"../../../bd/design_1/ip/design_1_system_ila_1/sim/design_1_system_ila_1.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_12 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_20 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_2/sim/design_1_axi_dma_0_2.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_0/sim/bd_6e42_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_1/sim/bd_6e42_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_2/sim/bd_6e42_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_3/sim/bd_6e42_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_4/sim/bd_6e42_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_5/sim/bd_6e42_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_6/sim/bd_6e42_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_7/sim/bd_6e42_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_8/sim/bd_6e42_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_9/sim/bd_6e42_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_10/sim/bd_6e42_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_11/sim/bd_6e42_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_12/sim/bd_6e42_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_13/sim/bd_6e42_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_14/sim/bd_6e42_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_15/sim/bd_6e42_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_16/sim/bd_6e42_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_17/sim/bd_6e42_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_18/sim/bd_6e42_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_19/sim/bd_6e42_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_20/sim/bd_6e42_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_21/sim/bd_6e42_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_22/sim/bd_6e42_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_23/sim/bd_6e42_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_24/sim/bd_6e42_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_25/sim/bd_6e42_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_26/sim/bd_6e42_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/sim/bd_6e42.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2/sim/design_1_axi_smc_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_12 -93 \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/c2da/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_fir_compiler_0_2/sim/design_1_fir_compiler_0_2.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_2" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../ACP_only.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

