@echo off
rem
rem Script for starting Analyser.exe with predefined settings.
rem The script starts mlab_xvcd.exe deamon for users who use
rem Xilinx Virtual Cable and FTDI JTAG cable. Those users
rem should select in ChipScope Analyser setting
rem JTAG Chain / Open Plug-in.
rem 


rem ----- Run Xilinx Virtual Cable Daemon (as separate process)
rem Run it if you use XVC cable connected to the local computer
rem To start the daemon if already runnig does no harm
if exist ..\..\XILINX_XVC\XVC_SOFTWARE\XVC_1x\BIN\mlab_xvcd.exe (
	start ..\..\XILINX_XVC\XVC_SOFTWARE\XVC_1x\BIN\mlab_xvcd.exe
)


rem ----- Find and Set Xilinx Tools
call FindXilinxTools.cmd


rem ----- Run ChipScope Analyser
analyzer.exe -project ..\ANALYSER\Analyser_9_2048.cpj -init ..\ANALYSER\Analyser.ini
