create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "D:/Sem_6/AELD/Labs/Lab_8_HLS/solution4/syn/verilog/matmul_MM_SP_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matmul_MM_SP_ap_fadd_3_full_dsp_32]]
}
source "D:/Sem_6/AELD/Labs/Lab_8_HLS/solution4/syn/verilog/matmul_MM_SP_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matmul_MM_SP_ap_fmul_2_max_dsp_32]]
}
