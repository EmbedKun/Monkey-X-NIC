open_project corundum-trico.xpr
reset_run impl_1
launch_runs -jobs 4 impl_1
wait_on_run impl_1
open_run impl_1
report_utilization -file corundum-trico_utilization.rpt
report_utilization -hierarchical -file corundum-trico_utilization_hierarchical.rpt
