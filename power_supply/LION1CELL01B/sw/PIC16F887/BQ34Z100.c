int16 cteniBAT(byte lsb, byte msb)
 { 
 int16 data = 0;
 unsigned int8 h, l;
   i2c_start();
   I2C_Write(BAT_ADDR_W);
   I2C_write(lsb);
  
   i2c_start();
   I2C_Write(BAT_ADDR_R);
   l=i2c_read(0);
   i2c_stop();
   
   i2c_start();
   I2C_Write(BAT_ADDR_W);
   I2C_write(msb);
   i2c_start();
   I2C_Write(BAT_ADDR_R);
   h=i2c_read(0);
   i2c_stop();
   
   return data = (((unsigned int16) h << 8) + l );
   } 
    
int16 batintT(void) //teplota baterie (pri vyrobnim nastaveni, je mozne zmenit na teplotu v IO
{ 
int16 data = cteniBAT(0x0C, 0x0D);
data = (data/10)-273;
return data;

}   

int16 batNAP(void) //napeti baterie
{ 
int16 data = cteniBAT(0x08, 0x09);
return data;

}

int16 batPROUD(void) //proud z nebo do baterie
{ 
int16 data = cteniBAT(0x0A, 0x0B);
return data;

}

int16 batKAPAKT(void) //zbyvajici kapacita
{ 
int16 data = cteniBAT(0x04, 0x05);
return data;

}
int16 batKAPMAX(void) //max. kapacita
{ 
int16 data = cteniBAT(0x06, 0x07);
return data;

}

int16 batSTAV(void) //zbytek energie v baterii v %
{ 
int16 data = cteniBAT(0x02, 0x03);
return data;

}