// Infracervene tykadlo IRFEE01A
// -----------------------------
//
// (c)miho@mlab.cz
//
// 1.00 - zakladni funkcni verze
// 1.01 - doplnena moznost s externim nastavenim parametru 
// 1.02 - oprava spravneho poctu generovanych impulsu

// Prirazeni portu
// ---------------
//
// Procesor:
//
//   ATtiny13 @ 9.6MHz (interni RC oscilator, vypnuty preddelic 1:8)
//                     (brown-out reset 2.7V)
//   HIGH 0xFB
//   LOW  0x7A
//
// Porty:
//
//   PB1 - Ir LED Anoda proti zemi (svetlo=H)
//   PB3 - Vstup od prijimace Ir signalu (tma=H)
//   PB4 - Indikacni LED a vystup (odraz=H)
//
// Princip funkce:
//
//   Pomoci casovace v rezimu CTC se na vystupu PB1 generuje signal
//   o prislusnem kmitoctu (napr 34kHz). Stridavy signal se zapina
//   a vypina (vysilaji se jednotky a nuly) a na prijimacim portu 
//   se testuje, zda pri vysilani signalu je signal prijat a zda bez
//   vysilani signalu signal prijat neni. Pokud je splnena tato podminka,
//   zvysi se citac prubezne hodnoty, jinak se naopak tento citac snizi.
//   Trvani jednoho symbolu je dano konstantnou SYMBOL_LENGTH.
//   
//   Je-li dosazeno maximalni/minimalni hodnoty prubezneho citace,
//   hodnota se dale nezvysuje/nesnizuje. Pri prekroceni (velke kladne)
//   hodnoty pro zapnuti se aktivuje vystup, pri poklesu hodnoty pod 
//   spodni (mensi kladnou) mez se vystup deaktivuje. Meze jsou definovany
//   konstantami SUMA_xxx.
//
//   Cilem tohoto opatreni je docilit odolnosti proti ruseni a zavedeni
//   hystereze tak, aby vystupni signal byl stabilni a spolehlivy.
//

#ifndef F_CPU
#define F_CPU			9600000UL	// 9.6MHz je maximální interní frekvence pro ATtiny
#endif

#ifndef IR_FREQUENCY
#define IR_FREQUENCY	36000UL		// Frekvece IR signalu
#endif

#ifndef CALIBRATION
#define CALIBRATION		0			// Zpresneni kalibrace na 9.6MHz 0=nekompenzovat
#endif

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define SYMBOL_LENGTH	10			// Pocet period jednoho symbolu
#define SUMA_MAX		40			// Maximalni (a minimalni) pocet
#define SUMA_ON			30			// Pocet pro zapnuti
#define SUMA_OFF		0			// Pocet pro vypnuti


// Zpracovani preruseni od dosazeni horni hranice citace
// -----------------------------------------------------
//   Citac cita (automaticky a opakovane) od 0 do hodnoty v registru OCR0A
//   Pri dosazeni horni meze se neguje vystupni signal na kanalu B
//   Ma-li se vysilat tma, signal na kanalu B se neotaci ale nuluje
ISR(TIM0_COMPA_vect)
{
	static unsigned char SymbolLen;		// Citac pulperiod symbolu
	static unsigned char SymbolState;	// Stridame 0 a 1 symboly

	static signed char InData;			// Zde se strada pocet shod od dvojice symbolu
	static signed char InSuma;			// Zde se prumeruji shody

	// Citac pulperiod symbolu
	if(++SymbolLen>=(SYMBOL_LENGTH*2-1))
	{

		// Konec symbolu - zaciname citat pocet pulperiod od zacatku
		SymbolLen=0;

		// Cteme stav vstupu a porovnavame s ocekavanou hodnotou
		//   (1 na portu znamena tmu)
		if(((PINB & 0x10)>>4) ^ (SymbolState&1) ^ 1)
			InData++;
		else
			InData--;

		// Symboly 0 1 vyhodnocujeme po dvojicich
		if(!SymbolState)
		{
			// Add Result
			if (InData==2)
			{
				InSuma++;		// Byla shoda u obou symbolu, zapocteme
			}
			else
			{
				InSuma--;		// Nebyla shoda u obou symbolu, odpocteme
			}

			// Jdeme na dalsi dvojici symbolu
			InData=0;
		}

		// Osetrime prubezny soucet tak, aby nepretekl
		if(InSuma>SUMA_MAX)
		{
			InSuma=SUMA_MAX;
		}
		if(InSuma<-SUMA_MAX)
		{
			InSuma=-SUMA_MAX;
		}

		// Vyhodnoceni prubezneho souctu
		if(InSuma>SUMA_ON)
		{
			PORTB |= 0x08;		// Zapni vystup (je signal)
		}
		if(InSuma<SUMA_OFF)
		{
			PORTB &= ~0x08;		// Vypni vystup (neni signal)
		}

		// Dalsi symbol
		//   Stridame 0 a 1 (tma a svetlo)
		if(++SymbolState>=2)
		{
			SymbolState=0;
		}

		// Generujeme svetlo a tmu (nastavenim casovace)
		if(SymbolState==0)
		{
			TCCR0A = 0x12;		// Blikej (svetlo)
		}
		else
		{
			TCCR0A = 0x22;		// Tma (vystup casovace se jen nuluje)
		}
	}
}

// Hlavni program
int main()
{
	// Nastaveni prostredi behu
	// ------------------------

	// Kompenzace vnitrniho RC oscilatoru
	OSCCAL += CALIBRATION;

	// Nastav rezim casovace
	//   CTC Mod
	//   Toogle B
	//   CLK x 1
	TCCR0A = 0x12;
	TCCR0B = 0x01;

	// Set frequency
	OCR0A = (F_CPU / IR_FREQUENCY) / 2 - 1;
	//OCR0B = 0;

	// Nastav preruseni
	TIMSK0 = 4;		// Preruseni od kompare na A (citac proti registru OCR0A)
	//TIFR0 = 0;	// Priznak preruseni se nuluje automaticky (HW)
	sei();			// Povol globalni preruseni

	// Nastaveni vyvodu PB1 PB3 jako vystup
	DDRB |=0x02;	// PB1 vystup pro IR Led
	DDRB |=0x08;	// PB3 vystup pro indikacni Led

	// Hlavni program
	// --------------
	//   Nedela nic, vsechno se dela v obsluze preruseni
	//   od casovace.

	for(;;);
}
