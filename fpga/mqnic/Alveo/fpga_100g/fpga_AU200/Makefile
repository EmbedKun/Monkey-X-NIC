# SPDX-License-Identifier: BSD-2-Clause-Views
# Copyright (c) 2019-2023 The Regents of the University of California

# FPGA settings
FPGA_PART = xcu200-fsgd2104-2-e
FPGA_TOP = corundum-trico
FPGA_ARCH = virtexuplus

# Files for synthesis
SYN_FILES = rtl/fpga_au200.v
SYN_FILES += rtl/fpga_core.v
SYN_FILES += rtl/debounce_switch.v
SYN_FILES += rtl/sync_signal.v
SYN_FILES += rtl/common/metadata_fifo.v
SYN_FILES += rtl/common/metadata_store.v
SYN_FILES += rtl/common/mqnic_tx_scheduler_trico.v
SYN_FILES += rtl/common/tx_queue_manager.v
SYN_FILES += rtl/common/tx_scheduler_trico.v
SYN_FILES += rtl/common/INFER_SDPRAM.v
SYN_FILES += rtl/common/PIFO_TOP.sv
SYN_FILES += rtl/common/pifo.sv
SYN_FILES += rtl/common/trico_tree_top.sv
SYN_FILES += rtl/common/task_distribute.sv
SYN_FILES += rtl/common/task_fifo.sv
SYN_FILES += rtl/common/mqnic_core_pcie_us.v
SYN_FILES += rtl/common/mqnic_core_pcie.v
SYN_FILES += rtl/common/mqnic_core.v
SYN_FILES += rtl/common/mqnic_dram_if.v
SYN_FILES += rtl/common/mqnic_interface.v
SYN_FILES += rtl/common/mqnic_interface_tx.v
SYN_FILES += rtl/common/mqnic_interface_rx.v
SYN_FILES += rtl/common/mqnic_port.v
SYN_FILES += rtl/common/mqnic_port_tx.v
SYN_FILES += rtl/common/mqnic_port_rx.v
SYN_FILES += rtl/common/mqnic_egress.v
SYN_FILES += rtl/common/mqnic_ingress.v
SYN_FILES += rtl/common/mqnic_l2_egress.v
SYN_FILES += rtl/common/mqnic_l2_ingress.v
SYN_FILES += rtl/common/mqnic_rx_queue_map.v
SYN_FILES += rtl/common/mqnic_ptp.v
SYN_FILES += rtl/common/mqnic_ptp_clock.v
SYN_FILES += rtl/common/mqnic_ptp_perout.v
SYN_FILES += rtl/common/mqnic_rb_clk_info.v
SYN_FILES += rtl/common/mqnic_port_map_mac_axis.v
SYN_FILES += rtl/common/cpl_write.v
SYN_FILES += rtl/common/cpl_op_mux.v
SYN_FILES += rtl/common/desc_fetch.v
SYN_FILES += rtl/common/desc_op_mux.v
SYN_FILES += rtl/common/queue_manager.v
SYN_FILES += rtl/common/cpl_queue_manager.v
SYN_FILES += rtl/common/tx_fifo.v
SYN_FILES += rtl/common/rx_fifo.v
SYN_FILES += rtl/common/tx_req_mux.v
SYN_FILES += rtl/common/tx_engine.v
SYN_FILES += rtl/common/rx_engine.v
SYN_FILES += rtl/common/tx_checksum.v
SYN_FILES += rtl/common/rx_hash.v
SYN_FILES += rtl/common/rx_checksum.v
SYN_FILES += rtl/common/rb_drp.v
SYN_FILES += rtl/common/cmac_gty_wrapper.v
SYN_FILES += rtl/common/cmac_gty_ch_wrapper.v
SYN_FILES += rtl/common/stats_counter.v
SYN_FILES += rtl/common/stats_collect.v
SYN_FILES += rtl/common/stats_pcie_if.v
SYN_FILES += rtl/common/stats_pcie_tlp.v
SYN_FILES += rtl/common/stats_dma_if_pcie.v
SYN_FILES += rtl/common/stats_dma_latency.v
SYN_FILES += rtl/common/cmac_pad.v
SYN_FILES += rtl/common/mac_ts_insert.v
SYN_FILES += lib/eth/rtl/ptp_td_phc.v
SYN_FILES += lib/eth/rtl/ptp_td_leaf.v
SYN_FILES += lib/eth/rtl/ptp_perout.v
SYN_FILES += lib/axi/rtl/axil_cdc.v
SYN_FILES += lib/axi/rtl/axil_cdc_rd.v
SYN_FILES += lib/axi/rtl/axil_cdc_wr.v
SYN_FILES += lib/axi/rtl/axil_interconnect.v
SYN_FILES += lib/axi/rtl/axil_crossbar.v
SYN_FILES += lib/axi/rtl/axil_crossbar_addr.v
SYN_FILES += lib/axi/rtl/axil_crossbar_rd.v
SYN_FILES += lib/axi/rtl/axil_crossbar_wr.v
SYN_FILES += lib/axi/rtl/axil_reg_if.v
SYN_FILES += lib/axi/rtl/axil_reg_if_rd.v
SYN_FILES += lib/axi/rtl/axil_reg_if_wr.v
SYN_FILES += lib/axi/rtl/axil_register_rd.v
SYN_FILES += lib/axi/rtl/axil_register_wr.v
SYN_FILES += lib/axi/rtl/arbiter.v
SYN_FILES += lib/axi/rtl/priority_encoder.v
SYN_FILES += lib/axis/rtl/axis_adapter.v
SYN_FILES += lib/axis/rtl/axis_arb_mux.v
SYN_FILES += lib/axis/rtl/axis_async_fifo.v
SYN_FILES += lib/axis/rtl/axis_async_fifo_adapter.v
SYN_FILES += lib/axis/rtl/axis_demux.v
SYN_FILES += lib/axis/rtl/axis_fifo.v
SYN_FILES += lib/axis/rtl/axis_fifo_adapter.v
SYN_FILES += lib/axis/rtl/axis_pipeline_fifo.v
SYN_FILES += lib/axis/rtl/axis_register.v
SYN_FILES += lib/axis/rtl/sync_reset.v
SYN_FILES += lib/pcie/rtl/pcie_axil_master.v
SYN_FILES += lib/pcie/rtl/pcie_tlp_demux.v
SYN_FILES += lib/pcie/rtl/pcie_tlp_demux_bar.v
SYN_FILES += lib/pcie/rtl/pcie_tlp_mux.v
SYN_FILES += lib/pcie/rtl/pcie_tlp_fifo.v
SYN_FILES += lib/pcie/rtl/pcie_tlp_fifo_raw.v
SYN_FILES += lib/pcie/rtl/pcie_msix.v
SYN_FILES += lib/pcie/rtl/irq_rate_limit.v
SYN_FILES += lib/pcie/rtl/dma_if_pcie.v
SYN_FILES += lib/pcie/rtl/dma_if_pcie_rd.v
SYN_FILES += lib/pcie/rtl/dma_if_pcie_wr.v
SYN_FILES += lib/pcie/rtl/dma_if_mux.v
SYN_FILES += lib/pcie/rtl/dma_if_mux_rd.v
SYN_FILES += lib/pcie/rtl/dma_if_mux_wr.v
SYN_FILES += lib/pcie/rtl/dma_if_desc_mux.v
SYN_FILES += lib/pcie/rtl/dma_ram_demux_rd.v
SYN_FILES += lib/pcie/rtl/dma_ram_demux_wr.v
SYN_FILES += lib/pcie/rtl/dma_psdpram.v
SYN_FILES += lib/pcie/rtl/dma_client_axis_sink.v
SYN_FILES += lib/pcie/rtl/dma_client_axis_source.v
SYN_FILES += lib/pcie/rtl/pcie_us_if.v
SYN_FILES += lib/pcie/rtl/pcie_us_if_rc.v
SYN_FILES += lib/pcie/rtl/pcie_us_if_rq.v
SYN_FILES += lib/pcie/rtl/pcie_us_if_cc.v
SYN_FILES += lib/pcie/rtl/pcie_us_if_cq.v
SYN_FILES += lib/pcie/rtl/pcie_us_cfg.v
SYN_FILES += lib/pcie/rtl/pulse_merge.v

