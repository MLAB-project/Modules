@echo off
rem Davka pro nahrani frimware do ATprogISPUSB02A

rem Nastaveni cisla portu
set PORT=lpt1

rem Nastaveni pouziteho programatoru
set PRG=picoweb

rem Nezapomen prepnout do nahravaciho rezimu
echo Set ISP SELECTION (J4) to position internal (1-2)
pause

rem Naprogramuj propojky a firmware
avrdude -p atmega8535 -P %PORT% -c %PRG% -v -U lfuse:w:0xff:m -U hfuse:w:0xdb:m
avrdude -p atmega8535 -P %PORT% -c %PRG%  -U flash:w:stk500.hex:a

rem Nezapomen prepnout do normalniho rezimu
echo Set ISP SELECTION (J4) to position normal (2-3)
pause
