@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 14786600facb4d7f8b6223d378e78a7a -m64 --debug typical --relax --mt 2 -L fifo_generator_v13_1_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot TB_nexys_PIC_behav xil_defaultlib.TB_nexys_PIC xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
