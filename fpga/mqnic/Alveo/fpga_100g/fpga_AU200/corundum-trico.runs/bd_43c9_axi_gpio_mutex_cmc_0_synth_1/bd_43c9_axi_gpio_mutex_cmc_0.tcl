# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "bd_43c9_axi_gpio_mutex_cmc_0_synth_1" START { ROLLUP_AUTO }
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xcu200-fsgd2104-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.cache/wt [current_project]
set_property parent.project_path /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property generic {FPGA_ID=32'h04b37093 FW_ID=32'h00000000 FW_VER=32'h00000100 BOARD_ID=32'h10ee90c8 BOARD_VER=32'h01000000 BUILD_DATE=32'd1736874991 GIT_HASH=32'h1ca0151b RELEASE_INFO=32'h00000000 CMS_ENABLE=1 IF_COUNT=1 PORTS_PER_IF=1 SCHED_PER_IF=1 PORT_MASK=0 CLK_PERIOD_NS_NUM=4 CLK_PERIOD_NS_DENOM=1 PTP_CLOCK_PIPELINE=0 PTP_CLOCK_CDC_PIPELINE=0 PTP_PORT_CDC_PIPELINE=0 PTP_PEROUT_ENABLE=0 PTP_PEROUT_COUNT=1 EVENT_QUEUE_OP_TABLE_SIZE=32 TX_QUEUE_OP_TABLE_SIZE=32 RX_QUEUE_OP_TABLE_SIZE=32 CQ_OP_TABLE_SIZE=32 EQN_WIDTH=6 TX_QUEUE_INDEX_WIDTH=6 RX_QUEUE_INDEX_WIDTH=8 CQN_WIDTH=9 EQ_PIPELINE=3 TX_QUEUE_PIPELINE=3 RX_QUEUE_PIPELINE=3 CQ_PIPELINE=3 TX_DESC_TABLE_SIZE=32 RX_DESC_TABLE_SIZE=32 RX_INDIR_TBL_ADDR_WIDTH=8 TX_SCHEDULER_OP_TABLE_SIZE=32 TX_SCHEDULER_PIPELINE=3 TDMA_INDEX_WIDTH=6 PTP_TS_ENABLE=1 TX_CPL_FIFO_DEPTH=32 TX_CHECKSUM_ENABLE=1 RX_HASH_ENABLE=1 RX_CHECKSUM_ENABLE=1 PFC_ENABLE=0 LFC_ENABLE=0 TX_FIFO_DEPTH=32768 RX_FIFO_DEPTH=131072 MAX_TX_SIZE=9214 MAX_RX_SIZE=9214 TX_RAM_SIZE=131072 RX_RAM_SIZE=131072 DDR_CH=4 DDR_ENABLE=0 AXI_DDR_ID_WIDTH=8 AXI_DDR_MAX_BURST_LEN=256 APP_ID=32'h00000000 APP_ENABLE=0 APP_CTRL_ENABLE=1 APP_DMA_ENABLE=1 APP_AXIS_DIRECT_ENABLE=1 APP_AXIS_SYNC_ENABLE=1 APP_AXIS_IF_ENABLE=1 APP_STAT_ENABLE=1 DMA_IMM_ENABLE=0 DMA_IMM_WIDTH=32 DMA_LEN_WIDTH=16 DMA_TAG_WIDTH=16 RAM_ADDR_WIDTH=17 RAM_PIPELINE=2 IRQ_INDEX_WIDTH=6 AXIL_CTRL_DATA_WIDTH=32 AXIL_CTRL_ADDR_WIDTH=24 AXIL_APP_CTRL_DATA_WIDTH=32 AXIL_APP_CTRL_ADDR_WIDTH=24 AXIS_ETH_TX_PIPELINE=4 AXIS_ETH_TX_FIFO_PIPELINE=4 AXIS_ETH_TX_TS_PIPELINE=4 AXIS_ETH_RX_PIPELINE=4 AXIS_ETH_RX_FIFO_PIPELINE=4 STAT_ENABLE=1 STAT_DMA_ENABLE=1 STAT_PCIE_ENABLE=1 STAT_INC_WIDTH=24 STAT_ID_WIDTH=12 AXIS_PCIE_DATA_WIDTH=512} [current_fileset]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_ip -quiet /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0.xci
set_property used_in_implementation false [get_files -all /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
OPTRACE "Configure IP Cache" START { }

set cached_ip [config_ip_cache -export -no_bom  -dir /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1 -new_name bd_43c9_axi_gpio_mutex_cmc_0 -ip [get_ips bd_43c9_axi_gpio_mutex_cmc_0]]

OPTRACE "Configure IP Cache" END { }
if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top bd_43c9_axi_gpio_mutex_cmc_0 -part xcu200-fsgd2104-2-e -mode out_of_context
OPTRACE "synth_design" END { }
OPTRACE "Write IP Cache" START { }

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix bd_43c9_axi_gpio_mutex_cmc_0_ bd_43c9_axi_gpio_mutex_cmc_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_axi_gpio_mutex_cmc_0_stub.v
 lappend ipCachedFiles bd_43c9_axi_gpio_mutex_cmc_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl
 lappend ipCachedFiles bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.v
 lappend ipCachedFiles bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.vhdl
 lappend ipCachedFiles bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.vhdl
 set TIME_taken [expr [clock seconds] - $TIME_start]

 if { [get_msg_config -count -severity {CRITICAL WARNING}] == 0 } {
  config_ip_cache -add -dcp bd_43c9_axi_gpio_mutex_cmc_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips bd_43c9_axi_gpio_mutex_cmc_0]
 }
OPTRACE "Write IP Cache" END { }
}
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}

rename_ref -prefix_all bd_43c9_axi_gpio_mutex_cmc_0_

OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef bd_43c9_axi_gpio_mutex_cmc_0.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "bd_43c9_axi_gpio_mutex_cmc_0_synth_1_synth_report_utilization_0" "report_utilization -file bd_43c9_axi_gpio_mutex_cmc_0_utilization_synth.rpt -pb bd_43c9_axi_gpio_mutex_cmc_0_utilization_synth.pb"
OPTRACE "synth reports" END { }

if { [catch {
  file copy -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0.dcp /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0.dcp /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0_stub.v /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.v /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_axi_gpio_mutex_cmc_0_synth_1/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.vhdl /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.ip_user_files/ip/bd_43c9_axi_gpio_mutex_cmc_0]} {
  catch { 
    file copy -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.v /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.ip_user_files/ip/bd_43c9_axi_gpio_mutex_cmc_0
  }
}

if {[file isdir /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.ip_user_files/ip/bd_43c9_axi_gpio_mutex_cmc_0]} {
  catch { 
    file copy -force /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_7/bd_43c9_axi_gpio_mutex_cmc_0_stub.vhdl /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.ip_user_files/ip/bd_43c9_axi_gpio_mutex_cmc_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "bd_43c9_axi_gpio_mutex_cmc_0_synth_1" END { }