# XDC files
XDC_FILES = fpga_au200.xdc
XDC_FILES += placement_au200.xdc
XDC_FILES += cfgmclk.xdc
XDC_FILES += boot.xdc
XDC_FILES += lib/axi/syn/vivado/axil_cdc.tcl
XDC_FILES += lib/axis/syn/vivado/axis_async_fifo.tcl
XDC_FILES += lib/axis/syn/vivado/sync_reset.tcl
XDC_FILES += lib/eth/syn/vivado/ptp_td_leaf.tcl
XDC_FILES += ../../../common/syn/vivado/mqnic_port.tcl
XDC_FILES += ../../../common/syn/vivado/mqnic_ptp_clock.tcl
XDC_FILES += ../../../common/syn/vivado/mqnic_rb_clk_info.tcl
XDC_FILES += ../../../common/syn/vivado/rb_drp.tcl
XDC_FILES += ../../../common/syn/vivado/cmac_gty_wrapper.tcl
XDC_FILES += ../../../common/syn/vivado/cmac_gty_ch_wrapper.tcl

# IP
IP_TCL_FILES = ip/pcie4_uscale_plus_0.tcl
IP_TCL_FILES += ip/cmac_usplus.tcl
IP_TCL_FILES += ip/cmac_gty.tcl
IP_TCL_FILES += ip/cms.tcl
#IP_TCL_FILES += ip/ddr4_0.tcl

