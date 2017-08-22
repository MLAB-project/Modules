# Linux Shell Script
# ATprogISPUSB02A fash script
# Uses DAPA (Direct Parallel Access) Programmer
read -p "WARNING: Enables external clock. Make sure a crystal is connected to the ATmega8535! 
 Connect a programmer to the ATprogISPUSB02A and set a 'ISP SELECTION' jumper (J4) to 'internal' (1-2)"
avrdude -p atmega8535 -P /dev/parport0 -c dapa -v -U lfuse:w:0xff:m -U hfuse:w:0xdb:m
avrdude -p atmega8535 -P /dev/parport0 -c dapa -U flash:w:stk500.hex:a
echo "If none errors above - Please set 'ISP SELECTION' jumper (J4) to 'normal' (2-3) position."
