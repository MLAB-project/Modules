unit PP_DEFS;

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde jsou definice zavisle na vlastnostech jednotlivych procesoru.         }
{ Dale jsou zde procedury, ktere prpimo souvisi s definovanymi datovymi     }
{ strukturami                                                               }
{===========================================================================}

interface

uses PP_COMON;    { jen procedura Error }

{===========================================================================}
{ Definice celkoveho rozsahu adresoveho prostoru pri programovani PICu      }
{===========================================================================}

const DataBufLen=$4000;   { Maximalne 2 x 8 K slov pameti programu }
                          {   dat a konfigurace                    }

{===========================================================================}
{ Definice typu a konstant souvisejicich se zpracovanim prepinacu pro       }
{ definovani konfiguracniho slova.                                          }
{===========================================================================}

{-- Definice konstant pro rozsah mezi --}

const CfgDefProcCount =   5;  { pocet skupin procesoru                    }
      CfgDefSwCount   =  15;  { maximalni pocet prepinacu u jedne skupiny }
      CfgWordLen      =  14;  { maximalni pocet bitu Cfg slova            }
      CfgNameLen      =  10;  { maximalni delka jmena definice skupiny    }
      CfgKeyLen       =  10;  { maximalni delka prepinace                 }

{-- Definice typu pro popis jednoho prepinace --}

type CfgDefSw_t=record
       Key    : string[CfgKeyLen];   { jmeno prepinace }
       On     : string[CfgWordLen];  { hodnota pro stav _ON }
       Off    : string[CfgWordLen];  { hodnota pro stav _OFF }
       Bits   : string[CfgWordLen];  { definice pro _xxx u vicebitovych prepinacu }
     end; {record}

     { Key   definuje jmeno prepinace ( napr CP pro Code Protection )    }
     { On    definuje stav jednotlivych bitu pro stav On                 }
     { Off   definuje stav jednotlivych bity pro stav Off                }
     { Bits  definuje kam prijdou jednotlive bity vicebitoveho prepinace }

const CfgX:string[CfgWordLen]='';    { sama 'X' o delce Cfg slova }

{-- Definice typu pro popis jedne skupinu procesoru --}

type CfgDefProc_t=record
       ProcId : string[CfgNameLen];  { jmeno skupiny procesoru }
       Info   : array[1..CfgDefSwCount] of CfgDefSw_t;
     end; {record}

{-- Definice typu pro popis vsech skupin procesoru --}

type CfgDef_t=array[1..CfgDefProcCount] of CfgDefProc_t;

{-- Definice konstanty popisu prepinace s prazdnym obsahem --}

const CfgDefSwNull:CfgDefSw_t=
      ( Key  : '';
        On   : '';
        Off  : '';
        Bits : ''
      );

{-- Vlastni definice vsech skupin procesoru --}

{$I PP_CFG.PAS}   { Abychom tady nemeli tisic radek definice }

{===========================================================================}
{ Hlavicky funkci a procedur pro podporu zpracovani prepinacu               }
{ modifikujicich konfiguracni slovo.                                        }
{===========================================================================}

function CfgFindProcGroup(Par:string;var CfgDef:CfgDef_t):integer;
{== Vrati index do tabulky CfgDef pro zadane jmeno skupiny procesoru ==}
{   Pri nenalezeni vraci cilo 0                                        }

procedure CfgDisplayHelp(var CfgDefProc:CfgDefProc_t);
{== Zobrazi help pro Cfg prepinace zadane skupiny procesoru ==}

procedure CfgDisplayHelpAll(var CfgDef:CfgDef_t);
{== Zobrazi help od prepinacu Cfg slova pro vechny skupiny procesoru ==}

function CfgTestKey(Par:string;var CfgDefProc:CfgDefProc_t):string;
{== Otestuje parametr ( retezec s jednim prepinacem ) na vsechny ==}
{   prepinace dane skupiny procesoru a vrati vysledek jako         }
{   tristavovy retezec. Pri chybe vraci prazdny retezec.           }

function CfgOr(s1,s2:string):string;
{== Slouci dva Cfg retezce do jednoho.        ==}
{   V pripade konfliktu vraci prazdny retezec   }

function CfgOverride(s,os:string):string;
{== Modifikuje platne Cfg string s platnymi bity Cfg stringu os ==}
{   V pripade chybneho rozmeru retezcu vraci prazdny retezec      }

