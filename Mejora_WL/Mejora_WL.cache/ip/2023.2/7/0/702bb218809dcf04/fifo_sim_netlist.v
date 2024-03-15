// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 15 20:40:30 2024
// Host        : DESKTOP-T0VUOBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_sim_netlist.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
