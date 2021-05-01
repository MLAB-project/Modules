@echo off
rem Finds installation of Xilinx tools and makes necessary env settings

rem ----- Set 32/64 bit
if Defined PROCESSOR_ARCHITEW6432 (
	Set ProcArch=%PROCESSOR_ARCHITEW6432%
) else (
	Set ProcArch=%PROCESSOR_ARCHITECTURE%
)
if "%ProcArch%" == "AMD64" Set ProcArch=x64
rem echo %ProcArch%
if "%ProcArch%" == "x64" (
  set fileXilinxSet=settings64.bat
) else (
  set fileXilinxSet=settings32.bat
)

rem ----- Find Xilinx directory
echo Find Xilinx Tools
for %%i in (C:\SW32\Xilinx C:\Xilinx) do (
  rem Take the last directory
  for /F %%j in ('dir %%i\*.* /AD /B /O-N') do (
    for %%k in (%%i\%%j\ISE_DS) do (
      rem echo %%j\%fileXilinxSet%
      if exist %%k\%fileXilinxSet% (
        echo Found at %%k\%fileXilinxSet%
        call %%k\%fileXilinxSet%
	set XILINX_VERSION=%%j
	if not "%1"=="" (
		rem Call script
		call %1
	) else (
		rem Just set env
	        goto Label1
	)
      )
    )
  )
)
:Label1
