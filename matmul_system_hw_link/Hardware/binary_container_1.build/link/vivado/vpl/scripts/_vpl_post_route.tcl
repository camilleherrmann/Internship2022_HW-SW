# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  source ../../../.local/vpl_init.tcl
  source $local_dir/ocl_util.tcl
  source $local_dir/platform.tcl
  source $local_dir/debug_profile_hooks.tcl
  namespace import ocl_util::*

  set _is_init_cmds true
}



# generate cookie file for messaging
write_cookie_file_impl "binary_container_1"

# utilization reports
report_utilization_impl true "matmul" "routed" "" $input_dir $vivado_output_dir

# kernel service update
update_kernel_info $steps_log $vpl_output_dir ""

# update noc node information
update_profile_metadata_postroute $vpl_output_dir
