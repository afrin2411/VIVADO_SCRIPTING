open_project [pwd]/Automation/Project_1.xpr  
##open the created vivado project

# The command allows the user to set the top module manually

set_property source_mgmt_mode None [current_project]  
update_compile_order -fileset sources_1	

#looping over all the top modules and running the synthesis and implementation
 
set_property top [string trimright [lindex $argv 0] ".v"] [current_fileset]
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1

# reset and launch the synthesis and implementation. THe process waits till next command is executed

reset_run synth_1  
launch_runs synth_1 -jobs 16
wait_on_run synth_1
    

reset_run impl_1
launch_runs impl_1 -jobs 16
wait_on_run impl_1

# If implementation is run, the reports are generated and saved in Impl folder
open_run impl_1
report_power > results/[string trimright [lindex $argv 0] ".v"]/power.txt
report_timing > results/[string trimright [lindex $argv 0] ".v"]/timing.txt
report_utilization > results/[string trimright [lindex $argv 0] ".v"]/utilization.txt

update_compile_order -fileset sources_1	

close_project