function CfgTestKeyMultiple(var Pars:string;var CfgDefProc:CfgDefProc_t):string;
{== Zadavam retezec prepinacu a popis procesorove specifickych prepinacu. ==}
{   Zpracovane parametry z Pars vykousnu. Vracim Cfg slovo jako tristavovy  }
{   retezec.                                                                }
{   Pokud je chyba, vracim prazdny retezec a v Pars je prepinac, ktery      }
{   zpusobil chybu na prvni pozici                                          }

function Word2Str(W:word):string;
{== Prevede binarni data W na retezec ( tristavovy ) ==}

function Str2Word(S:string):word;
{== Prevede Cfg string na binarni data ==}
{   Misto bitu 'X' da '1'                }

{===========================================================================}
{ Definice typu a konstant popisujicich parametry jednotlivych procesoru.   }
{===========================================================================}

{-- Definice konstant urcujicich meze -}

const ProcName_l      =  14;  { Maxialni delka jmena procesoru }
      ProcCount       =  78;  { Pocet definovanych procesoru   }

{-- Definice typu pro identifikaci programovaciho algoritmu --}

type ProcAlg_t=
     ( _NONE_,      { Nedefinovana hodnota                     }
       _NON2WIRE_,  { Algoritmus neni seriovy ( nepodporuji )  }
                    {-- EPROM a OTP --}
       _EPROM1_,    { Stary algoritmus pro EPROM ( PIC12C5xx ) }
       _EPROM2_,    { Standardni EPROM                         }
       _EPROM3_,    { Standardni EPROM se slovem 16 bitu       }
                    {-- EEPROM a FLASH --}
       _EE1_,       { Standardni Flash / EEPROM                }
       _EE2_        { Flash / EEPROM s prikazem                }
                    {   Begin Programming Only Cycle           }
     );

{-- Definice typu informace o procesoru --}

type ProcNam_t=string[ProcName_l+1];

type ProcInfo_t=record
     Name                     : ProcNam_t;   { jmeno procesoru           }
     Alg                      : ProcAlg_t;   { identifikace algoritmu    }
     Tprog                    : word;        { programovaci cas v us     }
     Bits                     : word;        { pocet predavanych bitu    }
     Cfg                      : string[CfgNameLen]; { druh konfiguracniho slova }
     Cfg_Base, Cfg_Mask       : word;        { adresa Cfg a maska platnych bitu }
     PM_Base, PM_Len, PM_Mask : word;        { pamet programu            }
     CM_Base, CM_Len, CM_Mask : word;        { pamet konfigurace         }
     DM_Base, DM_Len, DM_Mask : word;        { pamet dat                 }
     end; {record}

{-- Defince konstanty parametru procesoru s prazdnym obsahem --}

const ProcDummyInfo:ProcInfo_t =
        ( Name:                 '';
          Alg:              _NONE_;
          Tprog:                 0;
          Bits:                  0;
          Cfg:                  '';
          Cfg_Base:          $0000;
          Cfg_Mask:          $0000;
          PM_Base:$0000;   PM_Len:$0000;   PM_Mask:$0000;
          CM_Base:$0000;   CM_Len:$0000;   CM_Mask:$0000;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        );

{-- Defice vlastniho popisu vsech procesoru --}

{$I PP_PROC.PAS}

{===========================================================================}
{ Hlavicky funkci a procedur souvisejicich s definici parametru procesoru.  }
{===========================================================================}

procedure ProcDisplayAlg(Alg:ProcAlg_t;Tprog:word);
{== Zobrazi citelne jmeno algoritmu ==}

procedure ProcDisplayInfoAll;
{== Zobrazi info o vsech znamych procesorech ==}
{   Strankuje s pauzou                         }

procedure ProcDisplayInfo(ProcInfo:ProcInfo_t);
{== Zobrazi info o jednom procesoru i s nadpisem ==}

procedure ProcFind(s:string; var ProcInfo:ProcInfo_t);
{== Najde podle retezce informace o procesoru ==}

implementation

{===========================================================================}
{ Funkce a procedury pro podporu zpracovani prepinacu modifikujicich        }
{ konfiguracni slovo.                                                       }
{===========================================================================}

function CfgFindProcGroup(Par:string;var CfgDef:CfgDef_t):integer;
{== Vrati index do tabulky CfgDef pro zadane jmeno skupiny procesoru ==}
{   Pri nenalezeni vraci cilo 0                                        }
var i:integer;
begin i:=CfgDefProcCount+1;
      repeat dec(i);
      until (i=0) or (Par=CfgDef[i].ProcId);
      CfgFindProcGroup:=i;
end; {CfgFindProcGroup}

