//------------------------------
// Low level routines
//------------------------------
void hmc5883l_write_reg(int8 reg, int8 data)
{
i2c_start();
i2c_write(HMC5883L_WRT_ADDR);
i2c_write(reg);
i2c_write(data);
i2c_stop();
}

//------------------------------
int8 hmc5883l_read_reg(int8 reg)
{
int8 retval;

i2c_start();
i2c_write(HMC5883L_WRT_ADDR);
i2c_write(reg);
i2c_start();
i2c_write(HMC5883L_READ_ADDR);
retval = i2c_read(0);
i2c_stop();

return(retval);
}

//------------------------------
typedef struct
{
signed int16 x;
signed int16 y;
signed int16 z;
}hmc5883l_result;

// This global structure holds the values read
// from the HMC5883L x,y,z registers.
hmc5883l_result compass = {0,0,0};

//------------------------------
void hmc5883l_read_data(void)
{
unsigned int8 x_lsb;
unsigned int8 x_msb;

unsigned int8 y_lsb;
unsigned int8 y_msb;

unsigned int8 z_lsb;
unsigned int8 z_msb;

i2c_start();
i2c_write(HMC5883L_WRT_ADDR);
i2c_write(HMC5883L_X_MSB_REG);  // Point to X-msb register
i2c_start();
i2c_write(HMC5883L_READ_ADDR);

x_msb = i2c_read();
x_lsb = i2c_read();

z_msb = i2c_read();
z_lsb = i2c_read();   

y_msb = i2c_read();
y_lsb = i2c_read(0); // do a NACK on last read

i2c_stop();
 
// Combine high and low bytes into 16-bit values.
compass.x = make16(x_msb, x_lsb);
compass.y = make16(y_msb, y_lsb);
compass.z = make16(z_msb, z_lsb);
}

