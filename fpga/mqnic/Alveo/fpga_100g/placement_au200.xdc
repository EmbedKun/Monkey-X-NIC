# Placement constraints
create_pblock pblock_slr0
#add_cells_to_pblock [get_pblocks pblock_slr0] [get_cells -quiet ""]
resize_pblock [get_pblocks pblock_slr0] -add {SLR0}

create_pblock pblock_slr1
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/dma_if_mux_inst"]
add_cells_to_pblock -quiet [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/dma_if_mux.dma_if_mux_ctrl_inst"]
add_cells_to_pblock -quiet [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/dma_if_mux.dma_if_mux_data_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/interface_rx_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/interface_tx_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/tx_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/rx_fifo_inst"]
resize_pblock [get_pblocks pblock_slr1] -add {SLR1}

create_pblock pblock_slr2
#add_cells_to_pblock [get_pblocks pblock_slr2] [get_cells -quiet ""]
resize_pblock [get_pblocks pblock_slr2] -add {SLR2}

create_pblock pblock_pcie
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "pcie4_uscale_plus_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/pcie_if_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/pcie_axil_master_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/dma_if_pcie_inst"]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/pcie_msix_inst"]
resize_pblock [get_pblocks pblock_pcie] -add {CLOCKREGION_X4Y5:CLOCKREGION_X5Y8}

create_pblock pblock_eth
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_tx_inst/tx_async_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_rx_inst/rx_async_fifo_inst"]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet "core_inst/core_inst/core_pcie_inst/core_inst/iface[*].interface_inst/port[*].port_inst/port_tx_inst/tx_cpl_fifo_inst"]
resize_pblock [get_pblocks pblock_eth] -add {CLOCKREGION_X0Y10:CLOCKREGION_X0Y14}

# CMACs
set_property LOC CMACE4_X0Y8 [get_cells -hierarchical -filter {NAME =~ qsfp0_cmac_inst/cmac_inst/inst/i_cmac_usplus_top/* && REF_NAME==CMACE4}]
#set_property LOC CMACE4_X0Y7 [get_cells -hierarchical -filter {NAME =~ qsfp1_cmac_inst/cmac_inst/inst/i_cmac_usplus_top/* && REF_NAME==CMACE4}]

## bmw-tree
#create_pblock pblock_bmw_tree
#add_cells_to_pblock [get_pblocks pblock_bmw_tree] [get_cells -quiet [list {core_inst/core_inst/core_pcie_inst/core_inst/iface[0].interface_inst/sched[0].scheduler_block/tx_scheduler_inst/bmw_tree}]]
