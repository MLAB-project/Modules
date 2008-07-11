# ATprogISPUSB02A fash script
# Uses DAPA (Direct Parallel Access) Programmer
read -p "WARNING: Enables external clock. Make sure a crystal is connected to the ATmega8535! 
 Connect a programmer to the ATprogISPUSB02A and set a jumper 'ISP SELECTION' J4 to 'internal' 1-2 close"

avrdude -p atmega8535 -P /dev/parport0 -c dapa -v -U lfuse:w:0xff:m -U hfuse:w:0xdb:m
avrdude -p atmega8535 -P /dev/parport0 -c dapa -U flash:w:stk500.hex:a

echo Set both Reset-Jumpers "ISP sel" J7  to "normal" now 2-3 close
