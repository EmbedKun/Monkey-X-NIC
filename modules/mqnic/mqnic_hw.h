// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

#ifndef MQNIC_HW_H
#define MQNIC_HW_H

#include <linux/types.h>

#define MQNIC_MAX_IRQ 256

#define MQNIC_MAX_IF 8
#define MQNIC_MAX_PORTS 8
#define MQNIC_MAX_SCHED 8

#define MQNIC_MAX_FRAGS 8

#define MQNIC_MAX_EQ   256
#define MQNIC_MAX_TXQ  8192
#define MQNIC_MAX_RXQ  MQNIC_MAX_TXQ
#define MQNIC_MAX_CQ   (MQNIC_MAX_TXQ*2)

#define MQNIC_MIN_TX_RING_SZ  (4096/16)
#define MQNIC_MAX_TX_RING_SZ  32768
#define MQNIC_MIN_RX_RING_SZ  (4096/16)
#define MQNIC_MAX_RX_RING_SZ  32768

#define MQNIC_MAX_I2C_ADAPTERS 4

#define MQNIC_BOARD_ID_NETFPGA_SUME     0x10ee7028
#define MQNIC_BOARD_ID_AU45             0x10ee902d
#define MQNIC_BOARD_ID_AU50             0x10ee9032
#define MQNIC_BOARD_ID_AU55             0x10ee9037
#define MQNIC_BOARD_ID_AU200            0x10ee90c8
#define MQNIC_BOARD_ID_AU250            0x10ee90fa
#define MQNIC_BOARD_ID_AU280            0x10ee9118
#define MQNIC_BOARD_ID_VCU108           0x10ee806c
#define MQNIC_BOARD_ID_VCU118           0x10ee9076
#define MQNIC_BOARD_ID_VCU1525          0x10ee95f5
#define MQNIC_BOARD_ID_ZCU106           0x10ee906a
#define MQNIC_BOARD_ID_DK_DEV_1SMX_H_A  0x11720001
#define MQNIC_BOARD_ID_DK_DEV_1SDX_P_A  0x1172a00d
#define MQNIC_BOARD_ID_DK_DEV_AGF014EA  0x1172b00e
#define MQNIC_BOARD_ID_DE10_AGILEX      0x1172b00a
#define MQNIC_BOARD_ID_XUSP3S           0x12ba8823
#define MQNIC_BOARD_ID_XUPP3R           0x12ba9823
#define MQNIC_BOARD_ID_IA_420F          0x12bab5d4
#define MQNIC_BOARD_ID_520NMX           0x198a0521
#define MQNIC_BOARD_ID_250SOC           0x198a250e
#define MQNIC_BOARD_ID_FB4CGG3_VU9P     0x1c2c9403
#define MQNIC_BOARD_ID_FB2CG_KU15P      0x1c2ca00e
#define MQNIC_BOARD_ID_NEXUS_K35_S      0x1ce40003
#define MQNIC_BOARD_ID_NEXUS_K3P_S      0x1ce40009
#define MQNIC_BOARD_ID_NEXUS_K3P_Q      0x1ce4000a
#define MQNIC_BOARD_ID_DNPCIE_40G_KU    0x17df1a00
#define MQNIC_BOARD_ID_ADM_PCIE_9V3     0x41449003

// Register blocks
#define MQNIC_RB_REG_TYPE      0x00
#define MQNIC_RB_REG_VER       0x04
#define MQNIC_RB_REG_NEXT_PTR  0x08

#define MQNIC_RB_FW_ID_TYPE            0xFFFFFFFF
#define MQNIC_RB_FW_ID_VER             0x00000100
#define MQNIC_RB_FW_ID_REG_FPGA_ID     0x0C
#define MQNIC_RB_FW_ID_REG_FW_ID       0x10
#define MQNIC_RB_FW_ID_REG_FW_VER      0x14
#define MQNIC_RB_FW_ID_REG_BOARD_ID    0x18
#define MQNIC_RB_FW_ID_REG_BOARD_VER   0x1C
#define MQNIC_RB_FW_ID_REG_BUILD_DATE  0x20
#define MQNIC_RB_FW_ID_REG_GIT_HASH    0x24
#define MQNIC_RB_FW_ID_REG_REL_INFO    0x28

