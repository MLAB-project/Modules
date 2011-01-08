#include "1wire.c"

float ds1820_read()
{
   int8 busy=0, temp1, temp2;
   signed int16 temp3;
   float result;

   onewire_reset();
   onewire_write(0xCC);
   onewire_write(0x44);

   while (busy == 0) busy = onewire_read();

   onewire_reset();
   onewire_write(0xCC);
   onewire_write(0xBE);
   temp1 = onewire_read();
   temp2 = onewire_read();
   temp3 = make16(temp2, temp1);

   result = (float) temp3 / 16.0;  //calculation pro DS18B20 with 0.1 deg C

   return(result);
}
