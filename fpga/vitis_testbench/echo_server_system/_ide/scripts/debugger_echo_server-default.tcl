# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Bruker\Documents\Bachelor_Elektro_ingenior_med_auto\fpga\vitis_testbench\echo_server_system\_ide\scripts\debugger_echo_server-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Bruker\Documents\Bachelor_Elektro_ingenior_med_auto\fpga\vitis_testbench\echo_server_system\_ide\scripts\debugger_echo_server-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-35T 210319B57FF6A" && level==0 && jtag_device_ctx=="jsn-Arty A7-35T-210319B57FF6A-0362d093-0"}
fpga -file C:/Users/Bruker/Documents/Bachelor_Elektro_ingenior_med_auto/fpga/vitis_testbench/echo_server/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/Bruker/Documents/Bachelor_Elektro_ingenior_med_auto/fpga/vitis_testbench/ARTY_UDP/export/ARTY_UDP/hw/design_1_wrapper_hardware.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/Bruker/Documents/Bachelor_Elektro_ingenior_med_auto/fpga/vitis_testbench/echo_server/Debug/echo_server.elf
bpadd -addr &main