
void onewire_reset()
{
   output_low(ONE_WIRE_PIN);
   delay_us(500);
   output_float(ONE_WIRE_PIN);
   delay_us(500);
   output_float(ONE_WIRE_PIN);
}


void onewire_write(int data)
{
   int count;

   for (count=0; count<8; ++count)
   {
      output_low(ONE_WIRE_PIN);
      delay_us( 2 );
      output_bit(ONE_WIRE_PIN, shift_right(&data,1,1));

      delay_us( 60 );
      output_float(ONE_WIRE_PIN);
      delay_us( 2 );
   }
}


int onewire_read()
{
   int count, data;

   for (count=0; count<8; ++count)
   {
      output_low(ONE_WIRE_PIN);
      delay_us( 2 );
      output_float(ONE_WIRE_PIN);
      delay_us( 8 );
      shift_right(&data,1,input(ONE_WIRE_PIN));
      delay_us( 120 );
   }
   return( data );
}
