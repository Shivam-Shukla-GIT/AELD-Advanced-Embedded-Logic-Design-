connect -url tcp:127.0.0.1:3121
source D:/Sem_6/AELD/Labs/Lab_3/Lab_3.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685248"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248685248" && level==0} -index 1
fpga -file D:/Sem_6/AELD/Labs/Lab_3/Lab_3.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685248"} -index 0
loadhw -hw D:/Sem_6/AELD/Labs/Lab_3/Lab_3.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248685248"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248685248"} -index 0
dow D:/Sem_6/AELD/Labs/Lab_3/Lab_3.sdk/Lab_4/Debug/Lab_4.elf
configparams force-mem-access 0
bpadd -addr &main
