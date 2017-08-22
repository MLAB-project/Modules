unit Delay;

{-----------------------------------------------------------------}
{ Definovane spozdeni, ktere funguje i na                         }
{ vykonnejsich pocitacich                                         }
{                                                                 }
{ Verze 1.0 portovano by miho 96                                  }
{       1.1 popora kratkych casu miho 98                          }
{       1.2 podpora rychlych CPU ( rozsireni DelayCnt1 na DWORD ) }
{-----------------------------------------------------------------}

{$I-,S-}

interface


procedure xDelay(MS: Word);
{-- cas uveden v milisekundach --}


procedure xDelayMicro(MicroS: Word);
{-- cas uveden v mikrosekundach --}
{ POZOR: Casy jsou vzdy o neco delsi a za normalnich podminek }
{        je cas delsi radove o nekolik mikrosekund            }
{        ( na PC Pentium 75 to dela cca 6us ).                }


implementation


var DelayCnt1:longint;            { kalibrace casu po 1 ms }
    DelayCnt55:longint;           { totez pred vydelenim 55 }


procedure DelayLoop;
begin
  asm
	@@Loop:	SUB	AX,1		{ DX:AX - pocitadlo DWORD }
		SBB	DX,0		{ dekrement }
		JC	@@End		{ doteklo }
		CMP	BL,ES:[DI]	{ pri uplynuti tiku ( 55ms ) }
		JE	@@Loop		{ taky koncim }
	@@End:
  end;
end;


procedure Initialize;
{-- inicializace - kalibrace casu --}
begin
  asm
		MOV	AX,40H		{ adresa bunky BIOS DATA s tiky }
		MOV	ES,AX		{   po 55 ms aktualizuje BIOS }
		MOV	DI,6CH
		MOV	BL,ES:[DI]
	@@Wait:	CMP	BL,ES:[DI]
		JE	@@Wait		{ pockej na cely tik }
		MOV	BL,ES:[DI]	{ schovej si tik do BL }
		MOV	AX,-28		{ piskvorcova konstanta ? asi }
		CWD
		CALL	DelayLoop	{ pockej na konec tiku BL }
		NOT	AX		{   a pocitej cas v DS:AX}
		NOT	DX
		MOV	word ptr [DelayCnt55],AX	{ uschovej kalibraci }
		MOV	word ptr [DelayCnt55+2],DX
  end; {asm}
  DelayCnt1:=DelayCnt55 div 55;		{ uschovej kalibraci 1 ms }
end; {Initialize}


procedure xDelay(MS: Word);
{-- proved standardni spozdeni merene v milisekundach --}
begin
  asm
	MOV	CX,MS			{ pocet milisekund }
	JCXZ	@@End			{ nulova hodnota - hned konci }
	MOV	AX,40H			{ adresa BIOS COM port - to je }
	MOV	ES,AX			{   jakakoli bunka, ktera se v }
	XOR	DI,DI			{   v provozu nemeni aby se netestoval }
	MOV	BL,ES:[DI]		{   casovac a presto mohla byt }
@@Loop:	MOV	AX,word ptr [DelayCnt1]		{   procedura DelayLoop stejna }
	MOV	DX,word ptr [DelayCnt1+2]	{ DX:AX kalibracni konsatnta }
	CALL	DelayLoop		{   pro spozdeni 1 ms }
	LOOP	@@Loop
	@@End:
  end; {asm}
end; {xDelay}


procedure xDelayMicro(MicroS: Word);
{-- procedura pro spozdeni zadavane v mikrosekundach --}
label Error;
begin {-- prepocitej zadany cas na pocet cyklu --}
  asm
		{-- DWORD * WORD / WORD -> DWORD --}
		SUB	DX,DX
		MOV	AX,WORD PTR[DelayCnt55+2]
		MOV	BX,55000
		MOV	CX,MicroS
		DIV	BX
		PUSH	DX
		MUL	CX
		MOV	DI,DX
		AND	DX,DX
		POP	DX
		JNZ	Error
		MOV	AX,WORD PTR[DelayCnt55]
		DIV	BX
		PUSH	DX
		MUL	CX
		MOV	SI,AX
		ADD	DI,DX
		POP	AX
		JC	Error
		MUL	CX
		DIV	BX
		ADD	SI,AX
		ADC	DI,0
                PUSH	SI
                PUSH	DI
		{-- vlastni spozdeni --}
		MOV	AX,40H			{ opet konstantni bunka }
		MOV	ES,AX
		XOR	DI,DI
		MOV	BL,ES:[DI]
                POP	DX			{ DX:AX cas v poctech cyklu }
                POP	AX
		CALL	DelayLoop
  end; {asm}
  exit;
  asm
	Error:	MOV	AX,0FFFFH
        	MOV	DX,AX
                CALL	DelayLoop
  end; {asm}
end;


begin Initialize;      { udelej kalibraci }
end.
