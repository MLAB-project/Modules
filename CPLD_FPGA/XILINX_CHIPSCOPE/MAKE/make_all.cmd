@echo off
rem	Batch to generate bitstream
rem
rem		S3AN01_ChipScope_18x1024.bit
rem		S3AN01_ChipScope_9x2048.bit
rem
rem	Do not modify srouce files directory structure
rem
rem	Tested with Xilinx ISE WebPack 14.5 with ChipScope License
rem

rem ----- Check if ChipScope IP Cores are ready
if not exist ..\COREGEN\ChipScope_ICON.vhd		goto coregen
if not exist ..\COREGEN\ChipScope_ILA_18_1024.vhd	goto coregen
if not exist ..\COREGEN\ChipScope_ILA_9_2048.vhd	goto coregen
if not exist ..\COREGEN\ChipScope_VIO_FreqSel.vhd	goto coregen
if not exist ..\COREGEN\ChipScope_VIO_UserOut.vhd	goto coregen
goto next
	:coregen
	rem ----- Regenerate ChipScope IP Cores
	echo.
	echo Missing ChipScope IP Core output files
	echo Regenerating will take a long time (5 minutes on i5-3770)
	echo.
	pause
	call make_CoreGen.cmd
:next

rem ----- Clear target directory
rmdir /S /Q BIN 2> nul
mkdir BIN

rem ----- Get Current date and time
for /F "Tokens=2-4 Delims=. " %%A in ("%DATE%") do (
  set CurDate=%%C_%%B_%%A
)
for /F "Tokens=1-2 Delims=:,. " %%D in ("%TIME: =0%") do (
  set CurTime=%%D_%%E
)

rem ----- Find and Set Xilinx Tools
call FindXilinxTools.cmd
mkdir BIN\%XILINX_VERSION%

rem ----- Create Version metafile
echo TimeStamp:     %CurDate%__%CurTime%>  BIN\%XILINX_VERSION%\Version
echo ComputerName:  %COMPUTERNAME%>> BIN\%XILINX_VERSION%\Version
echo ISE Version:   %XILINX_VERSION%>> BIN\%XILINX_VERSION%\Version
echo ReleaseInfo:   None>> BIN\%XILINX_VERSION%\Version

rem ----- Compile variants (paralel run)
start "compile S3AN01_ChipScope_18x1024"  make_S3AN01_ChipScope.cmd 18x1024
start "compile S3AN01_ChipScope_9x2048"   make_S3AN01_ChipScope.cmd 9x2048
