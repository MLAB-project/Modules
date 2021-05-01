unit PP_ALL03;

{$I-,S-}

{=========================================================}
{                                                         }
{ Unita pro ovladani programatoru HI-LO model ALL-03      }
{                                         (c) DECROS pefi }
{---------------------------------------------------------}
{ Verze : 1.0.0 uvodni verze                              }
{         1.0.1 preformatovani zdrojaku miho              }
{         1.0.2 prejmenovani na PP_ALL03.PAS              }
{=========================================================}

interface

procedure ErrorProc;
{== vypise slovne obsah chyby ==}

procedure PowerOff;
{== vypne programator ==}

procedure Initialize(Baze :word);
{== ziniciuje programator a nastavi bazovou adresu programatoru ==}

procedure SetVoltageV1(Napeti : real);
{== nastavi napeti na prevodniku s vahou 0.4, napeti je zadavano ==}
{== ve voltech, max. napeti 9.6V. Zapina se jim programator,     ==}
{== musi byt pouzit vzdy                                         ==}

procedure SetVoltageV2(Napeti : real);
{== nastavi napeti na prevodniku s vahou 0.6, napeti je zadavano ==}
{== ve voltech, max. napeti 14.4V.                               ==}

procedure SetVoltageV3(Napeti : real);
{== nastavi napeti na prevodniku s vahou 1, napeti je zadavano   ==}
{== ve voltech, max. napeti je 25V                               ==}

procedure SetBit(Pin,Stav:byte);
{== nastavi pin podle parametru Stav. Piny jsou v rozsahu 1-40,  ==}
{== stav je 0 nebo 1.                                            ==}

procedure GetBitProc (Pin:byte;var Stav:byte);
{== cte stav pinu,pin v rozsahu 1-40,Stav nabyva hodnot 0 nebo 1 ==}

function GetBit(Pin:byte):byte;
{== cte stav pinu, pin v rozsahu 1-40,vraci 0 nebo 1             ==}

procedure ConnectV1(Pin:byte;On:boolean);
{== pripojuje prevodnik V1 s vahou 0.4 k pinum,                  ==}
{== piny v rozsahu 24-32,34,36,40                                ==}

procedure ConnectV2(Pin:byte;On:boolean);
{== pripojuje prevodnik V2 s vahou 0.6 k pinum.                  ==}
{== piny v rozsahu 9-32                                          ==}

procedure ConnectV3(Pin:byte;On:boolean);
{== pripojuje prevodnik V3 s vahou 1 k pinum.                    ==}
{== piny v rozsahu 1,5-7,9-32,36                                 ==}

procedure Gnd11(On:boolean);
{== prepina zem mezi piny 20 a 11, true=pin 11, false= pin20     ==}

procedure Led(On:boolean);
{== ovlada led s napisem 'GOOD', true= sviti, false= nesviti     ==}

function ReadButton:boolean;
{== vypne programator a cte tlacitko s napisem 'YES' ,           ==}
{==        true=stiknuto, false=uvolneno                         ==}


{=========================================================}

implementation


uses DELAY;


{== Definice konstant ==}

const InitNum = 22; { pocet registru }

const InitArray  : array[1..InitNum,1..2] of byte =
      {== zakladni inicializace tj. vsechny piny jako vstupni,prevodniky ==}
      {== odpojeny od vsech pinu a vymulovany                            ==}
                 (
                 (231,0),(230,0),(229,0),
                 (238,0),(237,0),(241,0),
                 (242,0),(242,0),(243,0),
                 (232,0),(233,0),(234,0),
                 (235,0),(236,0),(224,255),
                 (225,255),(226,255),(227,255),
                 (228,255),(247,0),(239,0),
                 (245,0)
                 );

