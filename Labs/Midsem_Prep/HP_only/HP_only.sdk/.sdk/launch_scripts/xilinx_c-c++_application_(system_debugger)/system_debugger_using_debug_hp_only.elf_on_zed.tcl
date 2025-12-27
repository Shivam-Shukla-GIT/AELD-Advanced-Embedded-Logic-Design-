#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.226.142:61194]
set bp_9_55_0 [bpadd -target-id all -ct-input {0} -ct-output {24 25 26 27}]
set bp_9_55_1 [bpadd -target-id all -ct-input {24 25 26 27} -ct-output {0}]
source D:/Sem_6/AELD/Labs/Midsem_Prep/HP_only/HP_only.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722679"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248722679" && level==0} -index 1
fpga -file D:/Sem_6/AELD/Labs/Midsem_Prep/HP_only/HP_only.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722679"} -index 0
loadhw -hw D:/Sem_6/AELD/Labs/Midsem_Prep/HP_only/HP_only.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722679"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248722679"} -index 0
dow D:/Sem_6/AELD/Labs/Midsem_Prep/HP_only/HP_only.sdk/HP_only/Debug/HP_only.elf
configparams force-mem-access 0
bpadd -addr &main
