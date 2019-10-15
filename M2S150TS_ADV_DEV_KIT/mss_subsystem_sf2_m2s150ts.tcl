# Creating SmartDesign MSS_SUBSYSTEM_sb
set sd_name {MSS_SUBSYSTEM_sb}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CAS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CLK_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CKE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_CS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_ODT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RAS_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_WE_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DQS_TMATCH_0_IN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {POWER_ON_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FAB_RESET_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CLK0_PAD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DDR_FIC_SUBSYSTEM_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DDR_FIC_SUBSYSTEM_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DDR_READY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVRST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_READY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HMASTLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HREADYOUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HRESP} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HMASTLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HREADYOUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HRESP} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HWRITE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HRESP} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HWRITE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HRESP} -port_direction {IN}

sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_ADDR} -port_direction {OUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_BA} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DM_RDQS} -port_direction {INOUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQ} -port_direction {INOUT} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQS} -port_direction {INOUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DQS_N} -port_direction {INOUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M} -port_direction {IN} -port_range {[15:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HTRANS} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HSIZE} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HBURST} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MDDR_DDR_AHB0_S_HRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HTRANS} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HSIZE} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_S_HRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HTRANS} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HSIZE} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HWDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AHB_M_HRDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HTRANS} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HSIZE} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HWDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AHB_M_HRDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bif_port -sd_name ${sd_name} -port_name {MDDR_DDR_AMBA_SLAVE} -port_bif_vlnv {AMBA:AMBA2:AHB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"HADDR:MDDR_DDR_AHB0_S_HADDR" \
"HTRANS:MDDR_DDR_AHB0_S_HTRANS" \
"HWRITE:MDDR_DDR_AHB0_S_HWRITE" \
"HSIZE:MDDR_DDR_AHB0_S_HSIZE" \
"HBURST:MDDR_DDR_AHB0_S_HBURST" \
"HWDATA:MDDR_DDR_AHB0_S_HWDATA" \
"HSELx:MDDR_DDR_AHB0_S_HSEL" \
"HMASTLOCK:MDDR_DDR_AHB0_S_HMASTLOCK" \
"HRDATA:MDDR_DDR_AHB0_S_HRDATA" \
"HREADY:MDDR_DDR_AHB0_S_HREADY" \
"HREADYOUT:MDDR_DDR_AHB0_S_HREADYOUT" \
"HRESP:MDDR_DDR_AHB0_S_HRESP" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AMBA_SLAVE} -port_bif_vlnv {AMBA:AMBA2:AHB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"HADDR:FIC_0_AHB_S_HADDR" \
"HTRANS:FIC_0_AHB_S_HTRANS" \
"HWRITE:FIC_0_AHB_S_HWRITE" \
"HSIZE:FIC_0_AHB_S_HSIZE" \
"HWDATA:FIC_0_AHB_S_HWDATA" \
"HSELx:FIC_0_AHB_S_HSEL" \
"HMASTLOCK:FIC_0_AHB_S_HMASTLOCK" \
"HRDATA:FIC_0_AHB_S_HRDATA" \
"HREADY:FIC_0_AHB_S_HREADY" \
"HREADYOUT:FIC_0_AHB_S_HREADYOUT" \
"HRESP:FIC_0_AHB_S_HRESP" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AMBA_MASTER} -port_bif_vlnv {AMBA:AMBA2:AHB:r0p0} -port_bif_role {master} -port_bif_mapping {\
"HADDR:FIC_0_AHB_M_HADDR" \
"HTRANS:FIC_0_AHB_M_HTRANS" \
"HWRITE:FIC_0_AHB_M_HWRITE" \
"HSIZE:FIC_0_AHB_M_HSIZE" \
"HWDATA:FIC_0_AHB_M_HWDATA" \
"HRDATA:FIC_0_AHB_M_HRDATA" \
"HREADY:FIC_0_AHB_M_HREADY" \
"HRESP:FIC_0_AHB_M_HRESP" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_1_AMBA_MASTER} -port_bif_vlnv {AMBA:AMBA2:AHB:r0p0} -port_bif_role {master} -port_bif_mapping {\
"HADDR:FIC_1_AHB_M_HADDR" \
"HTRANS:FIC_1_AHB_M_HTRANS" \
"HWRITE:FIC_1_AHB_M_HWRITE" \
"HSIZE:FIC_1_AHB_M_HSIZE" \
"HWDATA:FIC_1_AHB_M_HWDATA" \
"HRDATA:FIC_1_AHB_M_HRDATA" \
"HREADY:FIC_1_AHB_M_HREADY" \
"HRESP:FIC_1_AHB_M_HRESP" } 

