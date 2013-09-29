/*
 * Copyright (c) 2001-2003, Adam Dunkels.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote
 *    products derived from this software without specific prior
 *    written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * This file is part of the uIP TCP/IP stack.
 *
 * $Id: main.c,v 1.10.2.1 2003/10/04 22:54:17 adam Exp $
 *
 */


#include <stdio.h>

#include "uip.h"
#include "uip_arp.h"
#include "httpd.h"
#include "stm32_eth.h"


// Define NULL
#ifndef NULL
#define NULL (void *)0
#endif

// Globals
extern  char gPacketReceived;

/* The start of the uIP buffer, which will contain the frame headers. */
#define pucUIP_Buffer ( ( struct uip_eth_hdr * ) &uip_buf[ 0 ] )

/* uIP update frequencies. */
#define RT_CLOCK_SECOND		( configTICK_RATE_HZ  )
#define uipARP_FREQUENCY	( 20 )
#define uipMAX_BLOCK_TIME	( RT_CLOCK_SECOND / 4 )

// Define Prototypes
void TransmitPacket(void);

/*-----------------------------------------------------------------------------------*/
void uIPMain(void)
{
  u8_t i, arptimer;
  uip_eth_hdr *BUF = (uip_eth_hdr*)uip_buf;
  
  u32 size;
  /* Initialize the uIP TCP/IP stack. */
  uip_init();

  /* Initialize the HTTP server. */
  httpd_init();

  arptimer = 0;
  
  while(1)
  {
    /* Let the tapdev network device driver read an entire IP packet
       into the uip_buf. If it must wait for more than 0.5 seconds, it
       will return with the return value 0. If so, we know that it is
       time to call upon the uip_periodic(). Otherwise, the tapdev has
       received an IP packet that is to be processed by uIP. */

      size = ETH_HandleRxPkt(uip_buf);

      if (size > 0) {
        //printf("Packet! len: %x\r\n", size);
        uip_len = size;
      }

      if(uip_len <= 0x0)
      {
        for(i = 0; i < UIP_CONNS; i++)
        {
     	   uip_periodic(i);

           /* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */

  	   if(uip_len > 0)
           {
              uip_arp_out();
              //printf("Reply! len: %x\r\n", uip_len);
              TransmitPacket();
           }
        }

#if UIP_UDP
      for(i = 0; i < UIP_UDP_CONNS; i++)
      {
	uip_udp_periodic(i);
	/* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
	if(uip_len > 0)
        {
	  uip_arp_out();
          //printf("Reply! len: %x\r\n", uip_len);
          TransmitPacket();
	}
      }
#endif /* UIP_UDP */

      /* Call the ARP timer function every 10 seconds. */
       if(++arptimer == 20)
       {	
          uip_arp_timer();
          arptimer = 0;
       }
    }

    else
    {
      if(BUF->type == htons(UIP_ETHTYPE_IP))
      {
	  uip_arp_ipin();
          uip_input();

         /* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */
 	   if(uip_len > 0)
           {
	     uip_arp_out();
             //printf("Reply! len: %x\r\n", uip_len);
             TransmitPacket();
	   }
      }
      else if(BUF->type == htons(UIP_ETHTYPE_ARP))
      {
	uip_arp_arpin();

	/* If the above function invocation resulted in data that
	   should be sent out on the network, the global variable
	   uip_len is set to a value > 0. */	
	if(uip_len > 0)
        {
          //printf("Reply! len: %x\r\n", uip_len);
          TransmitPacket();
	}
      }
    }
  }
}

/*-----------------------------------------------------------------------------------*/

void TransmitPacket(void)
{
      int i;
     u8 data[1500];

      // Copy the header portion part
      for(i=0; i < (UIP_LLH_LEN + 40); ++i) {
         data[i] =  uip_buf[i];
      }

      // Copy the data portion part
      for(; i < uip_len; ++i) {
          data[i] =  uip_appdata[i - UIP_LLH_LEN - 40 ];
      }

      ETH_HandleTxPkt(data,uip_len);
}

/*-----------------------------------------------------------------------------------*/
void uip_log(char *m)
{
  //printf("uIP log message: %s\n", m);
}

void udp_appcall(void)
{
}


/*-----------------------------------------------------------------------------------*/