#define MQNIC_RB_GPIO_TYPE          0x0000C100
#define MQNIC_RB_GPIO_VER           0x00000100
#define MQNIC_RB_GPIO_REG_GPIO_IN   0x0C
#define MQNIC_RB_GPIO_REG_GPIO_OUT  0x10

#define MQNIC_RB_I2C_TYPE      0x0000C110
#define MQNIC_RB_I2C_VER       0x00000100
#define MQNIC_RB_I2C_REG_CTRL  0x0C

#define MQNIC_REG_GPIO_I2C_SCL_IN         0x00000001
#define MQNIC_REG_GPIO_I2C_SCL_OUT        0x00000002
#define MQNIC_REG_GPIO_I2C_SDA_IN         0x00000100
#define MQNIC_REG_GPIO_I2C_SDA_OUT        0x00000200

#define MQNIC_RB_SPI_FLASH_TYPE        0x0000C120
#define MQNIC_RB_SPI_FLASH_VER         0x00000200
#define MQNIC_RB_SPI_FLASH_REG_FORMAT  0x0C
#define MQNIC_RB_SPI_FLASH_REG_CTRL_0  0x10
#define MQNIC_RB_SPI_FLASH_REG_CTRL_1  0x14

#define MQNIC_RB_BPI_FLASH_TYPE        0x0000C121
#define MQNIC_RB_BPI_FLASH_VER         0x00000200
#define MQNIC_RB_BPI_FLASH_REG_FORMAT  0x0C
#define MQNIC_RB_BPI_FLASH_REG_ADDR    0x10
#define MQNIC_RB_BPI_FLASH_REG_DATA    0x14
#define MQNIC_RB_BPI_FLASH_REG_CTRL    0x18

#define MQNIC_RB_ALVEO_BMC_TYPE      0x0000C140
#define MQNIC_RB_ALVEO_BMC_VER       0x00000100
#define MQNIC_RB_ALVEO_BMC_REG_ADDR  0x0C
#define MQNIC_RB_ALVEO_BMC_REG_DATA  0x10

#define MQNIC_RB_GECKO_BMC_TYPE        0x0000C141
#define MQNIC_RB_GECKO_BMC_VER         0x00000100
#define MQNIC_RB_GECKO_BMC_REG_STATUS  0x0C
#define MQNIC_RB_GECKO_BMC_REG_DATA    0x10
#define MQNIC_RB_GECKO_BMC_REG_CMD     0x14

#define MQNIC_RB_STATS_TYPE        0x0000C006
#define MQNIC_RB_STATS_VER         0x00000100
#define MQNIC_RB_STATS_REG_OFFSET  0x0C
#define MQNIC_RB_STATS_REG_COUNT   0x10
#define MQNIC_RB_STATS_REG_STRIDE  0x14
#define MQNIC_RB_STATS_REG_FLAGS   0x18

#define MQNIC_RB_IRQ_TYPE        0x0000C007
#define MQNIC_RB_IRQ_VER         0x00000100

#define MQNIC_RB_CLK_INFO_TYPE         0x0000C008
#define MQNIC_RB_CLK_INFO_VER          0x00000100
#define MQNIC_RB_CLK_INFO_COUNT        0x0C
#define MQNIC_RB_CLK_INFO_REF_NOM_PER  0x10
#define MQNIC_RB_CLK_INFO_CLK_NOM_PER  0x18
#define MQNIC_RB_CLK_INFO_CLK_FREQ     0x1C
#define MQNIC_RB_CLK_INFO_FREQ_BASE    0x20