const PinSet     : array[1..40,1..2] of byte =
      {== tabulka pro ovladani jednotlivych pinu, na prvni pozici      ==}
      {== prislusny  I/O registr na druhe pozici maska pinu v registru ==}
                (
                ($E0,$01),($E0,$02),($E0,$04),($E0,$08),
                ($E0,$10),($E0,$20),($E0,$40),($E0,$80),
                ($E1,$01),($E1,$02),($E1,$04),($E1,$08),
                ($E1,$10),($E1,$20),($E1,$40),($E1,$80),
                ($E2,$01),($E2,$02),($E2,$04),($E2,$08),
                ($E2,$10),($E2,$20),($E2,$40),($E2,$80),
                ($E3,$01),($E3,$02),($E3,$04),($E3,$08),
                ($E3,$10),($E3,$20),($E3,$40),($E3,$80),
                ($E4,$01),($E4,$02),($E4,$04),($E4,$08),
                ($E4,$10),($E4,$20),($E4,$40),($E4,$80)
                );

const PinConnectV1: array[1..40,1..2] of byte =
      {== tabulka pro pripojeni prevodniku s vahou 0.4 k pinum, na prvni ==}
      {== pozici registr pro pripojeni, na druhe pozici maska            ==}
      {== pinu v registru                                                ==}
                (
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($EE,$80),
                ($EE,$04),($EE,$02),($EE,$01),($ED,$80),
                ($ED,$40),($ED,$20),($ED,$10),($ED,$08),
                ($00,$00),($ED,$04),($00,$00),($ED,$02),
                ($00,$00),($00,$00),($00,$00),($ED,$01)
                );

const PinConnectV2: array[1..40,1..2] of byte =
      {== tabulka pro pripojeni prevodniku s vahou 0.6 k pinum, na prvni ==}
      {== pozici registr pro pripojeni, na druhe pozici maska            ==}
      {== pinu v registru                                                ==}
                (
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($F1,$01),($F1,$02),($F1,$04),($F1,$08),
                ($F1,$10),($F1,$20),($F1,$40),($F1,$80),
                ($F2,$01),($F2,$02),($F2,$04),($F2,$08),
                ($F2,$10),($F2,$20),($F2,$40),($F2,$80),
                ($F3,$01),($F3,$02),($F3,$04),($F3,$08),
                ($F3,$10),($F3,$20),($F3,$40),($F3,$80),
                ($00,$00),($00,$00),($00,$00),($00,$00),
                ($00,$00),($00,$00),($00,$00),($00,$00)
                );

const PinConnectV3: array[1..40,1..2] of byte =
      {== tabulka pro pripojeni prevodniku s vahou 1 k pinum, na prvni ==}
      {== registr pro pripojeni, na druhe pozici maska pinu v registru ==}
                (
                ($E8,$01),($00,$00),($00,$00),($00,$00),
                ($E8,$10),($E8,$20),($E8,$40),($00,$00),
                ($E9,$01),($E9,$02),($E9,$04),($E9,$08),
                ($E9,$10),($E9,$20),($E9,$40),($E9,$80),
                ($EA,$01),($EA,$02),($EA,$04),($EA,$08),
                ($EA,$10),($EA,$20),($EA,$40),($EA,$80),
                ($EB,$01),($EB,$02),($EB,$04),($EB,$08),
                ($EB,$10),($EB,$20),($EB,$40),($EB,$80),
                ($00,$00),($00,$00),($00,$00),($EC,$08),
                ($00,$00),($00,$00),($00,$00),($00,$00)
                );

{== definice globalnich promennych ==}

var   BazovaAdresa : word;
      Error        : integer;              { cislo chyby }
      PortStat     : array[1..5] of byte;  { aktualni stavy pinu }
      ConnectV1Stat: array[1..2] of byte;  { aktualni pripojeni prevodniku V1 }
      ConnectV2Stat: array[1..3] of byte;  { aktualni pripojeni prevodniku V2 }
      ConnectV3Stat: array[1..5] of byte;  { aktualni pripojeni prevodniku V3 }
      GndStat      : boolean;              { =1 GND na 11, =0 GND na 20 }


{== vykonne procedury TPU ==}


{== Vytiskne hlaseni o chybe a ukonci program ==}
procedure ErrorProc;
begin
  writeln;
  write('Error: ');
  case Error of
   0:writeln('Zadna Chyba');
   1:writeln('Napeti pro prevodnik mimo rozsah');
   2:Writeln('Spatny stav pinu, mozne pouze 0 nebo 1');
   3:Writeln('Pin mimo rozsah, mozne 1-40, u pripojeni prevodniku jen nektere');
  end; {case}
  writeln;
  halt(1);
