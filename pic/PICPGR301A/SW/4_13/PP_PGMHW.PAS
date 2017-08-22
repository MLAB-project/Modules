unit PP_PGMHW;

{== Ovladani programatoru ==}

{========================================================}
{   (c)DECROS 2000 miho, pefi                            }
{   1.0 - ovladani programatoru pres LPT a ALL03         }
{   1.1 - zmena vystupu cisla portu z DEC na HEX         }
{       - doplneni xDelayMicro(1) u vazby na ALL03       }
{========================================================}


interface

uses DELAY,
     PP_ALL03;

type  Logical=(zero,one,tristate);   { typ pro definovani stavu vystupu }

type PGM = object
     {-- Rodicovsky objekt pro ovladani programatoru --}

     _PortAdr : word;    { adresa portu }
     _Error   : string;  { retezec posledni chyby }

     constructor Init(Port:word);
     {== inicializuje a zapamatuje adresu ==}

     procedure Error(S:string);
     virtual;
     {== vypise chybu ==}

     procedure Info(S:string);
     virtual;
     {== vypise info ==}

     procedure SetVcc(Voltage:real);
     virtual;
     {== nastav napajeni ==}

     procedure SetVpp(Voltage:real);
     virtual;
     {== nastav programovaci napeti ==}

     procedure SetReset(Stat:Logical);
     virtual;
     {== nastav signal RESET dle Stat ==}

     procedure SetData(Stat:Logical);
     virtual;
     {== nastav signal DATA dle Stat ==}

     procedure SetClock(Stat:Logical);
     virtual;
     {== nastav signal CLOCK dle Stat ==}

     function GetData:boolean;
     virtual;
     {== precte stav datoveho vstupu ==}

           end; {object}

type PGM_p=^PGM;

type PGM_LPT = object(PGM)
     {-- Objekt ovladani programatoru pres LPT --}

     _PortStat : byte;

     constructor Init(Port:word);
     {== inicializuje, vstupem je cislo portu ==}

     procedure SetVcc(Voltage:real);
     virtual;
     {== nastav napajeni ==}

     procedure SetVpp(Voltage:real);
     virtual;
     {== nastav programovaci napeti ==}

     procedure SetReset(Stat:Logical);
     virtual;
     {== nastav signal RESET dle Stat ==}

     procedure SetData(Stat:Logical);
     virtual;
     {== nastav signal DATA dle Stat ==}

     procedure SetClock(Stat:Logical);
     virtual;
     {== nastav signal CLOCK dle Stat ==}

     function GetData:boolean;
     virtual;
     {== precte stav datoveho vstupu ==}

               end; {object}

type PGM_LPT_p=^PGM_LPT;

type PGM_ALL = object(PGM)
     {-- Objekt ovladani programatoru ALL03 --}

     _ProgAdr : word;

     constructor Init(Port:word);
     {== inicializuje, vstupem je cislo portu ==}

     procedure SetVcc(Voltage:real);
     virtual;
     {== nastav napajeni ==}

     procedure SetVpp(Voltage:real);
     virtual;
     {== nastav programovaci napeti ==}

     procedure SetReset(Stat:Logical);
     virtual;
     {== nastav signal RESET dle Stat ==}

     procedure SetData(Stat:Logical);
     virtual;
     {== nastav signal DATA dle Stat ==}

     procedure SetClock(Stat:Logical);
     virtual;
     {== nastav signal CLOCK dle Stat ==}

     function GetData:boolean;
     virtual;
     {== precte stav datoveho vstupu ==}

               end; {object}

type PGM_ALL_p=^PGM_ALL;

implementation

function num2str(w:word):string;
{== Prevede cislo na retezec ( jako HEX cislo ) ===}
const prevod:array[0..15]of char=('0','1','2','3','4','5','6','7',
                                  '8','9','A','B','C','D','E','F');