#define MQNIC_RB_PHC_TYPE                0x0000C080
#define MQNIC_RB_PHC_VER                 0x00000200
#define MQNIC_RB_PHC_REG_CTRL            0x0C
#define MQNIC_RB_PHC_REG_CUR_FNS         0x10
#define MQNIC_RB_PHC_REG_CUR_TOD_NS      0x14
#define MQNIC_RB_PHC_REG_CUR_TOD_SEC_L   0x18
#define MQNIC_RB_PHC_REG_CUR_TOD_SEC_H   0x1C
#define MQNIC_RB_PHC_REG_CUR_REL_NS_L    0x20
#define MQNIC_RB_PHC_REG_CUR_REL_NS_H    0x24
#define MQNIC_RB_PHC_REG_CUR_PTM_NS_L    0x28
#define MQNIC_RB_PHC_REG_CUR_PTM_NS_H    0x2C
#define MQNIC_RB_PHC_REG_SNAP_FNS        0x30
#define MQNIC_RB_PHC_REG_SNAP_TOD_NS     0x34
#define MQNIC_RB_PHC_REG_SNAP_TOD_SEC_L  0x38
#define MQNIC_RB_PHC_REG_SNAP_TOD_SEC_H  0x3C
#define MQNIC_RB_PHC_REG_SNAP_REL_NS_L   0x40
#define MQNIC_RB_PHC_REG_SNAP_REL_NS_H   0x44
#define MQNIC_RB_PHC_REG_SNAP_PTM_NS_L   0x48
#define MQNIC_RB_PHC_REG_SNAP_PTM_NS_H   0x4C
#define MQNIC_RB_PHC_REG_OFFSET_TOD_NS   0x50
#define MQNIC_RB_PHC_REG_SET_TOD_NS      0x54
#define MQNIC_RB_PHC_REG_SET_TOD_SEC_L   0x58
#define MQNIC_RB_PHC_REG_SET_TOD_SEC_H   0x5C
#define MQNIC_RB_PHC_REG_SET_REL_NS_L    0x60
#define MQNIC_RB_PHC_REG_SET_REL_NS_H    0x64
#define MQNIC_RB_PHC_REG_OFFSET_REL_NS   0x68
#define MQNIC_RB_PHC_REG_OFFSET_FNS      0x6C
#define MQNIC_RB_PHC_REG_NOM_PERIOD_FNS  0x70
#define MQNIC_RB_PHC_REG_NOM_PERIOD_NS   0x74
#define MQNIC_RB_PHC_REG_PERIOD_FNS      0x78
#define MQNIC_RB_PHC_REG_PERIOD_NS       0x7C

#define MQNIC_RB_PHC_PEROUT_TYPE              0x0000C081
#define MQNIC_RB_PHC_PEROUT_VER               0x00000100
#define MQNIC_RB_PHC_PEROUT_REG_CTRL          0x0C
#define MQNIC_RB_PHC_PEROUT_REG_START_FNS     0x10
#define MQNIC_RB_PHC_PEROUT_REG_START_NS      0x14
#define MQNIC_RB_PHC_PEROUT_REG_START_SEC_L   0x18
#define MQNIC_RB_PHC_PEROUT_REG_START_SEC_H   0x1C
#define MQNIC_RB_PHC_PEROUT_REG_PERIOD_FNS    0x20
#define MQNIC_RB_PHC_PEROUT_REG_PERIOD_NS     0x24
#define MQNIC_RB_PHC_PEROUT_REG_PERIOD_SEC_L  0x28
#define MQNIC_RB_PHC_PEROUT_REG_PERIOD_SEC_H  0x2C
#define MQNIC_RB_PHC_PEROUT_REG_WIDTH_FNS     0x30
#define MQNIC_RB_PHC_PEROUT_REG_WIDTH_NS      0x34
#define MQNIC_RB_PHC_PEROUT_REG_WIDTH_SEC_L   0x38
#define MQNIC_RB_PHC_PEROUT_REG_WIDTH_SEC_H   0x3C

