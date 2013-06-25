@echo off
rem	Batch generates bitfile for Logic Analyser Demo
rem
rem	Parameters:
rem
rem		18x1024|9x2048 ... select analyser size (width and depth)
rem	
rem	Do not modify srouce files directory structure
rem
rem	Tested with Xilinx ISE WebPack 14.5 with ChipScope License
rem

rem ----- first parameter
set product=%1%
if "%product%"=="18x1024" (
	echo 18x1024
) else if "%product%" == "9x2048" (
	echo 9x2048
) else (
	echo Missing parameter %product%
  	echo usage: %0% 18x1024^|9x2048
	pause 
	exit 1
)
echo.
echo Product: %product%
echo.

rem ----- Set core (top VHDL entity) name
set core=S3AN01_ChipScope

rem ----- Set FPGA part
set fpgaPart=xc3s50an-tqg144-4

rem ----- Find and Set Xilinx Tools
call FindXilinxTools.cmd

rem ----- Set WORK dir
if exist WORK_%core%_%product% rmdir /S /Q WORK_%core%_%product%
mkdir    WORK_%core%_%product%
cd       WORK_%core%_%product%

rem ----- Set TEMP dir (relative to WORK dir)
mkdir    TMP
set      TMP=TMP

rem ----- INPUT UCF and VHDL files (linux format c:/.../... )
set srcPath=../..
set ucfFile=VHDL/S3AN01_ChipScope.ucf

echo vhdl work "%srcPath%/COREGEN/ChipScope_ICON.vhd"		> srcFiles.prj
echo vhdl work "%srcPath%/COREGEN/ChipScope_VIO_FreqSel.vhd"	>>srcFiles.prj	
echo vhdl work "%srcPath%/COREGEN/ChipScope_ILA_9_2048.vhd"	>>srcFiles.prj	

echo vhdl work "%srcPath%/VHDL/S3AN01_ChipScope.vhd"		>>srcFiles.prj

rem ----- SET XST setting
echo set -xsthdpdir "xst"					> setXst.xst
echo run							>>setXst.xst
echo -ifn "srcFiles.prj"					>>setXst.xst
echo -ofn %core%						>>setXst.xst
echo -ofmt NGC							>>setXst.xst
echo -top %core%						>>setXst.xst
echo -iob True							>>setXst.xst
echo -p %fpgaPart%						>>setXst.xst

if "%product%"=="18x1024" (
	echo -generics { ILA_WIDE=TRUE  }			>>setXst.xst 
) else (
	echo -generics { ILA_WIDE=FALSE  }			>>setXst.xst 
)

rem ----- SET BITGEN setting
echo -w				> setBitGen.ut
echo -g ConfigRate:25		>>setBitGen.ut
echo -g UnusedPin:PullUp	>>setBitGen.ut
echo -g DriveDone:Yes		>>setBitGen.ut


call xst -ifn "setXst.xst" -ofn "%core%.log" 
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in xst
	echo ============
	pause
	exit 1
) 

call ngdbuild -intstyle ise -dd _ngo -sd ../../COREGEN -nt timestamp -uc "%srcPath%/%ucfFile%" -p %fpgaPart% %core%.ngc %core%.ngd
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in ngdbuild
	echo =================
	pause
	exit 1
) 

call map -intstyle ise -p %fpgaPart% -cm area -ir off -pr off -c 100 -o %core%.ncd %core%.ngd %core%.pcf 
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in map
	echo ============
	pause
	exit 1
) 

call par -w -intstyle ise -ol high -t 1 %core%.ncd %core%.ncd %core%.pcf
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in par
	echo ============
	pause
	exit 1
) 

call trce -intstyle ise -v 3 -s 4 -n 3 -fastpaths -xml %core%.twx %core%.ncd -o %core%.twr %core%.pcf
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in trace
	echo ==============
	pause
	exit 1
) 

call bitgen -f "setBitGen.ut" %core%.ncd
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in bidgen
	echo ===============
	pause
	exit 1
) 

rem ----- Verify Timing
findstr /B /C:"All constraints were met." %core%.par
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in Timing
	echo ===============
	pause
	exit 1
)

if exist ..\BIN\%XILINX_VERSION% (
	rem ----- Copy result to BIN\{ISE_VER} directory
	copy /Y %core%.bit ..\BIN\%XILINX_VERSION%\%core%_%product%.bit
	rem copy /Y %core%.par ..\BIN\%XILINX_VERSION%\%core%_%product%.par
	rem ----- Remove WORK dir
	rem (bitgen starts wbtc.exe as a secondary process)
	cd ..

	rem Wait for xwebtalk has finished its work (sending stat data to Xilinx)
	echo | set /p=Waiting for WebTalk... 
	:StartLoop
		tasklist | findstr /i /c:"wbtc.exe" > nul
		if %errorlevel% NEQ 0 (
			goto ExitLoop
		)
		sleep 1
		echo | set /p=* 
		goto StartLoop
	)
	:ExitLoop

	rem	Tohle nefunguje, protože výstup wmic je UTF-16 a to finstr neumí
	rem	wmic process | findstr /c:"%core%_%product%"
	rem 	wmic process > ..\"%core%_%product%".wmic

	rmdir /S /Q WORK_%core%_%product%
	exit 0
)
exit 1