var s:string;
begin s[0]:=#4;
      s[1]:=prevod[(w shr 12) and $F];
      s[2]:=prevod[(w shr  8) and $F];
      s[3]:=prevod[(w shr  4) and $F];
      s[4]:=prevod[(w shr  0) and $F];
      if s[1]='0' then s:=copy(s,2,255);
      if s[1]='0' then s:=copy(s,2,255);
      if s[1]='0' then s:=copy(s,2,255);
      num2str:=s;
end; {num2str}

{========================================================}
{                                                        }
{ Programator prazdny prototyp                           }
{                                                   miho }
{========================================================}

constructor PGM.Init(Port:word);
{== inicializuje a zapamatuje adresu ==}
begin _PortAdr:=0;
end; {Init}

procedure PGM.Error(S:string);
{== vypise chybu ==}
begin _Error:=s;
end; {Error}

procedure PGM.Info(S:string);
{== vypise info ==}
begin writeln('INFO: ',S);
end; {Error}

procedure PGM.SetVcc(Voltage:real);
{== nastav napajeni ==}
begin
end; {SetVcc}

procedure PGM.SetVpp(Voltage:real);
{== nastav programovaci napeti ==}
begin
end; {SetVpp}

procedure PGM.SetReset(Stat:Logical);
{== nastav signal RESET dle Stat ==}
begin
end; {SetReset}

procedure PGM.SetData(Stat:Logical);
{== nastav signal DATA dle Stat ==}
begin
end; {SetData}

procedure PGM.SetClock(Stat:Logical);
{== nastav signal CLOCK dle Stat ==}
begin
end; {SetClock}

function PGM.GetData:boolean;
{== precte stav datoveho vstupu ==}
begin
end; {GetData}

{========================================================}
{                                                        }
{ Programator via printer port                           }
{                                                   miho }
{========================================================}

const LPT_DATA    = $01;   { Datovy vystup - RB7  }
      LPT_DATAOE  = $02;   { Povoleni vystupu     }
      LPT_CLOCK   = $04;   { Hodiny - RB6         }
      LPT_CLOCKOE = $08;   { Povoleni vystupu     }
      LPT_VCC     = $10;   { Zapnuti +5V          }
      LPT_VPP     = $20;   { Zapnuti +12V na MCLR }
      LPT_RES     = $40;   { Pripojeni 0V na MCLR }

      LPT_DATAIN  = $40;   { Maska bitu pro cteni dat }


constructor PGM_LPT.Init(Port:word);
var AdrTab:array[1..3]of word absolute 0:$408;{ tabulka LPT1..LPT3 z BIOSu }
{== inicializuje a zapamatuje adresu ==}
var w:word;
begin _PortAdr:=0;
      _Error:='';
      _PortStat:=0;
      if (port<1) or (port>3) then Error('Invalid Port Number')
                              else _PortAdr:=AdrTab[Port];
      if _PortAdr=0 then Error('Port not Registered in BIOS');
      Info('Port Address '+num2str(_PortAdr)+'H');
      if _Error<>'' then fail;
      if _PortAdr<>0 then system.port[_PortAdr]:=_PortStat;
end; {Init}

procedure PGM_LPT.SetVcc(Voltage:real);
{== nastav napajeni ==}
begin if Voltage = 5.0 then _PortStat:=_PortStat or LPT_VCC
                       else _PortStat:=_PortStat and not LPT_VCC;
      if _PortAdr<>0 then port[_PortAdr]:=_PortStat;
      xDelayMicro(1);
end; {SetVcc}

procedure PGM_LPT.SetVpp(Voltage:real);
{== nastav programovaci napeti ==}
begin if Voltage=13.0
      then _PortStat:= LPT_VPP or ( _PortStat and not LPT_RES )
      else _PortStat:= _PortStat and not LPT_VPP;
      if _PortAdr<>0 then port[_PortAdr]:=_PortStat;
      xDelayMicro(1);
end; {SetVpp}

procedure PGM_LPT.SetReset(Stat:Logical);
{== nastav signal RESET dle Stat ==}
begin case Stat of
      zero : begin SetVpp(0);
                   _PortStat:=_PortStat or LPT_RES;
             end;
      one  : _PortStat:=_PortStat and not LPT_RES;
      end; {case}
      if _PortAdr<>0 then port[_PortAdr]:=_PortStat;
      xDelayMicro(1);
