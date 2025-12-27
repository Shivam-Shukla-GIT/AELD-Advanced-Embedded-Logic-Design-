
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_vec_group [add_wave_group out_vec(axis) -into $coutputgroup]
add_wave /apatb_demo_find_top/AESL_inst_demo_find/out_vec_TLAST -into $out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/out_vec_TREADY -into $out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/out_vec_TVALID -into $out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/out_vec_TDATA -into $out_vec_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_vec_group [add_wave_group in_vec(axis) -into $cinputgroup]
add_wave /apatb_demo_find_top/AESL_inst_demo_find/in_vec_TLAST -into $in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/in_vec_TREADY -into $in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/in_vec_TVALID -into $in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/in_vec_TDATA -into $in_vec_group -radix hex
set val_group [add_wave_group val(axis) -into $cinputgroup]
add_wave /apatb_demo_find_top/AESL_inst_demo_find/val_r_TREADY -into $val_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/val_r_TVALID -into $val_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/AESL_inst_demo_find/val_r_TDATA -into $val_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_demo_find_top/AESL_inst_demo_find/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_demo_find_top/AESL_inst_demo_find/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_demo_find_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ap_c_n_tvin_trans_num_val_r -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ap_c_n_tvin_trans_num_in_vec_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ap_c_n_tvin_trans_num_in_vec_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ap_c_n_tvout_trans_num_out_vec_V_data_V -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/ap_c_n_tvout_trans_num_out_vec_V_last_V -into $tb_simstatus_group -radix hex
add_wave /apatb_demo_find_top/LENGTH_val_r -into $tb_portdepth_group -radix hex
add_wave /apatb_demo_find_top/LENGTH_in_vec_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_demo_find_top/LENGTH_in_vec_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_demo_find_top/LENGTH_out_vec_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_demo_find_top/LENGTH_out_vec_V_last_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_vec_group [add_wave_group out_vec(axis) -into $tbcoutputgroup]
add_wave /apatb_demo_find_top/out_vec_TLAST -into $tb_out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/out_vec_TREADY -into $tb_out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/out_vec_TVALID -into $tb_out_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/out_vec_TDATA -into $tb_out_vec_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_vec_group [add_wave_group in_vec(axis) -into $tbcinputgroup]
add_wave /apatb_demo_find_top/in_vec_TLAST -into $tb_in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/in_vec_TREADY -into $tb_in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/in_vec_TVALID -into $tb_in_vec_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/in_vec_TDATA -into $tb_in_vec_group -radix hex
set tb_val_group [add_wave_group val(axis) -into $tbcinputgroup]
add_wave /apatb_demo_find_top/val_r_TREADY -into $tb_val_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/val_r_TVALID -into $tb_val_group -color #ffff00 -radix hex
add_wave /apatb_demo_find_top/val_r_TDATA -into $tb_val_group -radix hex
save_wave_config demo_find.wcfg
run all
quit

