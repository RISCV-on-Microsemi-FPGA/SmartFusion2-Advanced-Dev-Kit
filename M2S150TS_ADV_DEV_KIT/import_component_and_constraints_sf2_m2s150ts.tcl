set project_folder_name MiV_RV32IMA_L1_AHB_BaseDesign_M2S150TS_ADV_DEV_KIT
set project_dir_sf2 "./$project_folder_name"
set Libero_project_name MiV_BaseDesign


puts "-------------------------------------------------------------------------"
puts "-----------------------IMPORTING COMPONENTS------------------------------"
puts "-------------------------------------------------------------------------" 


import_files -cxf {./M2S150TS_ADV_DEV_KIT/MSS_SUBSYSTEM_sb_MSS/MSS_SUBSYSTEM_sb_MSS.cxf} 
source ./M2S150TS_ADV_DEV_KIT/mss_subsystem_sf2_m2s150ts.tcl
generate_component -component_name {MSS_SUBSYSTEM_sb_MSS}

source ./M2S150TS_ADV_DEV_KIT/top_level_sf2_m2s150ts.tcl

puts "-------------------------------------------------------------------------"
puts "--------------------APPLYING DESING CONSTRAINTS--------------------------"
puts "-------------------------------------------------------------------------"

import_files -io_pdc ./M2S150TS_ADV_DEV_KIT/io_constraints.pdc
import_files -io_pdc ./M2S150TS_ADV_DEV_KIT/user.pdc
import_files -sdc    ./M2S150TS_ADV_DEV_KIT/io_jtag_constraints.sdc

build_design_hierarchy
set_root BaseDesign

run_tool -name {CONSTRAINT_MANAGEMENT}
# #Associate SDC constraint file to Place and Route tool
organize_tool_files -tool {PLACEROUTE} \
    -file $project_dir_sf2/constraint/io_jtag_constraints.sdc \
    -file $project_dir_sf2/constraint/io/io_constraints.pdc \
	-file $project_dir_sf2/constraint/io/user.pdc \
    -module {BaseDesign::work} -input_type {constraint}  
    
organize_tool_files -tool {SYNTHESIZE} \
    -file $project_dir_sf2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}    
    
organize_tool_files -tool {VERIFYTIMING} \
    -file $project_dir_sf2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}    

derive_constraints_sdc 
set_root BaseDesign
