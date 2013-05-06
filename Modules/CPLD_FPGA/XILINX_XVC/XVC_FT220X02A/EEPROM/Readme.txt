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

Pro naprogramov�n� konfigurace obvod� FTDI jsou p�ipraveny xml soubory s vhodn�m
nastaven�m. K progrmov�n� lze pou��t program FT_prog (Windows aplikace), nebo
program FT_Prog-CmdLine (Win32 konzolov� aplikace) volad� z d�vky.

Nem��te �et�zec Product Description. Tak jak je definov�n je pou�it v syst�mu
Linux k automatick�mu odpojen� za��zen� XVC od driveru pro ttyUSB (ftdi_sio).

�et�zec by m�l za��nat takto

MLAB XVC with FT

�et�zec pou�it� v pravidle pro syst�m udev v souboru

/etc/udev/rules.d/10-MLAB-XVC-FTDI.rules
