@echo off
echo "%1"

IF EXIST %1 (
	dfu-util-static.exe -d 0483:df11 -a 0 -D %1 -s 0x8000000:leave
) ELSE (
	echo usage: %0 file_to_flash.bin
)

ping 1.1.1.1 -n 1 -w 2000 > nul