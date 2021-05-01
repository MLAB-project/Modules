rem Test if programmer is working
rem
rem Fuses:
rem   CPU        EFUSE   HFUSE   LFUSE
rem   ATmega8            C9      9F
rem   ATmega88   F9      DE      D7
rem
avrdude -c usbasp -p atmega88 -F