# Add CCC_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:SgCore:FCCC:2.0.201} -instance_name {CCC_0}
# Exporting Parameters of instance CCC_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CCC_0} -params {\
"ADVANCED_TAB_CHANGED:false" \
"CLK0_IS_USED:false" \
"CLK0_PAD_IS_USED:true" \
"CLK1_IS_USED:false" \
"CLK1_PAD_IS_USED:false" \
"CLK2_IS_USED:false" \
"CLK2_PAD_IS_USED:false" \
"CLK3_IS_USED:false" \
"CLK3_PAD_IS_USED:false" \
"DYN_CONF_IS_USED:false" \
"FAMILY:19" \
"GL0_BP_IN_0_FREQ:100" \
"GL0_BP_IN_0_SRC:IO_HARDWIRED_0" \
"GL0_BP_IN_1_FREQ:100" \
"GL0_BP_IN_1_SRC:IO_HARDWIRED_0" \
"GL0_FREQUENCY_LOCKED:true" \
"GL0_IN_0_SRC:PLL" \
"GL0_IN_1_SRC:UNUSED" \
"GL0_IS_INVERTED:false" \
"GL0_IS_USED:true" \
"GL0_OUT_0_FREQ:50" \
"GL0_OUT_1_FREQ:50" \
"GL0_OUT_IS_GATED:false" \
"GL0_PLL_IN_0_PHASE:0" \
"GL0_PLL_IN_1_PHASE:0" \
"GL1_BP_IN_0_FREQ:100" \
"GL1_BP_IN_0_SRC:IO_HARDWIRED_0" \
"GL1_BP_IN_1_FREQ:100" \
"GL1_BP_IN_1_SRC:IO_HARDWIRED_0" \
"GL1_FREQUENCY_LOCKED:true" \
"GL1_IN_0_SRC:PLL" \
"GL1_IN_1_SRC:UNUSED" \
"GL1_IS_INVERTED:false" \
"GL1_IS_USED:true" \
"GL1_OUT_0_FREQ:50" \
"GL1_OUT_1_FREQ:50" \
"GL1_OUT_IS_GATED:false" \
"GL1_PLL_IN_0_PHASE:0" \
"GL1_PLL_IN_1_PHASE:0" \
"GL2_BP_IN_0_FREQ:100" \
"GL2_BP_IN_0_SRC:IO_HARDWIRED_0" \
"GL2_BP_IN_1_FREQ:100" \
"GL2_BP_IN_1_SRC:IO_HARDWIRED_0" \
"GL2_FREQUENCY_LOCKED:true" \
"GL2_IN_0_SRC:PLL" \
"GL2_IN_1_SRC:UNUSED" \
"GL2_IS_INVERTED:false" \
"GL2_IS_USED:true" \
"GL2_OUT_0_FREQ:50" \
"GL2_OUT_1_FREQ:50" \
"GL2_OUT_IS_GATED:false" \
"GL2_PLL_IN_0_PHASE:0" \
"GL2_PLL_IN_1_PHASE:0" \
"GL3_BP_IN_0_FREQ:100" \
"GL3_BP_IN_0_SRC:IO_HARDWIRED_0" \
"GL3_BP_IN_1_FREQ:100" \
"GL3_BP_IN_1_SRC:IO_HARDWIRED_0" \
"GL3_FREQUENCY_LOCKED:false" \
"GL3_IN_0_SRC:PLL" \
"GL3_IN_1_SRC:UNUSED" \
"GL3_IS_INVERTED:false" \
"GL3_IS_USED:false" \
"GL3_OUT_0_FREQ:100" \
"GL3_OUT_1_FREQ:50" \
"GL3_OUT_IS_GATED:false" \
"GL3_PLL_IN_0_PHASE:0" \
"GL3_PLL_IN_1_PHASE:0" \
"GPD0_IS_USED:false" \
"GPD0_NOPIPE_RSTSYNC:true" \
"GPD0_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" \
"GPD1_IS_USED:false" \
"GPD1_NOPIPE_RSTSYNC:true" \
"GPD1_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" \
"GPD2_IS_USED:false" \
"GPD2_NOPIPE_RSTSYNC:true" \
"GPD2_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" \
"GPD3_IS_USED:false" \
"GPD3_NOPIPE_RSTSYNC:true" \
"GPD3_SYNC_STYLE:G3STYLE_AND_NO_LOCK_RSTSYNC" \
"GPD_EXPOSE_RESETS:false" \
"GPD_SYNC_STYLE:G3STYLE_AND_LOCK_RSTSYNC" \
"INIT:0000007F88000044D74000318C1F07C1F18C61C00404040405231" \
"IO_HARDWIRED_0_IS_DIFF:false" \
"IO_HARDWIRED_1_IS_DIFF:false" \
"IO_HARDWIRED_2_IS_DIFF:false" \
"IO_HARDWIRED_3_IS_DIFF:false" \
"MODE_10V:false" \
"NGMUX0_HOLD_IS_USED:false" \
"NGMUX0_IS_USED:false" \
"NGMUX1_HOLD_IS_USED:false" \
"NGMUX1_IS_USED:false" \
"NGMUX2_HOLD_IS_USED:false" \
"NGMUX2_IS_USED:false" \
"NGMUX3_HOLD_IS_USED:false" \
"NGMUX3_IS_USED:false" \
"NGMUX_EXPOSE_HOLD:false" \
"PLL_DELAY:0" \
"PLL_EXPOSE_BYPASS:false" \
"PLL_EXPOSE_RESETS:false" \
"PLL_EXT_FB_GL:EXT_FB_GL0" \
"PLL_FB_SRC:CCC_INTERNAL" \
"PLL_IN_FREQ:50" \
"PLL_IN_SRC:IO_HARDWIRED_0" \
"PLL_IS_USED:true" \
"PLL_LOCK_IND:1024" \
"PLL_LOCK_WND:32000" \
"PLL_SSM_DEPTH:0.5" \
"PLL_SSM_ENABLE:false" \
"PLL_SSM_FREQ:40" \
"PLL_SUPPLY_VOLTAGE:25_V" \
"PLL_VCO_TARGET:700" \
"RCOSC_1MHZ_IS_USED:false" \
"RCOSC_25_50MHZ_IS_USED:false" \
"SD_EXPORT_HIDDEN_PORTS:false" \
"VCOFREQUENCY:664.000" \
"XTLOSC_IS_USED:false" \
"Y0_IS_USED:false" \
"Y1_IS_USED:false" \
"Y2_IS_USED:false" \
"Y3_IS_USED:false" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CCC_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CCC_0:PLL_ARST_N} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CCC_0:PLL_POWERDOWN_N} -value {VCC}



