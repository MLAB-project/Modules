#include <16F887.h>
#device *=16
#device adc=8
#device PASS_STRINGS=IN_RAM
#zero_ram
#FUSES NOWDT                     //No Watch Dog Timer
#FUSES INTRC_IO                  //Internal RC Osc, no CLKOUT
#FUSES PUT                       //Power Up Timer
#FUSES MCLR                      //Master Clear pin enabled
#FUSES NOPROTECT                 //Code protected from reads
#FUSES NOCPD                     //No EE protection
#FUSES BROWNOUT                  //Reset when brownout detected
#FUSES NOIESO                    //Internal External Switch Over mode disabled
#FUSES NOFCMEN                   //Fail-safe clock monitor disabled
#FUSES NOLVP                     //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NODEBUG                   //No Debug mode for ICD
#FUSES NOWRT                     //Program memory not write protected
#FUSES BORV21                    //Brownout reset at 2.1V
#use delay(clock=8000000,RESTART_WDT)
//#use rs232(baud=9600,parity=N,xmit=TXD,rcv=RXD,bits=8,errors)
#use rs232(baud=9600,parity=N,xmit=PIN_B7,rcv=PIN_B6,bits=8)


/*$F*************************************************************************
*
* Copyright (C)pa 2004 Mark Norton
*
* Permission is hereby granted, free of charge, to any person obtaining
* a copy of this software and associated documentation files (the
* "Software"), to deal in the Software without restriction, including
* without limitation the rights to use, copy, modify, merge, publish,
* distribute, sublicense, and/or sell copies of the Software, and to
* permit persons to whom the Software is furnished to do so, subject to
* the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
* Functional
* Description:  Implementation of sscanf() function for the CCS compiler
*
*****************************************************************************/
#include <string.h>
#include <stdlib.h>

/* Uncomment any of these to reduce the code size
   Note that the HEX is a big hog
*/
#define NO_FLOAT
// #define NO_INT
// #define NO_SIGNED_INT
// #define NO_STRING
// #define NO_HEX

/* *************************************************************************
  DESCRIPTION:  Converts string pointed to by s to an unsigned long (16 bit)
  RETURN: result of the conversion
  ALGORITHM:  none
  NOTES:  the next position in the string is returned in endptr
 *************************************************************************** */
long my_atoul(char *s, char *endptr, int base)
{
  signed long result;
  int index;
  char c;

  index = 0;
  result = 0;
  *endptr = s;

  if (( !s ) || ( !*s ))
    return ( 0 );

  c = *s;

  // increase index if positive sign is detected
  if (c == '+')
  {
    c = *(++s);
  }

  // The number is a decimal number
  if (base == 10)
  {
    while (c >= '0' && c <= '9')
    {
      result = 10*result + (c - '0');
      c = *(++s);
    }
  }
  else if (base == 16)    // The number is a hexa number
  {
    if (c == '0' && (*(s+1) == 'x' || *(s+1) == 'X'))
    {
      s += 2;
      c = *s;
    }

    c = toupper(c);
    while (true)
    {
      if (c >= '0' && c <= '9')
        result = (result << 4) + (c - '0');
      else if (c >= 'A' && c <='F')
        result = (result << 4) + (c - 'A' + 10);
      else
        break;
      c = toupper(*(++s));
    }
  }
  *endptr = s;
  return(result);
}

/* *************************************************************************
  DESCRIPTION:  Converts string pointed to by s to a float
  RETURN: result of the conversion
  ALGORITHM:  none
  NOTES:  the next position in the string is returned in endptr
 *************************************************************************** */
float my_atof(char * s, char *endptr)
{
  float pow10 = 1.0;
  float result = 0.0;
  int sign = 0;
  char c;

  c = *s;

  if(c == '-')
  {
    sign = 1;
    c = *(++s);
  }
  else if(c == '+')
    c = *(++s);


  while((c >= '0' && c <= '9'))
  {
    result = 10*result + c - '0';
    c = *(++s);
  }

  if (c == '.')
  {
    c = *(++s);
    while((c >= '0' && c <= '9'))
    {
      pow10 = pow10*10;
      result += (c - '0')/pow10;
      c = *(++s);
    }
  }

   if (sign == 1)
     result = -1*result;

  *endptr = s;
  return(result);
}


/* *************************************************************************
  DESCRIPTION:  Implementation of scanf() using CCS C compiler
  RETURN: total number of arguments read
  ALGORITHM:  none
  NOTES:  none
 *************************************************************************** */
