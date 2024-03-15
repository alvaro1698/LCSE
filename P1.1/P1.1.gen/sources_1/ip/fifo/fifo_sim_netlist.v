// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 15 20:31:10 2024
// Host        : DESKTOP-T0VUOBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Alvaro/Proyectos_vivado/LCSE/P1.1/P1.1.gen/sources_1/ip/fifo/fifo_sim_netlist.v
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