end; {End Error}


{== Zapise bajt do prislusneho registru programatoru ==}
procedure OutPort(Adr, Data : byte);
begin
  asm
    mov   dx,BazovaAdresa
    mov   al,Adr
    out   dx,al
    add   dx,2
    mov   al,Data
    out   dx,al
  end; {asm}
end; {OutPort}


{== Precte bajt a prislusneho registru programatoru ==}
function InPort(Adr : byte) : byte;
begin
  asm
    mov   dx,BazovaAdresa
    mov   al,Adr
    out   dx,al
    add   dx,2
    in    al,dx
    mov   Adr,al
  end; {asm}
  InPort := Adr;
end;


{== Zinicializuje programator ==}
procedure PowerOff;
var n,i :byte;
begin
  for i:= 1 to InitNum do
      OutPort(InitArray[i,1],InitArray[i,2]);

  {--- nastav otisk pinu}
  for i:= 1 to 5 do
      PortStat[i]:=255;

  {--- nastav otisk pripojeni prevodniku V1}
  for i:=1 to 2 do
      ConnectV1Stat[i]:=0;

  {--- nastav otisk pripojeni prevodniku V2}
  for i:=1 to 3 do
      ConnectV2Stat[i]:=0;

  {--- nastav otisk pripojeni prevodniku V3}
  for i:=1 to 5 do
      ConnectV3Stat[i]:=0;

end; {PowerOff}


{== Inicializace programatoru se zadanim Bazove adresy ==}
procedure Initialize(Baze :word);
begin
  BazovaAdresa:=Baze;
  Error:=0;
  GndStat:=false;
  PowerOff;
end; {Initialize}


{== Zadani napeti pro prevodnik s vahou 0.4 ==}
procedure SetVoltageV1(Napeti : real);
var Voltage:Integer;
begin
  if Napeti<=9.6 then begin Voltage:=Round(((255/9.5)*Napeti));
                            OutPort(231,Voltage);
                      end
                 else begin Error:=1;
                      end;
end; {SetVoltageV1}


{== Zadani napeti pro prevodnik s vahou 0.6 ==}
procedure SetVoltageV2(Napeti : real);
var Voltage:Integer;
begin
  if Napeti<=14.4 then begin Voltage:=Round(((255/14.4)*Napeti));
                             OutPort(230,Voltage);
                       end
                  else begin Error:=1;
                       end;
end; {SetVoltageV2}


{== Zadani napeti pro prevodnik s vahou 1 ==}
procedure SetVoltageV3(Napeti : real);
var Voltage:Integer;
begin
  if Napeti<=25 then begin Voltage:=Round(((255/24)*Napeti));
                           OutPort(229,Voltage);
                     end
                else begin Error:=1;
                     end;
end; {SetVoltageV1}


{== Nastaveni pinu ==}
procedure SetBit(Pin,Stav:byte);
var PozReg:byte;
begin
  if (Pin>=1) and (Pin<=40)
  then begin
         {--- urceni indexu I/O registru pro pole otisku}
         if (Pin>=1)  and (Pin<=8)  then PozReg:=1;
         if (Pin>=9)  and (Pin<=16) then PozReg:=2;
         if (Pin>=17) and (Pin<=24) then PozReg:=3;
         if (Pin>=25) and (Pin<=32) then PozReg:=4;
         if (Pin>=33) and (Pin<=40) then PozReg:=5;

         if Stav=1
         then begin
                {--- pin do Log.1, zaznam do otisku}
                PortStat[PozReg]:=PortStat[PozReg] or PinSet[Pin,2];
                OutPort(PinSet[Pin,1],PortStat[PozReg]);
                { writeln(PortStat[PozReg]); }
              end
         else  Error:=2;

         if Stav=0
         then begin
                {--- pin do log.0, zaznam do otisku}
                PortStat[PozReg]:=PortStat[PozReg] and not(PinSet[Pin,2]);
                OutPort(PinSet[Pin,1],PortStat[PozReg]);
                { writeln(PortStat[PozReg]); }
              end
         else Error:=2;

       end
  else Error:=3;
