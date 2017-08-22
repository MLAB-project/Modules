//
// definitions.h - Include file for general definitions
//

#ifndef _DEFINITIONS_H_
#define _DEFINITIONS_H_

#include "common.h"
#include <STM32F_Common.h>

extern vu32 g_nFlags;
#define g_flgTimerReady			(*((vu32*)BITBAND_SRAM(&g_nFlags, 0)))

//**********************************************************
//Definitions for STM32F_Common module - clock subsystem
#define	RCC_USE_HCE

#define	SET_FLASH_Latency		(FLASH_Latency_2 | FLASH_PrefetchBuffer_Enable)

#define	CLK_Config
#define	AHB_CLK_Div			RCC_SYSCLK_Div1
#define	APB1_CLK_Div 		RCC_HCLK_Div2
#define	APB2_CLK_Div 		RCC_HCLK_Div1

#define	RCC_USE_PLL
#define	RCC_PLL_MUL			RCC_PLLMul_9
#define	RCC_PLL_DIV			RCC_PLLSource_HSE_Div1

//**********************************************************
//Definitions for Timer module
#define	SYSTEM_CLOCK		72000000
#define 	SYS_CLOCK_DIV8
// 0x15F90 = 90000 = 72000000 / 8 / 100 ~ 10 msec
// 0x0EA60 = 60000 = 48000000 / 8 / 100 ~ 10 msec
// 0x07530 = 30000 = 24000000 / 8 / 100 ~ 10 msec
// 0x02710 = 10000 = 08000000 / 8 / 100 ~ 10 msec
#define 	CounterPreset		0x15F90

#define 	NumOfTimers			8

//#define _USE_DELAY_US_

#endif
