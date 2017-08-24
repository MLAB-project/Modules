void SHT25_soft_reset()
{
  i2c_start();     // Start condition
  i2c_write(0x80); // Device address
  i2c_write(0xFE);    // Device command
  i2c_stop();      // Stop condition
}

unsigned int8 SHT25_setup(unsigned int8 setup_reg )  // writes to status register and returns its value
{
unsigned int8 reg;

  i2c_start();     // Start condition
  i2c_write(SHT25_ADDR); // Device address
  i2c_write(0xE7);    // Device command

  i2c_start();     // Start condition
  i2c_write(SHT25_ADDR+1); // Device address
  reg=i2c_read(0);    // Read status actual status register

  reg = (reg & 0x3A) | setup_reg;

  i2c_start();     // Start condition
  i2c_write(SHT25_ADDR); // Device address
  i2c_write(0xE6);    // Write to status register
  i2c_write(reg);    // Device command
  i2c_stop();      // Stop condition

  delay_ms(10);

  i2c_start();     // Start condition
  i2c_write(SHT25_ADDR); // Device address
  i2c_write(0xE7);    // Device command

  i2c_start();     // Start condition
  i2c_write(SHT25_ADDR+1); // Device address
  reg=i2c_read(0);    // Read status actual status register

  return (reg);
}


float SHT25_get_temp()
{
unsigned int8 MSB, LSB, Check;
unsigned int16 data;

   i2c_start();
   I2C_Write(SHT25_ADDR);
   I2C_write(0xE3);
   i2c_stop();
  
   delay_ms(100);
   
   i2c_start();
   I2C_Write(SHT25_ADDR+1);
   MSB=i2c_read(1);
   LSB=i2c_read(1);
   Check=i2c_read(0);
   i2c_stop();
      
   LSB = LSB >> 2; // trow out status bits

   data = (((unsigned int16) MSB << 8) + (LSB << 2));
   return(-46.85 + 175.72*((float)data/0xFFFF));
}

float SHT25_get_hum()
{
unsigned int8 MSB, LSB, Check;
unsigned int16 data;

   i2c_start();   //RH
   I2C_Write(SHT25_ADDR);
   I2C_write(0xE5);

   delay_ms(100);

   i2c_start();
   I2C_Write(SHT25_ADDR+1);
   MSB=i2c_read(1);
   LSB=i2c_read(1);
   Check=i2c_read(0);
   i2c_stop(); 

   LSB = LSB >> 2; // trow out status bits

   data = (((unsigned int16) MSB << 8) + (LSB << 2) );
   return( -6.0 + 125.0*((float)data/0xFFFF));
}      