end; {SetBit}


{== Cteni bitu jako procedura ==}
procedure GetBitProc (Pin:byte;var Stav:byte);
var ReadBit:byte;
begin
  if (Pin>=1) and (Pin<=40)
  then begin
         Readbit:=InPort(PinSet[Pin,1]) and PinSet[Pin,2];
         if ReadBit=0 then Stav:=0
                      else Stav:=1;
       end
  else Error:=3;
end; {GetbitProc}


{== Cteni bitu jako funkce ==}
function GetBit(Pin:byte):byte;
var ReadBit:byte;
begin
  Readbit:=InPort(PinSet[Pin,1]) and PinSet[Pin,2];
  if ReadBit=0 then GetBit:=0
               else GetBit:=1;
end; {Getbit}


{== Pripojeni prevodniku V1 s vahou 0.4 ==}
procedure ConnectV1(Pin:byte;On:boolean);
var PozReg:byte;
    TestPin:boolean;
begin
  {--- lze pripojit k pinum 24,26-32,34,36 a 40}
  TestPin:=(Pin>=26) and (Pin<=32)or (Pin=24) or (Pin=34) or (Pin=36) or (Pin=40);
  if TestPin
  then begin
         { writeln('V1  ',Pin); }

         {--- urceni indexu I/O registru pro pole otisku}
         if Pin=24                  then PozReg:=3;
         if (Pin>=25) and (Pin<=32) then PozReg:=4;
         if (Pin>=33) and (Pin<=40) then PozReg:=5;

         {--- na pin se musi zapsat log.1, udelej zaznam do otisku}
         PortStat[PozReg]:=PortStat[PozReg] or PinSet[Pin,2];
         { writeln(PinSet[Pin,1],'  ',PortStat[PozReg]); }

         {--- urci registr v poli otisku pripojeni}
         if (Pin>=24) and (Pin<=27) then PozReg:=1
                                    else PozReg:=2;
         if On
         then {--- udelej zaznam o pripojeni do otisku}
              ConnectV1Stat[PozReg] := ConnectV1Stat[PozReg]
                                       or PinConnectV1[Pin,2]
         else {--- udelej zaznam o odpojeni do otisku}
              ConnectV1Stat[PozReg] := ConnectV1Stat[PozReg]
                                       and not( PinConnectV1[Pin,2]);

         OutPort(PinConnectV1[Pin,1],ConnectV1Stat[PozReg]);

       end
  else Error:=3;
end; {ConnectV1}


{== Pripojeni prevodniku V2 s vahou 0.6 ==}
procedure ConnectV2(Pin:byte;On:boolean);
var PozReg:byte;
    TestPin:boolean;
begin
  {--- lze pripojit piny 9-32}
  TestPin:=(Pin>=9) and (Pin<=32);

  {--- pokud je pouzit pin 11 nebo 20 jako zem, nejze na nej ---}
  {--- pripojit prevodnik                                    ---}
  if (Pin=11) and GndStat then TestPin:=false;       { pin 11 je uzemen }
  if (Pin=20)  and Not(GndStat) then TestPin:=false; { pin20 je uzemen  }

  if TestPin
  then begin
         { writeln('V2  ',Pin); }

         {--- urceni indexu I/O registru pro pole otisku}
         if (Pin>=9)  and (Pin<=16) then PozReg:=2;
         if (Pin>=17) and (Pin<=24) then PozReg:=3;
         if (Pin>=25) and (Pin<=32) then PozReg:=4;

         {--- na pin je nutne zapsat log.1, udelej zapis do otisku}
         PortStat[PozReg]:=PortStat[PozReg] or PinSet[Pin,2];{nastav na pin log.1}
         OutPort(PinSet[Pin,1],PortStat[PozReg]);
         { writeln(PinSet[Pin,1],'   ',PortStat[PozReg]); }

         {--- urci registr otisku pripojeni}
         if (Pin>=9) and (Pin<=16) then PozReg:=1;
         if (Pin>=17) and (Pin<=24) then PozReg:=2;
         if (Pin>=25) and (Pin<=32) then PozReg:=3;

     
         if On
         then {--- udelej zaznam o pripojeni do otisku}
              ConnectV2Stat[PozReg] := ConnectV2Stat[PozReg]
                                       or PinConnectV2[Pin,2]
         else ConnectV2Stat[PozReg] := ConnectV2Stat[PozReg]
                                       and not(PinConnectV2[Pin,2]);

         OutPort(PinConnectV2[Pin,1],ConnectV2Stat[PozReg]);

       end
  else Error:=3;
