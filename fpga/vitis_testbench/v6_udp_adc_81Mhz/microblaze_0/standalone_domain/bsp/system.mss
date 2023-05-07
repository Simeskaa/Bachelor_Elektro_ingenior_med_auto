
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 8.0
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER stdin = axi_uartlite_0
 PARAMETER stdout = axi_uartlite_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.16
 PARAMETER HW_INSTANCE = microblaze_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = emaclite
 PARAMETER DRIVER_VER = 4.7
 PARAMETER HW_INSTANCE = axi_ethernetlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.9
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.15
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.8
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.8
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = mig_7series_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmon
 PARAMETER DRIVER_VER = 7.7
 PARAMETER HW_INSTANCE = xadc_wiz_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip211
 PARAMETER LIBRARY_VER = 1.8
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER phy_link_speed = CONFIG_LINKSPEED100
END

