set project_folder_name MiV_AXI_SF2_Adv_Dev_Kit_TS
set project_dir2 "./$project_folder_name"
set Libero_project_name MiV_AXI_BaseDesign


puts "-------------------------------------------------------------------------"
puts "-----------------------IMPORTING COMPONENTS------------------------------"
puts "-------------------------------------------------------------------------" 


source ./import/components/M2S150TS-1FC1152/AXI/top_level_sf2_adv_dev_kit_ts_axi.tcl

puts "-------------------------------------------------------------------------"
puts "--------------------APPLYING DESING CONSTRAINTS--------------------------"
puts "-------------------------------------------------------------------------"

import_files -io_pdc ./import/constraints/io/io_constraints.pdc
import_files -io_pdc ./import/constraints/io/user.pdc
import_files -sdc    ./import/constraints/io_jtag_constraints.sdc

build_design_hierarchy
set_root BaseDesign

run_tool -name {CONSTRAINT_MANAGEMENT}
# #Associate SDC constraint file to Place and Route tool
organize_tool_files -tool {PLACEROUTE} \
    -file $project_dir2/constraint/io_jtag_constraints.sdc \
    -file $project_dir2/constraint/io/io_constraints.pdc \
	-file $project_dir2/constraint/io/user.pdc \
    -module {BaseDesign::work} -input_type {constraint}  
    
organize_tool_files -tool {SYNTHESIZE} \
    -file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}    
    
organize_tool_files -tool {VERIFYTIMING} \
    -file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}    

derive_constraints_sdc 
set_root BaseDesign