#define MQNIC_RB_IF_TYPE            0x0000C000
#define MQNIC_RB_IF_VER             0x00000100
#define MQNIC_RB_IF_REG_OFFSET      0x0C
#define MQNIC_RB_IF_REG_COUNT       0x10
#define MQNIC_RB_IF_REG_STRIDE      0x14
#define MQNIC_RB_IF_REG_CSR_OFFSET  0x18

#define MQNIC_RB_IF_CTRL_TYPE               0x0000C001
#define MQNIC_RB_IF_CTRL_VER                0x00000400
#define MQNIC_RB_IF_CTRL_REG_FEATURES       0x0C
#define MQNIC_RB_IF_CTRL_REG_PORT_COUNT     0x10
#define MQNIC_RB_IF_CTRL_REG_SCHED_COUNT    0x14
#define MQNIC_RB_IF_CTRL_REG_MAX_TX_MTU     0x20
#define MQNIC_RB_IF_CTRL_REG_MAX_RX_MTU     0x24
#define MQNIC_RB_IF_CTRL_REG_TX_MTU         0x28
#define MQNIC_RB_IF_CTRL_REG_RX_MTU         0x2C
#define MQNIC_RB_IF_CTRL_REG_TX_FIFO_DEPTH  0x30
#define MQNIC_RB_IF_CTRL_REG_RX_FIFO_DEPTH  0x34

#define MQNIC_IF_FEATURE_RSS      (1 << 0)
#define MQNIC_IF_FEATURE_PTP_TS   (1 << 4)
#define MQNIC_IF_FEATURE_TX_CSUM  (1 << 8)
#define MQNIC_IF_FEATURE_RX_CSUM  (1 << 9)
#define MQNIC_IF_FEATURE_RX_HASH  (1 << 10)
#define MQNIC_IF_FEATURE_LFC      (1 << 11)
#define MQNIC_IF_FEATURE_PFC      (1 << 12)

#define MQNIC_RB_RX_QUEUE_MAP_TYPE             0x0000C090
#define MQNIC_RB_RX_QUEUE_MAP_VER              0x00000200
#define MQNIC_RB_RX_QUEUE_MAP_REG_CFG          0x0C
#define MQNIC_RB_RX_QUEUE_MAP_CH_OFFSET        0x10
#define MQNIC_RB_RX_QUEUE_MAP_CH_STRIDE        0x10
#define MQNIC_RB_RX_QUEUE_MAP_CH_REG_OFFSET    0x00
#define MQNIC_RB_RX_QUEUE_MAP_CH_REG_RSS_MASK  0x04
#define MQNIC_RB_RX_QUEUE_MAP_CH_REG_APP_MASK  0x08

#define MQNIC_RB_EQM_TYPE        0x0000C010
#define MQNIC_RB_EQM_VER         0x00000400
#define MQNIC_RB_EQM_REG_OFFSET  0x0C
#define MQNIC_RB_EQM_REG_COUNT   0x10
#define MQNIC_RB_EQM_REG_STRIDE  0x14

#define MQNIC_RB_CQM_TYPE        0x0000C020
#define MQNIC_RB_CQM_VER         0x00000400
#define MQNIC_RB_CQM_REG_OFFSET  0x0C
#define MQNIC_RB_CQM_REG_COUNT   0x10
#define MQNIC_RB_CQM_REG_STRIDE  0x14

#define MQNIC_RB_TX_QM_TYPE        0x0000C030
#define MQNIC_RB_TX_QM_VER         0x00000400
#define MQNIC_RB_TX_QM_REG_OFFSET  0x0C
#define MQNIC_RB_TX_QM_REG_COUNT   0x10
#define MQNIC_RB_TX_QM_REG_STRIDE  0x14

#define MQNIC_RB_RX_QM_TYPE        0x0000C031
#define MQNIC_RB_RX_QM_VER         0x00000400
#define MQNIC_RB_RX_QM_REG_OFFSET  0x0C
#define MQNIC_RB_RX_QM_REG_COUNT   0x10
#define MQNIC_RB_RX_QM_REG_STRIDE  0x14

