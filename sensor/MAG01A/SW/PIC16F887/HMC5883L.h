// i2c slave addresses
#define HMC5883L_WRT_ADDR  0x3C
#define HMC5883L_READ_ADDR 0x3D

// Register addresses
#define HMC5883L_CFG_A_REG 0x00
#define HMC5883L_CFG_B_REG 0x01
#define HMC5883L_MODE_REG  0x02
#define HMC5883L_X_MSB_REG 0x03

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
