#define MAG_ADDR_R  0x3D //addresa pro cteni
#define MAG_ADDR_W  0x3C


//Konstanty nastavujici rozsah
//pro void set_mag_roz (unsigned int8 h)
#define MAG_ROZ088  0x00
#define MAG_ROZ130  0x20
#define MAG_ROZ190  0x40
#define MAG_ROZ250  0x60
#define MAG_ROZ400  0x80
#define MAG_ROZ470  0xA0
#define MAG_ROZ560  0xC0
#define MAG_ROZ810  0xE0


#include "HMC5883L.c"
