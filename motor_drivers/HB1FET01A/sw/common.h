#ifndef __common_h__
#define __common_h__

#define CLRBIT(aReg,aBit) (aReg) &= ~(aBit)
#define SETBIT(aReg,aBit) (aReg) |= (aBit)
#define TOGGLEBIT(aReg,aBit) (aReg) ^= (aBit)
//#define TESTBIT(aValue,aConst) ((aValue & aConst) != 0)
#define TESTBIT(aValue,aConst) ({               \
    uint8_t Temp = (uint8_t)(aValue);           \
    __asm__ (                                   \
        "andi %0, %2" "\n\t"                    \
        "breq L_%="   "\n\t"                    \
        "ldi %0,1"    "\n\t"                    \
        "L_%=: "      "\n\t"                    \
        : "=r" (Temp) : "0" (Temp), "M" (aConst)\
    );                                          \
    Temp;                                       \
})


#if defined BOARD_rs232if
#define BOARD
#elif defined BOARD_umServo32
#define BOARD
#elif defined BOARD_umHBridge
#define BOARD
#elif defined BOARD_NA
#define BOARD
#else
#error BOARD_xxx must be defined
#endif

#endif // __common_h__