# Add CORECONFIGP_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreConfigP:7.1.100} -instance_name {CORECONFIGP_0}
# Exporting Parameters of instance CORECONFIGP_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CORECONFIGP_0} -params {\
"DEVICE_090:0" \
"ENABLE_SOFT_RESETS:true" \
"FDDR_IN_USE:false" \
"MDDR_IN_USE:true" \
"SDIF0_IN_USE:false" \
"SDIF0_PCIE:false" \
"SDIF1_IN_USE:false" \
"SDIF1_PCIE:false" \
"SDIF2_IN_USE:false" \
"SDIF2_PCIE:false" \
"SDIF3_IN_USE:false" \
"SDIF3_PCIE:false" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CORECONFIGP_0}



# Add CORERESETP_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:DirectCore:CoreResetP:7.1.100} -instance_name {CORERESETP_0}
# Exporting Parameters of instance CORERESETP_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CORERESETP_0} -params {\
"DDR_WAIT:200" \
"DEVICE_090:0" \
"DEVICE_VOLTAGE:2" \
"ENABLE_SOFT_RESETS:true" \
"EXT_RESET_CFG:0" \
"FDDR_IN_USE:false" \
"MDDR_IN_USE:true" \
"SDIF0_IN_USE:false" \
"SDIF0_PCIE:false" \
"SDIF0_PCIE_HOTRESET:true" \
"SDIF0_PCIE_L2P2:true" \
"SDIF1_IN_USE:false" \
"SDIF1_PCIE:false" \
"SDIF1_PCIE_HOTRESET:true" \
"SDIF1_PCIE_L2P2:true" \
"SDIF2_IN_USE:false" \
"SDIF2_PCIE:false" \
"SDIF2_PCIE_HOTRESET:true" \
"SDIF2_PCIE_L2P2:true" \
"SDIF3_IN_USE:false" \
"SDIF3_PCIE:false" \
"SDIF3_PCIE_HOTRESET:true" \
"SDIF3_PCIE_L2P2:true" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CORERESETP_0}



