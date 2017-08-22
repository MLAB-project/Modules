

#define TDC_CLKHS 6000000     // frequency of highspeed oscillator

//register 0
#define  TDC_NEG_START_INV  1
#define  TDC_NEG_START  0
#define  TDC_NEG_STOP1_INV  1
#define  TDC_NEG_STOP1  0
#define  TDC_NEG_STOP2_INV  1
#define  TDC_NEG_STOP2  0
#define  TDC_MRANGE1  0
#define  TDC_MRANGE2  1
#define  TDC_AUTOCAL_EN  0
#define  TDC_AUTOCAL_DIS  1
#define  TDC_CALIBRATE_EN  1
#define  TDC_CALIBRATE_DIS  0
#define  TDC_TSELCLK_32KHZ  0
#define  TDC_TSELCLK_128HS  1
#define  TDC_TFAKENUM_2  0
#define  TDC_TFAKENUM_8  1
#define  TDC_TCYCLE_SHORT  0
#define  TDC_TCYCLE_LONG  1
#define  TDC_TPORTNUM_2  0
#define  TDC_TPORTNUM_4  1
#define  TDC_CLKHS_OFF  0
#define  TDC_CLKHS_ON  1
#define  TDC_CLKHS_640US  2
#define  TDC_CLKHS_1280US  4
#define  TDC_CLKHSDIV_1  0
#define  TDC_CLKHSDIV_2  1
#define  TDC_CLKHSDIV_4  2
#define  TDC_CLKHSDIV_8  3
#define  TDC_CALPERIODS_2  0
#define  TDC_CALPERIODS_4  1
#define  TDC_CALPERIODS_8  2
#define  TDC_CALPERIODS_16  3

#define  TDC_DIV_FIRE_2  1
#define  TDC_DIV_FIRE_3  2
#define  TDC_DIV_FIRE_4  3
#define  TDC_DIV_FIRE_5  4
#define  TDC_DIV_FIRE_6  5
#define  TDC_DIV_FIRE_7  6
#define  TDC_DIV_FIRE_8  7
#define  TDC_DIV_FIRE_9  8
#define  TDC_DIV_FIRE_10  9
#define  TDC_DIV_FIRE_11  10
#define  TDC_DIV_FIRE_12  11
#define  TDC_DIV_FIRE_13  12
#define  TDC_DIV_FIRE_14  13
#define  TDC_DIV_FIRE_15  14
#define  TDC_DIV_FIRE_16  15

#define  TDC_FIRENUM_0  0
#define  TDC_FIRENUM_1  1
#define  TDC_FIRENUM_2  2
#define  TDC_FIRENUM_3  3
#define  TDC_FIRENUM_4  4
#define  TDC_FIRENUM_5  5
#define  TDC_FIRENUM_6  6
#define  TDC_FIRENUM_7  7
#define  TDC_FIRENUM_8  8
#define  TDC_FIRENUM_9  9
#define  TDC_FIRENUM_10  10
#define  TDC_FIRENUM_11  11
#define  TDC_FIRENUM_12  12
#define  TDC_FIRENUM_13  13
#define  TDC_FIRENUM_14  14
#define  TDC_FIRENUM_15  15

//register 1
#define  TDC_HITIN1_0 0
#define  TDC_HITIN1_1 1
#define  TDC_HITIN1_2 2
#define  TDC_HITIN1_3 3
#define  TDC_HITIN1_4 4

#define  TDC_HITIN2_0 0
#define  TDC_HITIN2_1 1
#define  TDC_HITIN2_2 2
#define  TDC_HITIN2_3 3
#define  TDC_HITIN2_4 4

#define  TDC_FAST_INIT_EN 1
#define  TDC_FAST_INIT_DIS 0

#define  TDC_MRANGE1_HIT1_START  0
#define  TDC_MRANGE1_HIT1_1CH1  1
#define  TDC_MRANGE1_HIT1_2CH1  2
#define  TDC_MRANGE1_HIT1_3CH1  3
#define  TDC_MRANGE1_HIT1_4CH1  4
#define  TDC_MRANGE1_HIT1_NOAC  5
#define  TDC_MRANGE1_HIT1_CAL1CH1  6
#define  TDC_MRANGE1_HIT1_CAL2CH1  7
#define  TDC_MRANGE1_HIT1_1CH2  9
#define  TDC_MRANGE1_HIT1_2CH2  0xA
#define  TDC_MRANGE1_HIT1_3CH2  0xB
#define  TDC_MRANGE1_HIT1_4CH2  0xC

#define  TDC_MRANGE2_HIT1_START  1

#define  TDC_MRANGE1_HIT2_START  0
#define  TDC_MRANGE1_HIT2_1CH1  1
#define  TDC_MRANGE1_HIT2_2CH1  2
#define  TDC_MRANGE1_HIT2_3CH1  3
#define  TDC_MRANGE1_HIT2_4CH1  4
#define  TDC_MRANGE1_HIT2_NOAC  5
#define  TDC_MRANGE1_HIT2_CAL1CH1  6
#define  TDC_MRANGE1_HIT2_CAL2CH1  7
#define  TDC_MRANGE1_HIT2_1CH2  9
#define  TDC_MRANGE1_HIT2_2CH2  0xA
#define  TDC_MRANGE1_HIT2_3CH2  0xB
#define  TDC_MRANGE1_HIT2_4CH2  0xC

#define  TDC_MRANGE2_HIT2_1CH1  2
#define  TDC_MRANGE2_HIT2_2CH1  3
#define  TDC_MRANGE2_HIT2_3CH1  4

//register 2
#define  TDC_INT_TIMEOUT  4
#define  TDC_INT_ENDHIT  2
#define  TDC_INT_ALU  1
#define  TDC_CH1EDGE_RIS  0
#define  TDC_CH1EDGE_FAL_RIS  1
#define  TDC_CH2EDGE_RIS  0
#define  TDC_CH2EDGE_FAL_RIS  1

//register 3
#define  TDC_TIM0MR2_256CLKHS  0
#define  TDC_TIM0MR2_1024CLKHS  1
#define  TDC_TIM0MR2_4096CLKHS  2
#define  TDC_TIM0MR2_16384CLKHS  3

#define  TDC_ERRVAL_EN  1
#define  TDC_ERRVAL_DIS  0

//register 5
#define  TDC_REPEAT_FIRE_0  0
#define  TDC_REPEAT_FIRE_1  1
#define  TDC_REPEAT_FIRE_2  2
#define  TDC_REPEAT_FIRE_3  3
#define  TDC_REPEAT_FIRE_4  4
#define  TDC_REPEAT_FIRE_5  5
#define  TDC_REPEAT_FIRE_6  6
#define  TDC_REPEAT_FIRE_7  7

#define  TDC_PHASENOISE_EN  0
#define  TDC_PHASENOISE_DIS  1

#define  TDC_STARTNOISE_EN  1
#define  TDC_STARTNOISE_DIS  0

#include "GP2.c"