procedure CfgDisplayHelp(var CfgDefProc:CfgDefProc_t);
{== Zobrazi help pro Cfg prepinace zadane skupiny procesoru ==}
var i:integer;
begin write(CfgDefProc.ProcId:10,':  ');
      for i:=1 to CfgDefSwCount do
          write(CfgDefProc.Info[i].Key,' ');
      writeln;
end; {CfgDisplayHelp}

procedure CfgDisplayHelpAll(var CfgDef:CfgDef_t);
{== Zobrazi help od prepinacu Cfg slova pro vechny skupiny procesoru ==}
var i:integer;
begin writeln('Processor specific switches for Config Word overiding: ');
      writeln;
      for i:=1 to CfgDefProcCount do
          CfgDisplayHelp(CfgDef[i]);
      writeln;
end; {CfgDisplayHelpAll}

function CfgTestSingleKey(Par:string; Def:CfgDefSw_t):string;
{== Otestuje zda parametr Par odpovida definici Def a vrati retezec ==}
{   obsahujici konfig slovo ve tristavove logice. Pri chybe varci     }
{   prazdny retezec                                                   }
{   Pomocna funkce                                                    }
var i:integer;
    BitCount:integer;  { pocet bitu 1..8 podle definice }
    ParValue:byte;     { sem se nactou bity z Par       }
begin if pos(Def.Key,Par)=0 then begin CfgTestSingleKey:='';
                                       exit;
                                 end;
      if Par=Def.Key+'_ON'  then begin CfgTestSingleKey:=Def.On;
                                       exit;
                                 end;
      if Par=Def.Key        then begin CfgTestSingleKey:=Def.On;
                                       exit;
                                 end;
      if Par=Def.Key+'_OFF' then begin CfgTestSingleKey:=Def.Off;
                                       exit;
                                 end;
      if Def.Bits=''        then begin CfgTestSingleKey:='';
                                       exit;
                                 end;
      {-- pocet definovanych bitu --}
      BitCount:=0;
      for i:=1 to length(Def.Bits) do
      begin if (Def.Bits[i] <> 'X') and not (Def.Bits[i] in ['0'..'7'])
            then Error('Internal Error 1 at TestKey',0);
            if Def.Bits[i] in ['0'..'7']
            then if 1+byte(Def.Bits[i])-byte('0') > BitCount
                 then BitCount:=1+byte(Def.Bits[i])-byte('0');
      end;
      if BitCount=0 then Error('Internal Error 2 at TestKey',0);
      if BitCount>8 then Error('Internal Error 3 at TestKey',0);
      if length(Par)<>length(Def.Key)+1+BitCount
      then begin CfgTestSingleKey:='';
                 exit;
           end;
      {-- precti bity --}
      ParValue:=0;
      for i:=1 to BitCount do
      begin case Par[length(Def.Key)+1+i] of
            '0' : ParValue:=ParValue*2;
            '1' : ParValue:=ParValue*2+1;
            else begin CfgTestSingleKey:='';
                       exit;
                 end;
            end; {case}
      end;
      {-- sestav vysledek --}
      CfgTestSingleKey[0]:=char(CfgWordLen);
      for i:=1 to CfgWordLen do
      begin if Def.Bits[i]='X'
            then CfgTestSingleKey[i]:='X'
            else if ((ParValue shr (byte(Def.Bits[i])-byte('0'))) and 1) = 0
                 then CfgTestSingleKey[i]:='0'
                 else CfgTestSingleKey[i]:='1';
      end;
end; {CfgTestSingleKey}

function CfgTestKey(Par:string;var CfgDefProc:CfgDefProc_t):string;
{== Otestuje parametr ( retezec s jednim prepinacem ) na vsechny ==}
{   prepinace dane skupiny procesoru a vrati vysledek jako         }
{   tristavovy retezec. Pri chybe vraci prazdny retezec.           }
var i:integer;
    s:string;
begin if Par='' then begin CfgTestKey:='';  { to je vlastne chyba,  }
                           exit;            {  nevracim zadne slovo }
                     end;
      i:=1;
      repeat s:=CfgTestSingleKey(Par,CfgDefProc.Info[i]);
             inc(i);
      until (s<>'') or (i>CfgDefSwCount);
      CfgTestKey:=s;
end; {CfgTestKey}

procedure CfgDisplayCfgBits(s:string);
{== Zobrazi citelne druh konfiguracnich bitu ==}
{   Pomocna procedura ( ProcDisplayInfoLine )  }
begin write(copy(s+'          ',1,9));
end; {CfgDisplayCfgBits}