# Add FABOSC_0 instance
sd_instantiate_core -sd_name ${sd_name} -core_vlnv {Actel:SgCore:OSC:2.0.101} -instance_name {FABOSC_0}
# Exporting Parameters of instance FABOSC_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {FABOSC_0} -params {\
"FAMILY:19" \
"PARAM_IS_FALSE:false" \
"RCOSC_1MHZ_DRIVES_CCC:0" \
"RCOSC_1MHZ_DRIVES_FAB:0" \
"RCOSC_1MHZ_IS_USED:0" \
"RCOSC_25_50MHZ_DRIVES_CCC:0" \
"RCOSC_25_50MHZ_DRIVES_FAB:1" \
"RCOSC_25_50MHZ_IS_USED:1" \
"VOLTAGE_IS_1_2:true" \
"XTLOSC_DRIVES_CCC:0" \
"XTLOSC_DRIVES_FAB:0" \
"XTLOSC_FREQ:0.0" \
"XTLOSC_IS_USED:0" \
"XTLOSC_SRC:CRYSTAL" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {FABOSC_0}



# Add MSS_SUBSYSTEM_sb_MSS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_SUBSYSTEM_sb_MSS} -instance_name {MSS_SUBSYSTEM_sb_MSS_0}
#sd_create_pin_group -sd_name ${sd_name} -group_name {MDDR_PADS} -instance_name {MSS_SUBSYSTEM_sb_MSS_0} -pin_names {"MDDR_DQS_TMATCH_0_OUT" "MDDR_CAS_N" "MDDR_CLK" "MDDR_CLK_N" "MDDR_CKE" "MDDR_CS_N" "MDDR_ODT" "MDDR_RAS_N" "MDDR_RESET_N" "MDDR_WE_N" "MDDR_ADDR" "MDDR_BA" "MDDR_DM_RDQS" "MDDR_DQ" "MDDR_DQS" "MDDR_DQS_N" "MDDR_DQS_TMATCH_0_IN" }