end; {SetReset}

procedure PGM_LPT.SetData(Stat:Logical);
{== nastav signal DATA dle Stat ==}
begin case Stat of
      zero     : _PortStat := ( _PortStat and not LPT_DATA ) or LPT_DATAOE;
      one      : _PortStat := _PortStat or LPT_DATA or LPT_DATAOE;
      tristate : _PortStat := ( _PortStat and not LPT_DATAOE and not LPT_DATA )
      end; {case}
      if _PortAdr<>0 then port[_PortAdr]:=_PortStat;
      xDelayMicro(1);
end; {SetData}

procedure PGM_LPT.SetClock(Stat:Logical);
{== nastav signal CLOCK dle Stat ==}
begin case Stat of
      zero     : _PortStat := ( _PortStat and not LPT_CLOCK ) or LPT_CLOCKOE;
      one      : _PortStat := _PortStat or LPT_CLOCK or LPT_CLOCKOE;
      tristate : _PortStat := ( _PortStat and not LPT_CLOCKOE and not LPT_CLOCK )
      end; {case}
      if _PortAdr<>0 then port[_PortAdr]:=_PortStat;
      xDelayMicro(1);
end; {SetClock}

function PGM_LPT.GetData:boolean;
{== precte stav datoveho vstupu ==}
begin GetData:=(port[_PortAdr+1] and LPT_DATAIN) = LPT_DATAIN;
      xDelayMicro(1);
end; {GetData}


{========================================================}
{                                                        }
{ Programator ALL03                                      }
{                                                   pefi }
{========================================================}

{ Tato cast v podstate jen vola funkce jednotky ProgAll  }

const ALL_VCC   =       30;
      ALL_GND   =       11;
      ALL_VPP   =       10;
      ALL_CLOCK =       28;
      ALL_DATA  =       29;

Constructor PGM_All.Init(Port:Word);
{== provede inicializaci programatoru ==}
begin
  Initialize(Port);
  Gnd11(true); { pripoji zem na vyvodu 11 }
end;{End Init}

procedure PGM_All.SetVcc(Voltage:real);
{== zapina a vypina napajeni ==}
begin
  SetVoltageV1(Voltage);
  if Voltage=0 then ConnectV1(ALL_VCC,false)
               else ConnectV1(ALL_VCC,true);
  xDelayMicro(1);
end;{End SetVcc}

procedure PGM_All.SetVpp(Voltage:real);
{== zapina a vypina programovaci napeti ==}
begin
  SetVoltageV2(Voltage);
  if Voltage=0 then ConnectV2(ALL_VPP,false)
               else ConnectV2(ALL_VPP,true);
  xDelayMicro(1);
end;{EndSetVpp}

procedure PGM_All.SetReset(Stat:Logical);
{== nastavi nebo shodi signal Reset-VPP ==}
begin
  ConnectV2(ALL_VPP,false);{nejdrive nutno Vpp odpojit}
  if Stat = zero then SetBit(ALL_VPP,0)
                 else SetBit(ALL_VPP,1);
  xDelayMicro(1);
end;{EndSetReset}

procedure PGM_All.SetData(Stat:Logical);
{== nastavi nebo shodi signal DATA ==}
begin
  if Stat = zero then SetBit(ALL_DATA,0)
                 else SetBit(ALL_DATA,1);
  xDelayMicro(1);
end;{End SetData}

procedure PGM_All.SetClock(Stat:Logical);
{== nastavi nebo shodi signal CLK ==}
begin
  if Stat = zero then SetBit(ALL_CLOCK,0)
                 else SetBit(ALL_CLOCK,1);
  xDelayMicro(1);
end;{End SetClock}

function PGM_All.GetData:boolean;
var
  stav:byte;
begin
  Stav:=GetBit(ALL_DATA);
  if Stav=1 then GetData:=true
            else GetData:=false;
  xDelayMicro(1);
end;{End GetData}

end.