# Configuration
CONFIG_TCL_FILES = ./config.tcl

include ../common/vivado.mk

program: $(FPGA_TOP).bit
	echo "open_hw" > program.tcl
	echo "connect_hw_server" >> program.tcl
	echo "open_hw_target" >> program.tcl
	echo "current_hw_device [lindex [get_hw_devices] 0]" >> program.tcl
	echo "refresh_hw_device -update_hw_probes false [current_hw_device]" >> program.tcl
	echo "set_property PROGRAM.FILE {$(FPGA_TOP).bit} [current_hw_device]" >> program.tcl
	echo "program_hw_devices [current_hw_device]" >> program.tcl
	echo "exit" >> program.tcl
	vivado -nojournal -nolog -mode batch -source program.tcl

%.mcs %.prm: %.bit
	echo "write_cfgmem -force -format mcs -size 128 -interface SPIx4 -loadbit {up 0x01002000 $*.bit} -checksum -file $*.mcs" > generate_mcs.tcl
	echo "exit" >> generate_mcs.tcl
	vivado -nojournal -nolog -mode batch -source generate_mcs.tcl
	mkdir -p rev
	COUNT=100; \
	while [ -e rev/$*_rev$$COUNT.bit ]; \
	do COUNT=$$((COUNT+1)); done; \
	COUNT=$$((COUNT-1)); \
	for x in .mcs .prm; \
	do cp $*$$x rev/$*_rev$$COUNT$$x; \
	echo "Output: rev/$*_rev$$COUNT$$x"; done;

flash: $(FPGA_TOP).mcs $(FPGA_TOP).prm
	echo "open_hw" > flash.tcl
	echo "connect_hw_server" >> flash.tcl
	echo "open_hw_target" >> flash.tcl
	echo "current_hw_device [lindex [get_hw_devices] 0]" >> flash.tcl
	echo "refresh_hw_device -update_hw_probes false [current_hw_device]" >> flash.tcl
	echo "create_hw_cfgmem -hw_device [current_hw_device] [lindex [get_cfgmem_parts {mt25qu01g-spi-x1_x2_x4}] 0]" >> flash.tcl
	echo "current_hw_cfgmem -hw_device [current_hw_device] [get_property PROGRAM.HW_CFGMEM [current_hw_device]]" >> flash.tcl
	echo "set_property PROGRAM.FILES [list \"$(FPGA_TOP).mcs\"] [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.PRM_FILES [list \"$(FPGA_TOP).prm\"] [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.ERASE 1 [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.CFG_PROGRAM 1 [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.VERIFY 1 [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.CHECKSUM 0 [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.ADDRESS_RANGE {use_file} [current_hw_cfgmem]" >> flash.tcl
	echo "set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [current_hw_cfgmem]" >> flash.tcl
	echo "create_hw_bitstream -hw_device [current_hw_device] [get_property PROGRAM.HW_CFGMEM_BITFILE [current_hw_device]]" >> flash.tcl
	echo "program_hw_devices [current_hw_device]" >> flash.tcl
	echo "refresh_hw_device [current_hw_device]" >> flash.tcl
	echo "program_hw_cfgmem -hw_cfgmem [current_hw_cfgmem]" >> flash.tcl
	echo "boot_hw_device [current_hw_device]" >> flash.tcl
	echo "exit" >> flash.tcl
	vivado -nojournal -nolog -mode batch -source flash.tcl