# Add SYSRESET_POR instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {SYSRESET} -instance_name {SYSRESET_POR}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK0_PAD" "CCC_0:CLK0_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:APB_S_PCLK" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_APB_S_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:APB_S_PRESET_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_APB_S_PRESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:CONFIG1_DONE" "CORERESETP_0:CONFIG1_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:CONFIG2_DONE" "CORERESETP_0:CONFIG2_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:SOFT_EXT_RESET_OUT" "CORERESETP_0:SOFT_EXT_RESET_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:SOFT_M3_RESET" "CORERESETP_0:SOFT_M3_RESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:SOFT_MDDR_DDR_AXI_S_CORE_RESET" "CORERESETP_0:SOFT_MDDR_DDR_AXI_S_CORE_RESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:SOFT_RESET_F2M" "CORERESETP_0:SOFT_RESET_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_SUBSYSTEM_sb_MSS_0:M3_RESET_N" "CORERESETP_0:M3_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_SUBSYSTEM_sb_MSS_0:MDDR_DDR_CORE_RESET_N" "CORERESETP_0:MDDR_DDR_AXI_S_CORE_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_SUBSYSTEM_sb_MSS_0:MSS_RESET_N_F2M" "CORERESETP_0:RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DDR_READY" "CORERESETP_0:DDR_READY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DEVRST_N" "SYSRESET_POR:DEVRST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FAB_RESET_N" "CORERESETP_0:FAB_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABOSC_0:RCOSC_25_50MHZ_O2F" "CORERESETP_0:RCOSC_25_50MHZ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_CLK" "CCC_0:GL0" "MSS_SUBSYSTEM_sb_MSS_0:MCCC_CLK_BASE" "CORERESETP_0:CLK_BASE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_CLK" "CCC_0:GL1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_DONE" "CORECONFIGP_0:INIT_DONE" "CORERESETP_0:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CAS_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CKE" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CLK_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_CLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_CS_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_CS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_IN" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DQS_TMATCH_0_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_TMATCH_0_OUT" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DQS_TMATCH_0_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ODT" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RAS_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_RESET_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_WE_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_DDR_FIC_SUBSYSTEM_CLK" "CCC_0:GL2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_DDR_FIC_SUBSYSTEM_LOCK" "FIC_0_LOCK" "FIC_1_LOCK" "CCC_0:LOCK" "MSS_SUBSYSTEM_sb_MSS_0:MCCC_CLK_BASE_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_READY" "CORERESETP_0:MSS_HPMS_READY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:FIC_2_APB_M_PCLK" "MSS_SUBSYSTEM_sb_MSS_0:FIC_2_APB_M_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:FIC_2_APB_M_PRESET_N" "MSS_SUBSYSTEM_sb_MSS_0:FIC_2_APB_M_PRESET_N" "CORERESETP_0:FIC_2_APB_M_PRESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_SUBSYSTEM_sb_MSS_0:MSS_RESET_N_M2F" "CORERESETP_0:RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"POWER_ON_RESET_N" "CORERESETP_0:POWER_ON_RESET_N" "SYSRESET_POR:POWER_ON_RESET_N" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_ADDR" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_ADDR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_BA" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DM_RDQS" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DM_RDQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQ" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DQS_N" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M" "MSS_SUBSYSTEM_sb_MSS_0:MSS_INT_F2M" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:MDDR_APBmslave" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_APB_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AMBA_MASTER" "MSS_SUBSYSTEM_sb_MSS_0:FIC_0_AHB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AMBA_SLAVE" "MSS_SUBSYSTEM_sb_MSS_0:FIC_0_AHB_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AMBA_MASTER" "MSS_SUBSYSTEM_sb_MSS_0:FIC_1_AHB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDDR_DDR_AMBA_SLAVE" "MSS_SUBSYSTEM_sb_MSS_0:MDDR_DDR_AHB0_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORECONFIGP_0:FIC_2_APBmmaster" "MSS_SUBSYSTEM_sb_MSS_0:FIC_2_APB_MASTER" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
generate_component -component_name ${sd_name}
generate_design -component {MSS_SUBSYSTEM_sb_MSS} -library {} -file {} -generator {} -recursive 1 
sd_update_instance -sd_name ${sd_name} -instance_name {MSS_SUBSYSTEM_sb_MSS_0}
set_root MSS_SUBSYSTEM_sb
# Generate SmartDesign MSS_SUBSYSTEM_sb
generate_component -component_name ${sd_name}
