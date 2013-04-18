void set_mag (void) //uvodni nastaveni na kontinualni mereni, rozsah ± 8.1 Ga, frekvence mereni 15HZ
{
  i2c_start();       //nastavení Configuration Register A
  I2C_Write(MAG_ADDR_W);     
  I2C_Write(0x00);   
  I2C_Write(0x70);
  i2c_stop();
  Delay_ms(6);
   
  i2c_start();       //nastavení Configuration Register B
  I2C_Write(MAG_ADDR_W);     
  I2C_Write(0x01);   
  I2C_Write(MAG_ROZ810);
  i2c_stop();

  Delay_ms(6);

  i2c_start();          //nastveni Mode Register 
  I2C_Write(MAG_ADDR_W);     
  I2C_Write(0x02);   
  I2C_Write(0x00);
  i2c_stop();
  Delay_ms(6);  
}

void set_mag_roz (unsigned int8 h) //nastavy rozsah
{

//
  
   
  i2c_start();       
  I2C_Write(MAG_ADDR_W);     
  I2C_Write(0x01);   
  I2C_Write(h);
  i2c_stop();

  Delay_ms(6);

 
}


byte mag_read(byte reg) //pro cteni reg
{
 
   i2c_start();
   I2C_Write(MAG_ADDR_W);
   I2C_write(reg);
   i2c_stop();
   i2c_start();
   I2C_Write(MAG_ADDR_R);
   reg=i2c_read(0);
  return reg;
}


signed int16 mag_vypocet(unsigned int8 h, unsigned int8 l) //prepocet na 16bit cislo
{
signed int16 x;
x = (((unsigned int16) h << 8) + l );
return x;   
}


signed int16 mag_readX(void) //nacteni osy x
{
unsigned int8 h,l;
signed int16 x;
h=mag_read(0x03);
l=mag_read(0x04);
x=mag_vypocet(h,l);
return x;
   
}


signed int16 mag_readY(void) //nacteni osy x
{
unsigned int8 h,l;
signed int16 x;
h=mag_read(0x07);
l=mag_read(0x08);
x=mag_vypocet(h,l);
return x;
   
}


signed int16 mag_readZ(void) //nacteni osy x
{
unsigned int8 h,l;
signed int16 x;
h=mag_read(0x05);
l=mag_read(0x06);
x=mag_vypocet(h,l);
return x;
   
}