int8 sscanf(
  char  *buf,    /* pointer to the buffer that we are scanning */
  char  *fmt,    /* pointer to the format string */
  char  *pArgs)  /* pointer to array of arguments */
{

  int8        count = 0;
  char        *p;
  int1        size_long;
  int1        sign;
  char        *endptr;

  while (true)
  {
   /* Look to see if we are out of arguments */
   if ( !pArgs )
     return( count );

   /* Gobble up the fmt string */
    while (*buf == *fmt)
    {
      if ((*buf == 0) || (*fmt == 0))
        return (count);
      buf++;
      fmt++;
    }

    /* Check for the % */
    if (*fmt != '%')
      break;

    /* fmt should be '%' go to the next character */
    fmt++;

    /* get the size modifier */
    switch (*fmt)
    {
      case 'l':
      case 'L':
        fmt++;
        size_long = TRUE;
        break;
      default:
        size_long = FALSE;
        break;
    }

    /* fmt should point to our first conversion letter at this point */
    switch (*fmt)
    {
#ifndef NO_FLOAT
      case 'f':
      case 'F':
        /* Get a pointer to this argument */
        p = (float *)(*pArgs);

        /* convert to a number */
        *(float *)p = (float)my_atof(buf, &endptr);

        /* Make sure that we succeeded */
        if ( buf == endptr )
          return ( count );
        buf = endptr;

        /* count this one */
        count++;
        break;
#endif
#ifndef NO_SIGNED_INT
      case 'd':
      case 'D':
        /* Get a pointer to this argument */
        p = (signed int8 *)(*pArgs);
        if (*buf == '-')
        {
          buf++;
          sign = TRUE;
        }
        else
          sign = FALSE;

        /* convert to a number */
        if ( size_long )
        {
          *(signed int16 *)p = (signed int16)my_atoul(buf, &endptr, 10);
          if (sign)
            *(signed int16 *)p = -(*(signed int16 *)p);
        }
        else
        {
          *(signed int8 *)p = (signed int8)my_atoul(buf, &endptr, 10);
          if (sign)
            *(signed int8 *)p = -(*(signed int8 *)p);
        }
        /* Make sure that we succeeded */
        if ( buf == endptr )
          return ( count );
        buf = endptr;

        /* count this one */
        count++;
        break;
#endif
#ifndef NO_INT
      case 'u':
      case 'U':
        /* Get a pointer to this argument */
        p = (int8 *)(*pArgs);

        /* convert to a number */
        if ( size_long )
          *(int16 *)p = (int16) my_atoul(buf, &endptr, 10);
        else
          *(int8 *)p = (int8) my_atoul(buf, &endptr, 10);

        /* Make sure that we succeeded */
        if ( buf == endptr )
          return ( count );
        buf = endptr;

        /* count this one */
        count++;
        break;
#endif
#ifndef NO_STRING
      case 's':
        /* Get a pointer to this argument */
        p = (char *)(*pArgs);

        /* copy the chars */
        while (true)
        {
          if ((isspace(*buf)) || (!*buf))
          {
            *p = 0;
            break;
          }
          else
          {
            *p = *buf;
            p++;
            buf++;
          }
        }

        /* count this one */
        count++;
        break;
#endif
#ifndef NO_HEX
      case 'x':
      case 'X':
        /* Get a pointer to this argument */
        p = (int8 *)(*pArgs);

        /* convert to a number */
        if ( size_long )
          *(int16 *)p = (int16) my_atoul(buf, &endptr, 16);
        else
          *(int8 *)p = (int8) my_atoul(buf, &endptr, 16);

        /* Make sure that we succeeded */
        if ( buf == endptr )
          return ( count );
        buf = endptr;

        /* count this one */
        count++;
        break;
#endif
      /* unhandled format specifier */
      default:
        return (count);
    }
    /* Technically this is incorrect but since the size of all pointers
       are the same, who cares ;)

       point to the next argument
    */
    pArgs += sizeof(char *);
   
    /* Move to the next format char */
    fmt++;
  }

  return (count);
}



void main() {
    char x;
    char sbuffer[64];
    char cmd=0,param=0;
    
    char arglist[2];
   arglist[0] = &cmd;   
   arglist[1] = &param;


    set_tris_a(0x80);
    port_b_pullups(0xFF);
    set_tris_b(0xFF);
    set_tris_d(0);
    set_tris_e(0x01);
    setup_oscillator(OSC_8MHZ);
    setup_adc_ports(sAN5|VSS_VDD);
    setup_adc(ADC_CLOCK_INTERNAL);
    set_adc_channel(5);
    setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
    setup_timer_1(T1_INTERNAL|T1_DIV_BY_2);
    setup_timer_2(T2_DIV_BY_16, 155, 1);
    setup_ccp1(CCP_PWM);
    set_pwm1_duty(75);
    setup_comparator(NC_NC_NC_NC);

sprintf(sbuffer,"/S 30\r\n");
x = sscanf(sbuffer,"/%C %d", arglist);
printf("\r\nsscanf sez: %u found, cmd %X param %X\r\n",x,cmd,param);

} 