#define MQNIC_RB_PORT_TYPE        0x0000C002
#define MQNIC_RB_PORT_VER         0x00000200
#define MQNIC_RB_PORT_REG_OFFSET  0x0C

#define MQNIC_RB_PORT_CTRL_TYPE           0x0000C003
#define MQNIC_RB_PORT_CTRL_VER            0x00000300
#define MQNIC_RB_PORT_CTRL_REG_FEATURES   0x0C
#define MQNIC_RB_PORT_CTRL_REG_TX_CTRL    0x10
#define MQNIC_RB_PORT_CTRL_REG_RX_CTRL    0x14
#define MQNIC_RB_PORT_CTRL_REG_FC_CTRL    0x18
#define MQNIC_RB_PORT_CTRL_REG_LFC_CTRL   0x1C
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL0  0x20
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL1  0x24
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL2  0x28
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL3  0x2C
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL4  0x30
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL5  0x34
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL6  0x38
#define MQNIC_RB_PORT_CTRL_REG_PFC_CTRL7  0x3C

#define MQNIC_PORT_FEATURE_LFC           (1 << 0)
#define MQNIC_PORT_FEATURE_PFC           (1 << 1)
#define MQNIC_PORT_FEATURE_INT_MAC_CTRL  (1 << 2)

#define MQNIC_PORT_TX_CTRL_EN            (1 << 0)
#define MQNIC_PORT_TX_CTRL_PAUSE         (1 << 8)
#define MQNIC_PORT_TX_CTRL_STATUS        (1 << 16)
#define MQNIC_PORT_TX_CTRL_RESET         (1 << 17)
#define MQNIC_PORT_TX_CTRL_PAUSE_REQ     (1 << 24)
#define MQNIC_PORT_TX_CTRL_PAUSE_ACK     (1 << 25)

#define MQNIC_PORT_RX_CTRL_EN            (1 << 0)
#define MQNIC_PORT_RX_CTRL_PAUSE         (1 << 8)
#define MQNIC_PORT_RX_CTRL_STATUS        (1 << 16)
#define MQNIC_PORT_RX_CTRL_RESET         (1 << 17)
#define MQNIC_PORT_RX_CTRL_PAUSE_REQ     (1 << 24)
#define MQNIC_PORT_RX_CTRL_PAUSE_ACK     (1 << 25)

#define MQNIC_PORT_LFC_CTRL_TX_LFC_EN    (1 << 24)
#define MQNIC_PORT_LFC_CTRL_RX_LFC_EN    (1 << 25)
#define MQNIC_PORT_LFC_CTRL_TX_LFC_REQ   (1 << 28)
#define MQNIC_PORT_LFC_CTRL_RX_LFC_REQ   (1 << 29)

#define MQNIC_PORT_PFC_CTRL_TX_PFC_EN    (1 << 24)
#define MQNIC_PORT_PFC_CTRL_RX_PFC_EN    (1 << 25)
#define MQNIC_PORT_PFC_CTRL_TX_PFC_REQ   (1 << 28)
#define MQNIC_PORT_PFC_CTRL_RX_PFC_REQ   (1 << 29)

#define MQNIC_RB_SCHED_BLOCK_TYPE        0x0000C004
#define MQNIC_RB_SCHED_BLOCK_VER         0x00000300
#define MQNIC_RB_SCHED_BLOCK_REG_OFFSET  0x0C

#define MQNIC_RB_SCHED_RR_TYPE           0x0000C040
#define MQNIC_RB_SCHED_RR_VER            0x00000100
#define MQNIC_RB_SCHED_RR_REG_OFFSET     0x0C
#define MQNIC_RB_SCHED_RR_REG_CH_COUNT   0x10
#define MQNIC_RB_SCHED_RR_REG_CH_STRIDE  0x14
#define MQNIC_RB_SCHED_RR_REG_CTRL       0x18
#define MQNIC_RB_SCHED_RR_REG_DEST       0x1C