end; {ConnectV2}


{== Pripojeni prevodniku V3 s vahou 1 ==}
procedure ConnectV3(Pin:byte;On:boolean);
var PozReg:byte;
    TestPin:boolean;
begin
  {--- lze pripojit k pinum 1,5-7,9-32,a36}
  TestPin:=(Pin>=9)and(Pin<=32)or(Pin=1)or((Pin>=5)and(Pin<=7))or(Pin=36);

  {--- pokud je pouzit pin 11 nebo 20 pro zem, nelze na nej ---}
  {--- pripojit prevodnik                                   ---}
  if (Pin=11) and GndStat then TestPin:=false;       { pin 11 je uzemen }
  if (Pin=20)  and Not(GndStat) then TestPin:=false; { pin20 je uzemen  }

  if TestPin
  then begin
         { writeln('V3    ',Pin); }

         {--- urceni indexu I/O registru pro pole otisku }
         if (Pin>=1)  and (Pin<=8)  then PozReg:=1;
         if (Pin>=9)  and (Pin<=16) then PozReg:=2;
         if (Pin>=17) and (Pin<=24) then PozReg:=3;
         if (Pin>=25) and (Pin<=32) then PozReg:=4;
         if (Pin>=33) and (Pin<=40) then PozReg:=5;
         { writeln(PozReg); }

         {--- na pin nutno zapsat log.1 , udelej zapis do otisku }
         PortStat[PozReg] := PortStat[PozReg]
                             or PinSet[Pin,2];  { nastav na pin log.1 }

         OutPort(PinSet[Pin,1],PortStat[PozReg]);

         { writeln(PinSet[Pin,1],'   ',PortStat[PozReg]); }

         {--- urci registr otisku pripojeni}
         if (Pin>=1) and (Pin<=7) then PozReg:=1;
         if (Pin>=9) and (Pin<=16) then PozReg:=2;
         if (Pin>=17) and (Pin<=24) then PozReg:=3;
         if (Pin>=25) and (Pin<=32) then PozReg:=4;
         if (Pin=36) then PozReg:=5;

         if On
         then ConnectV3Stat[PozReg] := ConnectV3Stat[PozReg]
                                       or PinConnectV3[Pin,2]
         else ConnectV3Stat[PozReg] := ConnectV3Stat[PozReg]
                                       and not(PinConnectV3[Pin,2]);

         OutPort(PinConnectV3[Pin,1],ConnectV3Stat[PozReg]);

       end
  else Error:=3;
end; {ConnectV3}


{== Prepinani zeme mezi vyvody 11 nebo 20 ==}
{     True  = pripojen Pin11                }
{     False = pripojen pin20                }
procedure Gnd11(On:boolean);
begin
  if On then begin
               OutPort($EF,1);
               GndStat:=true;
             end
        else
             begin
               OutPort($EF,0);
               GndStat:=false;
             end;
end; {Gnd11}


{== Ovladani LED 'GOOD' ==}
{   True = sviti          }
procedure Led(On:boolean);
begin
  if On then OutPort($F7,$8)
        else OutPort($F7,$0);
end; {Led}


{== Cteni tlacitka 'YES' ==}
{   True = stisknut        }
function ReadButton:boolean;
begin
  PowerOff;
  xDelay(50);
  writeln(InPort($E4));
  if (InPort($E4)and $80)<>0 then ReadButton:=true
                             else ReadButton:=false;
end; {ReadButton}


begin
end.