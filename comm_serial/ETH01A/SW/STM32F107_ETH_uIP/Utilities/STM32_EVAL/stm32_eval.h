#ifndef __STM32_EVAL_H__
#define __STM32_EVAL_H__

#include "stm32f10x_conf.h"

#define LEDn                        4
#define LED1_GPIO_PORT              GPIOB
#define LED1_GPIO_CLK               RCC_APB2Periph_GPIOB
#define LED1_GPIO_PIN               GPIO_Pin_4
  
#define LED2_GPIO_PORT              GPIOB
#define LED2_GPIO_CLK               RCC_APB2Periph_GPIOB
#define LED2_GPIO_PIN               GPIO_Pin_5
  
#define LED3_GPIO_PORT              GPIOB
#define LED3_GPIO_CLK               RCC_APB2Periph_GPIOB
#define LED3_GPIO_PIN               GPIO_Pin_6
  
#define LED4_GPIO_PORT              GPIOB
#define LED4_GPIO_CLK               RCC_APB2Periph_GPIOB
#define LED4_GPIO_PIN               GPIO_Pin_7

typedef enum 
{
  LED1 = 0,
  LED2 = 1,
  LED3 = 2,
  LED4 = 3
} Led_TypeDef;

void STM_EVAL_LEDInit(Led_TypeDef Led);
void STM_EVAL_LEDOn(Led_TypeDef Led);
void STM_EVAL_LEDOff(Led_TypeDef Led);
void STM_EVAL_LEDToggle(Led_TypeDef Led);

#endif /* __STM32_EVAL_H__ */