#define MQNIC_RB_SCHED_CTRL_TDMA_TYPE           0x0000C050
#define MQNIC_RB_SCHED_CTRL_TDMA_VER            0x00000100
#define MQNIC_RB_SCHED_CTRL_TDMA_REG_OFFSET     0x0C
#define MQNIC_RB_SCHED_CTRL_TDMA_REG_CH_COUNT   0x10
#define MQNIC_RB_SCHED_CTRL_TDMA_REG_CH_STRIDE  0x14
#define MQNIC_RB_SCHED_CTRL_TDMA_REG_CTRL       0x18
#define MQNIC_RB_SCHED_CTRL_TDMA_REG_TS_COUNT   0x1C

#define MQNIC_RB_TDMA_SCH_TYPE                     0x0000C060
#define MQNIC_RB_TDMA_SCH_VER                      0x00000100
#define MQNIC_RB_TDMA_SCH_REG_TS_COUNT             0x0C
#define MQNIC_RB_TDMA_SCH_REG_CTRL                 0x10
#define MQNIC_RB_TDMA_SCH_REG_STATUS               0x14
#define MQNIC_RB_TDMA_SCH_REG_SCH_START_FNS        0x20
#define MQNIC_RB_TDMA_SCH_REG_SCH_START_NS         0x24
#define MQNIC_RB_TDMA_SCH_REG_SCH_START_SEC_L      0x28
#define MQNIC_RB_TDMA_SCH_REG_SCH_START_SEC_H      0x2C
#define MQNIC_RB_TDMA_SCH_REG_SCH_PERIOD_FNS       0x30
#define MQNIC_RB_TDMA_SCH_REG_SCH_PERIOD_NS        0x34
#define MQNIC_RB_TDMA_SCH_REG_SCH_PERIOD_SEC_L     0x38
#define MQNIC_RB_TDMA_SCH_REG_SCH_PERIOD_SEC_H     0x3C
#define MQNIC_RB_TDMA_SCH_REG_TS_PERIOD_FNS        0x40
#define MQNIC_RB_TDMA_SCH_REG_TS_PERIOD_NS         0x44
#define MQNIC_RB_TDMA_SCH_REG_TS_PERIOD_SEC_L      0x48
#define MQNIC_RB_TDMA_SCH_REG_TS_PERIOD_SEC_H      0x4C
#define MQNIC_RB_TDMA_SCH_REG_ACTIVE_PERIOD_FNS    0x50
#define MQNIC_RB_TDMA_SCH_REG_ACTIVE_PERIOD_NS     0x54
#define MQNIC_RB_TDMA_SCH_REG_ACTIVE_PERIOD_SEC_L  0x58
#define MQNIC_RB_TDMA_SCH_REG_ACTIVE_PERIOD_SEC_H  0x5C

#define MQNIC_RB_APP_INFO_TYPE    0x0000C005
#define MQNIC_RB_APP_INFO_VER     0x00000200
#define MQNIC_RB_APP_INFO_REG_ID  0x0C

#define MQNIC_QUEUE_BASE_ADDR_VF_REG  0x00
#define MQNIC_QUEUE_CTRL_STATUS_REG   0x08
#define MQNIC_QUEUE_SIZE_CQN_REG      0x0C
#define MQNIC_QUEUE_PTR_REG           0x10
#define MQNIC_QUEUE_PROD_PTR_REG      0x10
#define MQNIC_QUEUE_CONS_PTR_REG      0x12

#define MQNIC_QUEUE_ENABLE_MASK  0x00000001
#define MQNIC_QUEUE_ACTIVE_MASK  0x00000008
#define MQNIC_QUEUE_PTR_MASK     0xFFFF
#define MQNIC_QUEUE_PRIORITY_MASK 0x1F800000
#define MQNIC_QUEUE_PKTLENGTH_MASK 0x007F0000