function CfgOr(s1,s2:string):string;
{== Slouci dva Cfg retezce do jednoho.        ==}
{   V pripade konfliktu vraci prazdny retezec   }
var i:integer;
begin CfgOr:='';
      if length(s1)<>length(s2) then exit;
      for i:=1 to length(s1) do
      case s1[i] of
        '0' : case s2[i] of
                '0' : CfgOr[i]:='0';
                '1' : exit;
                'X' : CfgOr[i]:='0';
                else exit;
              end; {case}
        '1' : case s2[i] of
                '0' : exit;
                '1' : CfgOr[i]:='1';
                'X' : CfgOr[i]:='1';
                else exit;
              end; {case}
        'X' : case s2[i] of
                '0' : CfgOr[i]:='0';
                '1' : CfgOr[i]:='1';
                'X' : CfgOr[i]:='X';
                else exit;
              end; {case}
        else exit;  { chyba }
      end; {case}
      CfgOr[0]:=s1[0];  { delka retezce }
end; {CfgOr}

function CfgOverride(s,os:string):string;
{== Modifikuje platne Cfg string s platnymi bity Cfg stringu os ==}
{   V pripade chybneho rozmeru retezcu vraci prazdny retezec      }
var i:integer;
begin CfgOverride:='';
      if length(s)<>length(os) then exit;
      for i:=1 to length(s) do
      case os[i] of
        '0' : CfgOverride[i]:='0';
        '1' : CfgOverride[i]:='1';
        'X' : CfgOverride[i]:=s[i];
        else exit;  { chyba }
      end; {case}
      CfgOverride[0]:=s[0];  { delka retezce }
end; {CfgOverride}

function CfgTestKeyMultiple(var Pars:string;var CfgDefProc:CfgDefProc_t):string;
{== Zadavam retezec prepinacu a popis procesorove specifickych prepinacu. ==}
{   Zpracovane parametry z Pars vykousnu. Vracim Cfg slovo jako tristavovy  }
{   retezec.                                                                }
{   Pokud je chyba, vracim prazdny retezec a v Pars je prepinac, ktery      }
{   zpusobil chybu na prvni pozici                                          }
var CfgOne  : string;   { jeden klic ( prepinac )             }
    CfgSuma : string;   { mezisoucet klicu                    }
    ErrStr  : string;   { meziuschova nezpracovatelnych klicu }
begin ErrStr:='';
      CfgSuma:=CfgX;  
      while  Pars<>'' do  { dokud nezpracuji vse z retezce Pars }
      begin {-- zpracuj jeden prepinac --}
            CfgOne:=CfgTestKey(GetWord(Pars),CfgDefProc);
            if CfgOne=''
               then ErrStr:=ErrStr+' '+GetWord(Pars)
               else begin CfgSuma:=CfgOr(CfgSuma,CfgOne);
                          if CfgSuma=''
                             then begin {-- konfliktni parametry --}
                                        CfgTestKeyMultiple:='';
                                        Pars:=Pars+ErrStr;
                                        exit;
                                  end;
                    end;
            Pars:=DelWord(Pars);
      end;
      CfgTestKeyMultiple:=CfgSuma;  { vysledne konfiguracni slovo }
      Pars:=ErrStr;                 { prepinace, ktere neznam     }
end; {CfgTestKeyMultiple}

function Word2Str(W:word):string;
{== Prevede binarni data W na retezec ( tristavovy ) ==}
var i:integer;
begin Word2Str[0]:=char(CfgWordLen);                 { delka retezce   }
      for i:=CfgWordLen downto 1 do
      begin if ( W and 1 ) = 1 then Word2Str[i]:='1' { jednotlive bity }
                               else Word2Str[i]:='0';
            W := W shr 1; { dalsi bit }
      end;
end; {Word2Str}

function Str2Word(S:string):word;
{== Prevede Cfg string na binarni data ==}
{   Misto bitu 'X' da '1'                }
var W:word;
    i:integer;
begin W:=0;
      for i:=1 to length(S) do
      if S[i]<>'0' then W := ( W shl 1 ) + 1
                   else W := ( W shl 1 );
      Str2Word:=W;
end; {Str2Word}

{===========================================================================}
{ Funkce a procedury souvisejicich s definici parametru procesoru.          }
{===========================================================================}

