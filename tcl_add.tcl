#creates a new vivado project
open_project [pwd]/Automation/Project_1.xpr 

# loop to add all design files
add_files -norecurse [pwd]/modules/[lindex $argv 0]
update_compile_order -fileset sources_1
close_project
