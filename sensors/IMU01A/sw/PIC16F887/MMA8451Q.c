void setAK (void) //nastaveni akcelerometru
{
   i2c_start();
   I2C_Write(AK_W);
   I2C_write(0x2A);
   I2C_write(0x01); //nastavi aktivni stav
 
   i2c_stop(); 
}


int16 akR (int8 H, int8 L) //vycitani hodnot z akcelerometru
{
unsigned int8 XL=0,XH=0;
signed int16 x;

   i2c_start();
   I2C_Write(AK_W);
   I2C_write(H);
   i2c_start();
   I2C_Write(AK_R);
   XH=i2c_read(0);
   i2c_stop(); 

   i2c_start();
   I2C_Write(AK_W);
   I2C_write(L);
   i2c_start();
   I2C_Write(AK_R);
   XL=i2c_read(0);
   i2c_stop();
   
   x = (((unsigned int16) XH << 8) + XL ); //prevod na 16bit hodnotu
   x=x/4;
   
   return x;
}

int16 akX (void)
{
int16 X;
X= akR (AK_XH, AK_XL);
return X;
}

int16 akY (void)
{
int16 Y;
Y= akR (AK_YH, AK_YL);
return Y;
}

int16 akZ (void)
{
int16 Z;
Z= akR (AK_ZH, AK_ZL);
return Z;
}

