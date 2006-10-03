// Ukazkovy program pro blikani na vystupu PC0
// Predpoklada procesor ATmega8 v defaultnim nastaveni
// (interni RC oscilator 1MHz).

#define F_CPU 1000000UL		// 1MHz je deaultni frekvence interniho RC oscilatoru
#include <avr/io.h>
#include <avr/delay.h>

// Spozdeni o libovolny pocet ms
void xDelay_ms(unsigned int Time)
{
	for(;Time!=0;Time--)
		_delay_ms(1);		// Knihovni procedura ma velmi omezen
}							// maximalni cas spozdeni


// Hlavni program
int main()
{

	DDRC |=1;				// Nastav port PCD0 jako vystup

	for(;;)					// Nekonecna smycka
	{
		PORTC |= 1;			// Nastav 1
		xDelay_ms(500);		// Pockej 1/2 sekundy
		PORTC &= ~1;		// Nastav 0
		xDelay_ms(500);		// Pockej 1/2 sekundy
	}
	
	return 0;
}
