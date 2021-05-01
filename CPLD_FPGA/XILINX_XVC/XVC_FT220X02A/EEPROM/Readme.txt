------------- EN -------------

We have prepared xml files with correct EEPROM configuration for your FTDI
device. To program the configuration FT_Prog (Windows application) may be used or
command line program FT_Prog-CmdLine (Win32 console appliaction) may be called
from a batch file.

Do not change Product Description string. It is used in Linux to automaticaly
detect XVC device and to disconnect it from ttyUSB driver (ftdi_sio).

The string should begin with 

MLAB XVC with FT

The string is used by udev rules stored in file

/etc/udev/rules.d/10-MLAB-XVC-FTDI.rules

------------- CS -------------

Pro naprogramování konfigurace obvodù FTDI jsou pøipraveny xml soubory s vhodným
nastavením. K progrmování lze použít program FT_prog (Windows aplikace), nebo
program FT_Prog-CmdLine (Win32 konzolová aplikace) voladý z dávky.

Nemìòte øetìzec Product Description. Tak jak je definován je použit v systému
Linux k automatickému odpojení zaøízení XVC od driveru pro ttyUSB (ftdi_sio).

Øetìzec by mìl zaèínat takto

MLAB XVC with FT

Øetìzec použitù v pravidle pro systém udev v souboru

/etc/udev/rules.d/10-MLAB-XVC-FTDI.rules
