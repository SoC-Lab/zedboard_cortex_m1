connect -url tcp:127.0.0.1:3121
source /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration_pr/m1_for_arty_a7.sdk/glue_top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248686057"} -index 0
loadhw -hw /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration_pr/m1_for_arty_a7.sdk/glue_top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248686057"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248686057"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248686057"} -index 0
dow /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration_pr/m1_for_arty_a7.sdk/TestApp/Debug/TestApp.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248686057"} -index 0
con
