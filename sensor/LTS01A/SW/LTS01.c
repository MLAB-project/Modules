float LTS01_get_temp()
{
int8 MSB, LSB;

   i2c_start();
   I2C_Write(LTS01A_address);
   I2C_write(0x00);
   i2c_stop();
   i2c_start();
   I2C_Write(LTS01A_address+1);
   MSB=i2c_read(1);
   LSB=i2c_read(0);
   i2c_stop(); 
   
  return (MAKE16(MSB,LSB) * 0.00390625 );
}
