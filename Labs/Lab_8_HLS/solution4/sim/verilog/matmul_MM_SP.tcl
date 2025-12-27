
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set Matrix_In__Matrix_C_HW_group [add_wave_group Matrix_In__Matrix_C_HW(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $Matrix_In__Matrix_C_HW_group]
set wdata_group [add_wave_group "Write Channel" -into $Matrix_In__Matrix_C_HW_group]
set ctrl_group [add_wave_group "Handshakes" -into $Matrix_In__Matrix_C_HW_group]
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_BID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RID -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/m_axi_gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set Matrix_In__Matrix_C_HW__return_group [add_wave_group Matrix_In__Matrix_C_HW__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/interrupt -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_BRESP -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_BREADY -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_BVALID -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_RRESP -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_RDATA -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_RREADY -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_RVALID -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_ARREADY -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_ARVALID -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_ARADDR -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_WSTRB -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_WDATA -into $Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_WREADY -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_WVALID -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_AWREADY -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_AWVALID -into $Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/s_axi_AXILiteS_AWADDR -into $Matrix_In__Matrix_C_HW__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_done -into $blocksiggroup
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_idle -into $blocksiggroup
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_ready -into $blocksiggroup
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_matmul_MM_SP_top/AESL_inst_matmul_MM_SP/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_matmul_MM_SP_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_matmul_MM_SP_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matmul_MM_SP_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matmul_MM_SP_top/LENGTH_gmem -into $tb_portdepth_group -radix hex
add_wave /apatb_matmul_MM_SP_top/LENGTH_Matrix_In -into $tb_portdepth_group -radix hex
add_wave /apatb_matmul_MM_SP_top/LENGTH_Matrix_C_HW -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_Matrix_In__Matrix_C_HW_group [add_wave_group Matrix_In__Matrix_C_HW(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_Matrix_In__Matrix_C_HW_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_Matrix_In__Matrix_C_HW_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_Matrix_In__Matrix_C_HW_group]
add_wave /apatb_matmul_MM_SP_top/gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_BID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RID -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_Matrix_In__Matrix_C_HW__return_group [add_wave_group Matrix_In__Matrix_C_HW__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_matmul_MM_SP_top/AXILiteS_INTERRUPT -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_BRESP -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_BREADY -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_BVALID -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_RRESP -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_RDATA -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_RREADY -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_RVALID -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_ARREADY -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_ARVALID -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_ARADDR -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_WSTRB -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_WDATA -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_WREADY -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_WVALID -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_AWREADY -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_AWVALID -into $tb_Matrix_In__Matrix_C_HW__return_group -color #ffff00 -radix hex
add_wave /apatb_matmul_MM_SP_top/AXILiteS_AWADDR -into $tb_Matrix_In__Matrix_C_HW__return_group -radix hex
save_wave_config matmul_MM_SP.wcfg
run all
quit