procedure ProcDisplayAlg(Alg:ProcAlg_t;Tprog:word);
{== Zobrazi citelne jmeno algoritmu ==}
begin case Alg of
      _NONE_      : write('NONE    ');
      _EPROM1_    : write('EPROM1  ');
      _EPROM2_    : write('EPROM2  ');
      _EPROM3_    : write('EPROM3  ');
      _EE1_       : write('EE1     ');
      _EE2_       : write('EE2     ');
      _NON2WIRE_  : write('NON2WIRE');
      else          write('??      ');
      end; {case}
      write(Tprog:6,' ');    { programovaci cas v us }
end; {ProcDisplayAlg}

procedure ProcDisplayInfoLine(ProcInfo:ProcInfo_t);
{== Zobrazi v lidske podobe nektere informace o procesoru ==}
var s:string;
    i:integer;
begin s:=ProcInfo.Name;
      for i:=length(s)+1 to ProcName_l do s:=s+' ';
      write(s,' ');
      ProcDisplayAlg(ProcInfo.Alg,ProcInfo.Tprog);
      CfgDisplayCfgBits(ProcInfo.Cfg);
      DisplayRange(ProcInfo.PM_Base,ProcInfo.PM_Len);
      DisplayRange(ProcInfo.CM_Base,ProcInfo.CM_Len);
      DisplayRange(ProcInfo.DM_Base,ProcInfo.DM_Len);
      writeln;
end; {ProcDisplayInfoLine}

procedure ProcDisplayInfoHeader;
{== Zobrazi nadpis ==}
begin writeln('Proc Name      Alg  Tprog[us] Cfg Bits Pgm Memory  Cfg Memory  Dat Memory');
      writeln('--------------------------------------------------------------------------');
end; {ProcDisplayInfoHeader}

procedure ProcDisplayInfoAll;
{== Zobrazi info o vsech znamych procesorech ==}
{   Strankuje s pauzou                         }
var i,j:integer;
begin i:=0;
      while i<ProcCount do
      begin ProcDisplayInfoHeader;
            j:=0;
            while (i<ProcCount) and (j<22) do
            begin inc(i);
                  inc(j);
                  ProcDisplayInfoLine(ProcInfoAll[i]);
            end;
            if i<ProcCount then PressEnter;
      end;
end; {ProcDisplayInfoAll}

procedure ProcDisplayInfo(ProcInfo:ProcInfo_t);
{== Zobrazi info o jednom procesoru i s nadpisem ==}
begin ProcDisplayInfoHeader;
      ProcDisplayInfoLine(ProcInfo);
      writeln;
end; {ProcDisplayInfo}

procedure ProcFind(s:string; var ProcInfo:ProcInfo_t);
{== Najde podle retezce informace o procesoru ==}
var i:integer;
begin {-- separace jmena procesoru z retezce --}
      s:=upstr(s)+' ';
      ProcInfo:=ProcDummyInfo;
      i:=pos('PIC',s);
      if i=0 then exit;
      s:=copy(s,i,255);
      i:=pos(' ',s);
      s:=copy(s,1,i-1);
      {-- nalezeni informaci --}
      for i:=1 to ProcCount do
          if (ProcInfoAll[i].Name+' ') = s+' '
          then ProcInfo:=ProcInfoAll[i];
end; {ProcFind}

{===========================================================================}
{ Telo jednotky.                                                            }
{===========================================================================}

procedure VerifyProcInfo;
{== Procedura provede interni test konzistentnosti dat ==}
var i:integer;
begin for i:=1 to ProcCount do
      with ProcInfoAll[i] do
      begin {-- kontrola delky jmena procesoru --}
            if length(Name) > ProcName_l
               then Error('Internal Error: IE01',0);
            {-- kontrola rozsahu pametovych prostoru --}
            if PM_Base+PM_Len>DataBufLen
               then Error('Internal Error: IE02',0);
            if CM_Base+CM_Len>DataBufLen
               then Error('Internal Error: IE03',0);
            if DM_Base+DM_Len>DataBufLen
               then Error('Internal Error: IE04',0);
            {-- kontrola zda znam vsechny uvedene Cfg --}
            if (ProcInfoAll[i].Cfg<>'') and (CfgFindProcGroup(ProcInfoAll[i].Cfg,CfgDefAll)=0)
               then Error('Internal Error: IE5',0);
      end;
end; {VerifyProcInfo}

var i:integer;

begin {-- kontroluje konzistentnost konstant --}
      VerifyProcInfo;
      {-- inicializace prazdne konstanty pro Cfg slovo ( same 'X' ) --}
      CfgX[0]:=char(CfgWordLen);
      for i:=1 to length(CfgX) do CfgX[i]:='X';
end.

