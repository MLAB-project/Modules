@echo off
rem	Batch to (re)generate IP cores (ChipScope components)
rem	Run once, takes several minutes to finish.
rem
rem	Do not modify source files directory structure
rem
rem	Tested with Xilinx ISE WebPack 13.3 and 14.5
rem	This step does not require ChipScope License
rem


rem ----- Find and Set Xilinx Tools
call FindXilinxTools.cmd


rem ----- Run Coregen in paralel (we all have multicore cpu don't we?)
rem Unfortunately CoreGen can't be run in parallel.
rem There is some conflict (You cenrtainly know what all that cores are good for...)
rem start "CoreGen ICON"        coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ICON.xco        -r
rem start "CoreGen ILA 18x1024" coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ILA_18_1024.xco -r
rem start "CoreGen ILA 9x2048"  coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ILA_9_2048.xco  -r
rem start "CoreGen VIO FreqSel" coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_VIO_FreqSel.xco -r
rem start "CoreGen VIO UserOut" coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_VIO_UserOut.xco -r


rem ----- Run CoreGen one after one for all components
coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ICON.xco        -r
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in coregen ChipScope_ICON
	echo ===============================
	pause
	exit 1
) 

coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ILA_18_1024.xco -r
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in coregen ChipScope_ILA_18_1024
	echo ======================================
	pause
	exit 1
) 

coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_ILA_9_2048.xco  -r
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in coregen ChipScope_ILA_9_2048
	echo =====================================
	pause
	exit 1
) 

coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_VIO_FreqSel.xco -r
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in coregen ChipScope_VIO_FreqSel
	echo ======================================
	pause
	exit 1
) 

coregen -p ..\COREGEN -b ..\COREGEN\ChipScope_VIO_UserOut.xco -r
if %errorlevel% NEQ 0 (
	echo.
	echo.
	echo ERROR in coregen ChipScope_VIO_UserOut
	echo ======================================
	pause
	exit 1
) 


rem ----- Finished
rm coregen.log
echo.
echo CoreGen Finished with no Errors
