@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim TB_nexys_PIC_behav -key {Behavioral:sim_1:Functional:TB_nexys_PIC} -tclbatch TB_nexys_PIC.tcl -view D:/LCSE/230211/p2230211/p2230211.srcs/sim_1/imports/230211/p2230211/SimBehPIC.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
