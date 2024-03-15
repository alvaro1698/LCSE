-makelib ies_lib/xil_defaultlib -sv \
  "D:/Programas/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Programas/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Programas/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../p2230211.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0_clk_wiz.v" \
  "../../../../p2230211.srcs/sources_1/ip/clk_wiz_0_2/clk_wiz_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