#define MQNIC_QUEUE_CMD_SET_VF_ID     0x80010000
#define MQNIC_QUEUE_CMD_SET_SIZE      0x80020000
#define MQNIC_QUEUE_CMD_SET_CQN       0xC0000000
#define MQNIC_QUEUE_CMD_SET_PROD_PTR  0x80800000
#define MQNIC_QUEUE_CMD_SET_CONS_PTR  0x80900000
#define MQNIC_QUEUE_CMD_SET_PRIORITY  0xE0000000
#define MQNIC_QUEUE_CMD_SET_ENABLE    0x40000100

#define MQNIC_CQ_BASE_ADDR_VF_REG  0x00
#define MQNIC_CQ_CTRL_STATUS_REG   0x08
#define MQNIC_CQ_PTR_REG           0x0C
#define MQNIC_CQ_PROD_PTR_REG      0x0C
#define MQNIC_CQ_CONS_PTR_REG      0x0E

#define MQNIC_CQ_ENABLE_MASK  0x00010000
#define MQNIC_CQ_ARM_MASK     0x00020000
#define MQNIC_CQ_ACTIVE_MASK  0x00080000
#define MQNIC_CQ_PTR_MASK     0xFFFF

#define MQNIC_CQ_CMD_SET_VF_ID         0x80010000
#define MQNIC_CQ_CMD_SET_SIZE          0x80020000
#define MQNIC_CQ_CMD_SET_EQN           0xC0000000
#define MQNIC_CQ_CMD_SET_PROD_PTR      0x80800000
#define MQNIC_CQ_CMD_SET_CONS_PTR      0x80900000
#define MQNIC_CQ_CMD_SET_CONS_PTR_ARM  0x80910000
#define MQNIC_CQ_CMD_SET_ENABLE        0x40000100
#define MQNIC_CQ_CMD_SET_ARM           0x40000200

#define MQNIC_EQ_BASE_ADDR_VF_REG  0x00
#define MQNIC_EQ_CTRL_STATUS_REG   0x08
#define MQNIC_EQ_PTR_REG           0x0C
#define MQNIC_EQ_PROD_PTR_REG      0x0C
#define MQNIC_EQ_CONS_PTR_REG      0x0E

#define MQNIC_EQ_ENABLE_MASK  0x00010000
#define MQNIC_EQ_ARM_MASK     0x00020000
#define MQNIC_EQ_ACTIVE_MASK  0x00080000
#define MQNIC_EQ_PTR_MASK     0xFFFF

#define MQNIC_EQ_CMD_SET_VF_ID         0x80010000
#define MQNIC_EQ_CMD_SET_SIZE          0x80020000
#define MQNIC_EQ_CMD_SET_IRQN          0xC0000000
#define MQNIC_EQ_CMD_SET_PROD_PTR      0x80800000
#define MQNIC_EQ_CMD_SET_CONS_PTR      0x80900000
#define MQNIC_EQ_CMD_SET_CONS_PTR_ARM  0x80910000
#define MQNIC_EQ_CMD_SET_ENABLE        0x40000100
#define MQNIC_EQ_CMD_SET_ARM           0x40000200

#define MQNIC_EVENT_TYPE_CPL 0x0000

#define MQNIC_DESC_SIZE 16
#define MQNIC_CPL_SIZE 32
#define MQNIC_EVENT_SIZE 32

struct mqnic_desc {
	__le16 rsvd0;
	__le16 tx_csum_cmd;
	__le32 len;
	__le64 addr;
};

struct mqnic_cpl {
	__le16 queue;
	__le16 index;
	__le16 len;
	__le16 rsvd0;
	__le32 ts_ns;
	__le16 ts_s;
	__le16 rx_csum;
	__le32 rx_hash;
	__u8 rx_hash_type;
	__u8 port;
	__u8 rsvd2;
	__u8 rsvd3;
	__le32 rsvd4;
	__le32 phase;
};

struct mqnic_event {
	__le16 type;
	__le16 source;
	__le32 rsvd0;
	__le32 rsvd1;
	__le32 rsvd2;
	__le32 rsvd3;
	__le32 rsvd4;
	__le32 rsvd5;
	__le32 phase;
};

#endif /* MQNIC_HW_H */
