// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 15 19:54:32 2024
// Host        : DESKTOP-T0VUOBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Alvaro/Proyectos_vivado/LCSE/P1/P1.gen/sources_1/ip/fifo/fifo_sim_netlist.v
// Design      : fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module fifo
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
  fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70256)
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
