{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,R+,S+,V+,X-}
{$M 16384,0,655360}

program PicPgr(Input,Output);

{=============================================================}
{== Program pro programovani ruznych PICu ( FLASH i EPROM ) ==}
{=============================================================}

uses DELAY,        { casova spozdeni                          }
     PP_PGMHW,     { ovladani hardwaru programatoru           }
     PP_COMON,     { pomocne funkce                           }
     PP_DEFS,      { defince procesorove zavislych parametru  }
     PP_DATA,      { ulozeni dat v pameti                     }
     PP_IO;        { import a export dat z/do souboru         }

const ver  : string[4] = '4.02';    { vzdy 4 znaky }
      date : string[4] = '2001';    { vzdy 4 znaky }

{=============================================================}
{ Zmeny:                                                      }
{ 2.01 - vychozi verze pro tuto verzi                         }
{ 3.00 - predelana kompletne vrstva pro ovladani HW ( moznost }
{        popdory vice programatoru )                          }
{ 3.01 - finalni verze s podporou programovani pres LPT port  }
{        a na programatoru ALL03                              }
{ 3.10 - pridana informace o zdoji dat pri vystupu v TXT      }
{        formatu                                              }
{      - cislovani radek pri vypisu chyby ve vstupnich datech }
{      - odstranena chyba exportu dat v HEX formatu           }
{      - dodelana kontrola kontrolniho souctu HEX formatu     }
{      - znovu zprovozneny prikazy RUN, STOP, RESET           }
{      - zmena default obsahu pri konverzi z 0 na 3FFF        }
{ 3.11 - cisla ve zdrojaku nahrazeny konstantami              }
{ 4.00 - velmi rozsahle zmeny ve strukture                    }
{      - prepinani parametru podle typu soucastky             }
{      - zmena Vpp z 12.0V na 13.0V                           }
{      - doplneno zpozdeni po zapnuti napajeni                }
{      - zmena programovacich casu u C/F84 (20ms na 10ms)     }
{      - podpora ErrorLevel pri programovani a verifikaci     }
{ 4.01 - prvni realese verze z rady 4.x                       }
{ 4.02 -doplnena podpora algoritmu EEPROM1       PEFI         }
{ Chybi:                                                      }
{      - podpora algoritmu  EPROM3                            }
{      - zpracovani prepinacu pro Cfg slovo jinych nez PIC16F }
{      - export jen platnych dat ( HEX i TXT )                }
{=============================================================}


{====== Rizeni programatoru - propojeni s HW ======}

const P:PGM_p = nil;   { Inicializovana promenna }

procedure InitHW(Port:word);
{== Procedura inicializuje propojeni s HW ==}
begin if port<4 then P:=new(PGM_LPT_p,Init(Port))
                else P:=new(PGM_ALL_P,Init(Port));
      if P=nil then Error('Unable Init HW',0);
end; {InitHW}

const StartPICStat:boolean=false;           { true po dobu programovani }
      { Tuto promennou nastavuje procedura StartPIC a vypina procedura  }
      { StopPIC. Je tedy aktivni zejmena po dobu programovani a slouzi  }
      { pro zajisteni vypnuti programovaciho napeti v pripade           }
      { ze program skonci predcasne.                                    }

procedure StartPIC(Voltage:real);
{== Zapnuti PIC pro programovani, cteni, verifikaci ==}
{   Voltage udava pracovni napajeci napeti            }
begin StartPICStat:=true;    { true znamena programovani }
      {-- nastav definovany stav signalu --}
      P^.SetReset(zero);     { aktivuj reset   }
      P^.SetVcc(Voltage);    { zapni napajeni  }
      P^.SetData(zero);      { otevri budice   }
      P^.SetClock(zero);
      xDelay(50);            { ustaleni napeti }
      P^.SetReset(one);      { ukonci reset    }
      P^.SetVpp(13.0);       { zapni Vpp       }

      xDelay(50);            { ustaleni napeti }
end; {StartPIC}

procedure EndPIC;
{== Vypnuti PIC po programovani ==}
begin P^.SetData(tristate);  { odpoj vystupy   }
      P^.SetClock(tristate);
      P^.SetVpp(0);          { odpoj Vpp       }
      P^.SetReset(zero);     { aktivuj reset   }
      P^.SetVcc(0);          { vypni Vcc       }
      xDelay(50);            { pockej          }
      P^.SetReset(one);      { a odpoj i reset ( pokud je napajeni zvenku ) }
                             { tak se to rozbehne }
      StartPICStat:=false;   { false znamena konec programovani }
end; {EndPIC}

{====== Posilani prikazu a dat do a z procesoru ======}

procedure OutCommandPIC(Command:word);
{== Zapise prikaz ( bez dat ) do PIC ==}
var i:integer;
begin for i:=1 to 6 do
      begin if (Command and 1)=1 then P^.SetData(one)
                                 else P^.SetData(zero);
            P^.SetClock(one);
            P^.SetClock(zero);
            Command:=Command shr 1;
      end;
      P^.SetData(tristate);        { odpoj datovy vystup }
end; {OutCommandPIC}

procedure OutputDataPIC(Bits:word; Command:word; Data:word);
{== Zapise prikaz a data do PIC ==}
{ Prenasi se bud 14 ( obvody 12 nebo 14 bitu core ) nebo 16 ( soucastky }
{ s paritou pameti programu ) bitu                                      }
var i:integer;
begin OutCommandPIC(Command);
      P^.SetData(zero);       { start bit 0 }
      P^.SetClock(one);
      P^.SetClock(zero);
      for i:=1 to Bits do
      begin if (Data and 1)=1 then P^.SetData(one)      { data bit }
                              else P^.SetData(zero);
            P^.SetClock(one);
            P^.SetClock(zero);
            Data:=Data shr 1;
      end;
      P^.SetData(zero);       { stop bit 0 }
      P^.SetClock(one);
      P^.SetClock(zero);
end; {OutputDataPIC}

function InputDataPIC(Bits:word; Command:word):word;
{== Posli prikaz a vrat odpoved z PIC ==}
{   Precte zadany pocet bitu dat. Tento pocet nemusi }
{   nutne souhlasit s poctem platnych bitu dat       }
{   ( napriklad u souvasti s delkou slova 12 bitu ). }
var Data:word;
    i:integer;
    b:word;
begin OutCommandPIC(Command);  { zanecha DATA jako vstup }
      Data:=0;
      b:=1;                    { bitova maska }
      P^.SetClock(one);        { start bit }
      P^.SetClock(zero);
      for i:=1 to Bits do
      begin P^.SetClock(one);
            P^.SetClock(zero);
            if P^.GetData then Data:=Data or b;   { byla datova 1 }
            b:=b shl 1;        { posun masku }
      end;
      P^.SetClock(one);        { stop bit }
      P^.SetClock(zero);
      InputDataPIC:=Data;
end; {InputDataPIC}

{====== Programovaci prikazy pro PIC ======}

const LoadConfiguration         = $00;
      LoadDataPM                = $02;
      ReadDataPM                = $04;
      IncrementAddress          = $06;
      BeginProgramming          = $08;
      BeginProgrammingOnlyCycle = $18;  { _EE2_ - alternativa k BeginProgramming }
      LoadDataDM                = $03;
      ReadDataDM                = $05;
      BulkErasePM               = $09;
      BulkEraseDM               = $0B;
      EndProgramming            = $0E;  { _EPROMx_ - jen pro EPROM verze   }
      Dis1                      = $01;  { _EEx_ - jen pro odstraneni code  }
      Dis2                      = $07;  {   protection                     }

{====== Zpracovani parametru ======}

const Port      : integer =     -1;     { Cislo portu pro komunikaci    }
      FileFormat: IO_t    =  _NIL_;     { Format datoveho souboru       }
      CfgString : string  =     '';     { Sem si zapamatuji Cfg retezec }
                             { Nenastaveny ( nepouzity ) prepinac je -1 }

{====== Zpracovani prepinacu ======}

function TestSwitch(var s:string; sw:string):boolean;
{== Pokud je sw soucasti retezce s vraci true a odstrani sw z retezce s ==}
var i:integer;
begin TestSwitch:=false;
      {-- test --}
      i:=pos(sw+' ',s+' ');
      if i=0 then exit;  { nenalezen }
      {-- nalezen --}
      s:=copy(s,1,i-1)+copy(s,i+length(sw)+1,255);
      TestSwitch:=true;
end; {TestSwitch}

{====== Zpracovani Cfg parametru ======}

procedure CfgSwitches( var s:string; Ostre:boolean;
                              var Cfg:word; var CfgStat:boolean
                     );
{== Zpracuje prepinace konfiguracniho slova, pokud je predano true ==}
{   tak upravi hodnotu predaneho parametru. Uzere z retezce s        }
{   prepinace, ktere zpracovala                                      }
{                                                                    }
{   s       retezec s parametry, zpracovane casti se uzerou          }
{   Ostre   true znamena, ze se maji data aktualizovat               }
{   Cfg     config data                                              }
{   CfgStat priznak platnosti dat v poli Cfg                         }
{                                                                    }
begin {-- dle typu procesoru preda konkretni procedure --}

end; {CfgSwitches}

procedure DisplayConfigWord(Cfg:word; Cfg_Stat:boolean);
begin if Cfg_Stat
      then begin write('Config Word: ');
                 HexWord(output,Cfg);
                 writeln;
           end
           else begin writeln('Config Word: none');
                end;
end; {DisplayConfigWord}

procedure Switches(s:string; var Data:PicData_t);
{== Zpracovani prepinacu, volba typu soucastky, init datoveho objektu ==}
var ix:integer;         { index do tabulky CfgDefAll}
    Proc:ProcInfo_t;    { informace o vybrane procesoru }
begin s:=UpStr(s);
  {-- adresa portu --}
  if TestSwitch(s,'LPT3' ) then Port      :=       3; { Z BIOS tabulky        }
  if TestSwitch(s,'LPT2' ) then Port      :=       2;
  if TestSwitch(s,'LPT1' ) then Port      :=       1;
  if TestSwitch(s,'ALL03') then Port      :=    $2E0; { ALL03 porty           }
  {-- typ souboru --}
  if TestSwitch(s,'HEX'  ) then FileFormat:=   _HEX_; { Moje cislovani filtru }
  if TestSwitch(s,'TEXT' ) then FileFormat:=   _TXT_;
  if TestSwitch(s,'TXT'  ) then FileFormat:=   _TXT_;
  {-- Default hodnoty --}
  if Port       =    -1 then Port       :=       1;
  if FileFormat = _NIL_ then FileFormat :=   _TXT_;
  {-- typ a parametry soucastky --}
  ProcFind(s,Proc);
  
  if Proc.Name=''
     then begin (* Volba default procesoru je zamerne zaslapnuta protoze mate uzivatele
                ProcFind('PIC16F84',Proc); { Default hodnota }
                *)
          end
     else if TestSwitch(s,Proc.Name) then;    { Sezer pouzitou hodnotu }
  Data.Init(Proc);
  {-- prislusnost soucastky do skupiny pro Cfg prepinace --}
  ix:=CfgFindProcGroup(Proc.Cfg,CfgDefAll);   { i je index do konstanty CfgDefAll }
  {-- zpracovani prepinacu specifickych pro Cfg slovo --}
  {   s  ... retezec s prepinacema, ktere jeste nebyly zpracovany }
  {   ix ... index do tabulky CfgDefAll s informacemi o prepinacich skupiny }
  CfgString:=CfgX;  { prazdny ( sama 'X' Cfg retezec }
  if ix>0 then
  begin CfgString:=CfgTestKeyMultiple(s,CfgDefAll[ix]);
        if CfgString='' then Error('Konflicting Cfg switch '+GetWord(s),0);
  end;
  if s<>'' then Error('Unrecognized switches: '+s,0);
end; {Switches}

{====== Hlavni cinnosti ( akce ) programu ======}

procedure Help;
{== Vypise navod k pouziti ==}
var i:integer;
    Proc:ProcInfo_t;
begin writeln('Usage: PICPGR <what_to_do> [<file_name>] [switches]');
      writeln;
      writeln('PICPGR READ    <file_name>          [switches]');
      writeln('PICPGR PROGRAM <file_name>          [switches]');
      writeln('PICPGR VERIFY  <file_name>          [switches]');
      writeln('PICPGR ERASE                        [switches]');
      writeln('PICPGR RUN                          [switches]');
      writeln('PICPGR STOP                         [switches]');
      writeln('PICPGR RESET                        [switches]');
      writeln('PICPGR CONVERT <file_in> <file_out> [switches]');
      writeln;
      writeln('Exit:          0                    O.K.');
      writeln('               1                    Generic Error');
      writeln('               100                  Program or Verify Error');
      writeln;
      writeln('Switches:      LPT1*, LPT2, LPT3    Development Programmer via LPT');
      writeln('*=default      ALL03                HI-LO Programmer');
      writeln('               TXT*, HEX            Data File Format');
      writeln('               PIC16F84*            Processor''s name');
      writeln;
      PressEnter;
      writeln('Note:          Processor groups can have their''s own set of switches');
      writeln('               for overiding of Config Word settins.');
      writeln;
      writeln('               Boolean type:        CP, CP_ON, CP_OFF');
      writeln('                                    ( CP is CP_ON )');
      writeln;
      writeln('               Binary string:       CP_101');
      writeln('                                    ( binary digit string must');
      writeln('                                      have corect length )');
      writeln;
      writeln('Help function:');
      writeln;
      writeln('PICPGR                              Long help  - all processors)');
      writeln('PICPGR <proc_name>                  Short help - particular processor');
      writeln;
      {-- varianta podle toho, zda mne zajima konkretni procesor --}
      ProcFind(GetParamLine(1),Proc);
      if Proc.Name<>''
      then begin {-- konkretni procesor --}
                 ProcDisplayInfo(Proc);   { zobraz co je vybrane }
                 i:=CfgFindProcGroup(Proc.Cfg,CfgDefAll);
                 if i>0 then
                 begin writeln(Proc.Name+' specific switches for Config Word overiding:');
                       writeln;
                       CfgDisplayHelp(CfgDefAll[i]);
                 end;
      end
      else begin {-- neni konkretni procesor - zobraz vsechno --}
                 PressEnter;
                 CfgDisplayHelpAll(CfgDefAll);
                 PressEnter;
                 ProcDisplayInfoAll;
           end;
      halt(1);
end; {Help}

var Data:PicDataIo_t;  { globalni promenna pro ulozeni dat           }
                       {  globalni je proto, protoze se neda         }
                       {   pouzit lokalni ( nevejde se na zasobnik ) }

procedure ToDoRead;
{== Bude se cist ==}
{   Precte obsah soucastky do pametovych bufferu }
var i:integer;
    j:integer;
    Proc:ProcInfo_t;
begin {-- Zpracovani parametru --}
      if paramcount<2 then Help; { chybi jmeno souboru }
      Switches(GetParamLine(3),Data);  { typ procesoru, init Data }
      Data.GetProcInfo(Proc);          { vytahni info o procesoru }
      if Proc.Name='' then Error('Processor type missing',0);
      ProcDisplayInfo(Proc);           { zobraz                   }
      {-- Cteni --}
      InitHW(Port);
      writeln('Reading data from PIC ...');
    StartPIC(5.0);
      case Proc.Alg of
      _EPROM1_:
      begin {-- Read Program Memory --}
            OutCommandPIC(IncrementAddress); {preskoc konfiguracni slovo}
            if Proc.PM_Len>0 then
            for i:=Proc.PM_Base to Proc.PM_Base+Proc.PM_Len-1 do
            begin Data.StoreProc( i,
                                  InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask
                                );
                  OutCommandPIC(IncrementAddress);
            end;
            {-- Read Config Memory --}
            if Proc.CM_Len>0 then
            for i:=Proc.CM_Base to Proc.CM_Base+Proc.CM_Len-1 do
            begin Data.StoreProc( i,
                                  InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask
                                );
                  OutCommandPIC(IncrementAddress);
            end;
            {--- Read Config Word ---}
            EndPIC;
            StartPIC(5.0);
            Data.StoreProc( Proc.Cfg_Base,
                            InputDataPIC(Proc.Bits,ReadDataPM) and Proc.Cfg_Mask
                            );
      end;
      _EPROM2_,
      _EE1_,
      _EE2_ :
      begin {-- Read Program Memory --}
            if Proc.PM_Len>0 then
            for i:=Proc.PM_Base to Proc.PM_Base+Proc.PM_Len-1 do
            begin Data.StoreProc( i,
                                  InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask
                                );
                  OutCommandPIC(IncrementAddress);
            end;
            {-- Read Data Memory --}
            if Proc.DM_Len>0 then
            for i:=Proc.DM_Base to Proc.DM_Base+Proc.DM_Len-1 do
            begin Data.StoreProc( i,
                                  InputDataPIC(Proc.Bits,ReadDataDM) and Proc.DM_Mask
                                );
                  OutCommandPIC(IncrementAddress);
            end;
            {-- Read Config Memory --}
            OutputDataPIC(Proc.Bits,LoadConfiguration,$FFFF);
            if Proc.CM_Len>0 then
            for i:=Proc.CM_Base to Proc.CM_Base+Proc.CM_Len-1 do
            begin Data.StoreProc( i,
                                  InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask
                                );
                  OutCommandPIC(IncrementAddress);
            end;
      end;
      _EPROM3_:
      begin Error('Algorithm EPROM3 not yet supported',0);
      end;
      else Error('Algorithm not supported',0);
      end; {case}
    EndPIC;
      {-- Vystup vysledku --}
      Data.Export(paramstr(2),FileFormat,';Directly read from '+Proc.Name);
      writeln('... Done');
end; {ToDoRead}

procedure Delta(adr,data1,data2:word);
{== Vypis info o rozdilu ==}
begin HexWord(output,adr);
      write(': ');
      HexWord(output,data1);
      write('-');
      HexWord(output,data2);
      writeln;
end; {Delta}

procedure ToDoProgram;
{== Bude se programovat ==}
var i:integer;
    err,count:integer;
    data_wr:word;   { data, ktera se maji zapsat }
    data_rd:word;   { data z kontrolniho cteni   }
    n:integer;
    Proc:ProcInfo_t;
    CfgStringTmp:string;
begin {-- Zpracovani parametru --}
      if paramcount<2 then Help; { chybi jmeno souboru }
      Switches(GetParamLine(3),Data);  { typ procesoru, init Data }
      Data.GetProcInfo(Proc);          { vytahni info o procesoru }
      if Proc.Name='' then Error('Processor type missing',0);
      ProcDisplayInfo(Proc);           { zobraz                   }
      InitHW(Port);
      {-- Vstup dat --}
      Data.Import(paramstr(2),FileFormat);
      {-- Program --}
      writeln('Programming data to PIC ...');
      err:=0;
      count:=0;
      StartPIC(5.0);
      {-- Program Program Memory --}
      if Proc.PM_Len>0 then
      begin
       if Proc.Alg=_EPROM1_ then OutCommandPIC(IncrementAddress); {preskoc konfiguracni slovo}
       for i:=Proc.PM_Base to Proc.PM_Base+Proc.PM_Len-1 do
       begin
        if Data.GetStat(i) then                 { platna data ? }
          begin
           data_wr:=Data.GetData(i);  { vezmi data    }
            case Proc.Alg of
                _EPROM1_ :
                   begin
                    n:=0;
                    repeat
                        OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        OutCommandPIC(EndProgramming);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask;
                        inc(n);
                    until (n>8) or (data_rd=data_wr);
                        if data_rd<>data_wr
                        then begin Delta(i,data_wr,data_rd);
                                   inc(err);
                             end
                        else for n:=n*11 downto 0 do
                             begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                                   OutCommandPIC(BeginProgramming);
                                   xDelayMicro(Proc.Tprog);
                                   OutCommandPIC(EndProgramming);
                             end;
                        inc(count);
                  end;
                _EPROM2_ :
                  begin
                        n:=0;
                    repeat
                        OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        OutCommandPIC(EndProgramming);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask;
                        inc(n);
                    until (n>25) or (data_rd=data_wr);
                        if data_rd<>data_wr
                        then begin Delta(i,data_wr,data_rd);
                                   inc(err);
                             end
                        else for n:=3*n downto 0 do
                             begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                                   OutCommandPIC(BeginProgramming);
                                   xDelayMicro(Proc.Tprog);
                                   OutCommandPIC(EndProgramming);
                             end;
                        inc(count);
                  end;
                _EPROM3_ :
                  begin Error('Algorithm EPROM3 not yet supported',0);
                  end;
                _EE1_,
                _EE2_ :
                  begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask;
                        if data_rd <> data_wr
                        then begin Delta(i,data_wr,data_rd);
                                   inc(err);
                             end;
                        inc(count);
                  end;
                else Error('Algorithm not supported',0);
                end; {case}
          end; {od if testujicich platnost dat}
        OutCommandPIC(IncrementAddress); { dalsi adresa PM }
      end; {od cyklu for pres vsechny adresy}
      {-- Program Data Memory --}
      if Proc.DM_Len>0 then
      for i:=Proc.DM_Base to Proc.DM_Base+Proc.DM_Len-1 do
      begin
        if Data.GetStat(i)
        then
          begin data_wr:=Data.GetData(i);
                case Proc.Alg of
                _EPROM1_,
                _EPROM2_,
                _EPROM3_ :
                  begin Error('Internal Error: Algorithm EPROMx does not know Data Memory',0);
                  end;
                _EE1_,
                _EE2_ :
                  begin OutputDataPIC(Proc.Bits,LoadDataDM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataDM) and Proc.DM_Mask;
                        if data_rd <> data_wr
                        then begin Delta(i,data_wr,data_rd);
                                   inc(err);
                             end;
                        inc(count);
                  end;
                else Error('Algorithm not supported',0);
                end; {case}
          end;
        OutCommandPIC(IncrementAddress);
      end;

      {-- priprav Config Word --}
      if (CfgString<>'') and (CfgString<>CfgX)
      then begin {-- prepinaci zmeneno Cfg slovo --}
                 writeln('Required Config Word:       ',CfgString);
                 if Data.GetStat(Proc.Cfg_Base)
                 then begin {-- Cfg slovo bylo v datovem souboru --}
                            CfgStringTmp:=Word2Str(Data.GetData(Proc.Cfg_Base));
                            writeln('Config Word from data file: ',CfgStringTmp);
                      end
                 else begin {-- Cfg slovo nebylo v datovem souboru --}
                            CfgStringTmp:=CfgX; { prazdne slovo ( sama X ) }
                      end;
                 {-- sloz slovo ze souboru a z prepinacu --}
                 CfgString:=CfgOverride(CfgStringTmp,CfgString);
                 writeln('Result:                     ',CfgString);
                 {-- uloz slozene slovo do datoveho pole --}
                 Data.StoreProc(Proc.Cfg_Base,Str2Word(CfgString));
           end;

      {-- Program Config Memory --}
      {--- algoritmus _EPROM1_ prikaz Load Configuration nezna}
      if Proc.Alg<>_EPROM1_ then OutputDataPIC(Proc.Bits,LoadConfiguration,$FFFF);
      if Proc.CM_Len>0 then
      for i:=Proc.CM_Base to Proc.CM_Base+Proc.CM_Len-1 do
      begin
        if Data.GetStat(i)
        then
          begin data_wr:=Data.GetData(i);
                case Proc.Alg of
                _EPROM1_ :
                  begin
                  n:=0;
                    repeat
                        OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        OutCommandPIC(EndProgramming);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask;
                        inc(n);
                    until (n>8) or (data_wr=data_rd);
                    if data_rd <> data_wr
                    then begin Delta(i,data_wr,data_rd);
                               inc(err);
                         end
                    else for n:=11*n downto 0 do
                         begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                               OutCommandPIC(BeginProgramming);
                               xDelayMicro(Proc.Tprog);
                               OutCommandPIC(EndProgramming);
                         end;
                  end;
                _EPROM2_ :
                  begin
                        n:=0;
                    repeat
                        OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        OutCommandPIC(EndProgramming);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask;
                        inc(n);
                    until (n>25) or (data_wr=data_rd);
                    if data_rd <> data_wr
                    then begin Delta(i,data_wr,data_rd);
                               inc(err);
                         end
                    else for n:=3*n downto 0 do
                         begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                               OutCommandPIC(BeginProgramming);
                               xDelayMicro(Proc.Tprog);
                               OutCommandPIC(EndProgramming);
                         end;
                  end;
                _EPROM3_ :
                  begin Error('Algorithm EPROM3 not yet supported',0);
                  end;
                _EE1_,
                _EE2_ :
                  begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                        OutCommandPIC(BeginProgramming);
                        xDelayMicro(Proc.Tprog);
                        data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask;
                        if i=Proc.Cfg_Base
                        then begin {-- Cfg bunka - maskuj --}
                                   if ( ( data_wr xor data_rd ) and Proc.Cfg_Mask ) <> 0
                                   then begin Delta(i,data_wr,data_rd);
                                              inc(err);
                                        end;
                             end
                        else begin if data_wr <> data_rd
                                   then begin Delta(i,data_wr,data_rd);
                                              inc(err);
                                        end;
                             end;
                        inc(count);
                  end;
                else Error('Algorithm not supported',0);
                end; {case}
          end;
        OutCommandPIC(IncrementAddress);
      end;

    {--- u algoritmu _EPROM1_ se konfiguracni slovo programuje zvlast}
    if Proc.Alg=_EPROM1_ then
      if Data.GetStat(Proc.Cfg_Base) then
       begin
        {--- toto zajisti prechod na konfig. bunku}
        EndPIC;
        StartPIC(5.0);
        data_wr:=Data.GetData(Proc.Cfg_Base);
        n:=0;
        repeat
         OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
         OutCommandPIC(BeginProgramming);
         xDelayMicro(Proc.Tprog);
         OutCommandPIC(EndProgramming);
         data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.Cfg_Mask;
         inc(n);
        until (n>8) or (data_rd=data_wr);
        if data_rd<>data_wr
          then begin Delta(Proc.Cfg_Mask,data_wr,data_rd);
                     inc(err);
               end
          else for n:=n*11 downto 0 do
            begin OutputDataPIC(Proc.Bits,LoadDataPM,data_wr);
                  OutCommandPIC(BeginProgramming);
                  xDelayMicro(Proc.Tprog);
                  OutCommandPIC(EndProgramming);
            end;
         inc(count);
        end;
     end;
    EndPIC;
      writeln('... Done');
      write('Programmed ',count,' Data Words, ');
      case err of
      0  : writeln('No diferences found');
      1  : writeln(err,' diference found');
      else writeln(err,' diferences found');
      end;{case}
      if err<>0 then exitcode:=100;   { Jako by bylo halt(100) }
end; {ToDoProgram}

procedure ToDoVerify;
{== Porovnani obsahu soucastky se souborem ==}
var i:integer;
    data_fi:word;   { data z objektu }
    data_rd:word;   { data prectena ze soucastky }
    err,count:integer;
    Proc:ProcInfo_t;
begin {-- Zpracovani parametru --}
      if paramcount<2 then Help;       { chybi jmeno souboru }
      Switches(GetParamLine(3),Data);  { typ procesoru, init Data }
      Data.GetProcInfo(Proc);          { vytahni info o procesoru }
      if Proc.Name='' then Error('Processor type missing',0);
      ProcDisplayInfo(Proc);           { zobraz                   }
      InitHW(Port);
      {-- Vstup dat --}
      Data.Import(paramstr(2),FileFormat);
      {-- Verify --}
      writeln('Verifying ...');
      err:=0;
      count:=0;
    StartPIC(5.0);
      case Proc.Alg of  { toto je jen test na podporovane algoritmy }
      _EPROM1_,
      _EPROM2_,
      _EE1_,
      _EE2_ :
      begin {-- Verify Program Memory --}
            if Proc.PM_Len>0 then
            for i:=Proc.PM_Base to Proc.PM_Base+Proc.PM_Len-1 do
            begin
              if Data.GetStat(i) { platna data }
              then begin data_fi:=Data.GetData(i);
                         data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.PM_Mask;
                         if data_fi <> data_rd
                            then begin Delta(i,data_fi,data_rd);
                                       inc(err);
                                 end;
                            inc(count);
                   end;
              OutCommandPIC(IncrementAddress);
            end;
            {-- Verify Data Memory --}
            if Proc.DM_Len>0 then
            for i:=Proc.DM_Base to Proc.DM_Base+Proc.DM_Len-1 do
            begin
              if Data.GetStat(i) { platna data }
              then begin data_fi:=Data.GetData(i);
                         data_rd:=InputDataPIC(Proc.Bits,ReadDataDM) and Proc.DM_Mask;
                         if data_rd <> data_fi
                         then begin Delta(i,data_fi,data_rd);
                                    inc(err);
                              end;
                         inc(count);
                   end;
              OutCommandPIC(IncrementAddress);
            end;
            {-- Verify Config Memory --}
            OutputDataPIC(Proc.Bits,LoadConfiguration,$FFFF);
            if Proc.CM_Len>0 then
            for i:=Proc.CM_Base to Proc.CM_Base+Proc.CM_Len-1 do
            begin
              if Data.GetStat(i)
              then begin data_fi:=Data.GetData(i);
                         data_rd:=InputDataPIC(Proc.Bits,ReadDataPM) and Proc.CM_Mask;
                         if i=Proc.Cfg_Base
                         then begin {-- Cfg bunka - maskuj --}
                                    if ( ( data_fi xor data_rd ) and Proc.Cfg_Mask ) <> 0
                                    then begin Delta(i,data_fi,data_rd);
                                               inc(err);
                                         end;
                              end
                         else begin if data_fi <> data_rd
                                    then begin Delta(i,data_fi,data_rd);
                                               inc(err);
                                         end;
                              end;
                         inc(count);
                   end;
              OutCommandPIC(IncrementAddress);
            end;
      end;
      _EPROM3_:
      begin Error('Algorithm EPROM3 not yet supported',0);
      end;
      else Error('Algorithm not supported',0);
      end; {case}
    EndPIC;
      writeln('... Done');
      write('Compared ',count,' Data Words, ');
      case err of
      0  : writeln('No diferences found');
      1  : writeln(err,' diference found');
      else writeln(err,' diferences found');
      end;{case}
      if err<>0 then exitcode:=100;   { Jako by bylo halt(100) }
end; {ToDoVerify}

procedure ToDoErase;
{== Bude se pouze mazat ==}
var i:integer;
    Proc:ProcInfo_t;
begin {-- Zpracovani parametru --}
      Switches(GetParamLine(2),Data);  { typ procesoru, init Data }
      Data.GetProcInfo(Proc);          { vytahni info o procesoru }
      if Proc.Name='' then Error('Processor type missing',0);
      ProcDisplayInfo(Proc);           { zobraz                   }
      {-- Erase --}
      case Proc.Alg of
      _EPROM1_,
      _EPROM2_,
      _EPROM3_ :
      begin Error('Use UV light to erase EPROM processor!',0)
      end;
      _EE1_,
      _EE2_ :
      begin InitHW(Port);
            writeln('Erasing PIC');
          StartPIC(5.0);
            {-- postup pro odblokovani CP soucastky --}
            OutputDataPIC(Proc.Bits,LoadConfiguration,$FFFF);
            for i:=1 to Proc.CM_Len-1 do OutCommandPIC(IncrementAddress);
            OutCommandPIC(Dis1);
            OutCommandPIC(Dis2);
            OutCommandPIC(BeginProgramming);
            xDelayMicro(12000);
            OutCommandPIC(Dis1);
            OutCommandPIC(Dis2);
            {-- Mazani datove pameti --}
            {   Funguje na C84/F84/F877 ale postup je uveden jen }
            {   u obvodu F84. Obvod C84 potrebuje stejny postup. }
            OutputDataPIC(Proc.Bits,LoadDataDM,$FFFF);
            OutCommandPIC(Dis1);
            OutCommandPIC(Dis2);
            OutCommandPIC(BeginProgramming);
            xDelayMicro(10000);
            OutCommandPIC(Dis1);
            OutCommandPIC(Dis2);
          EndPIC;
      end;
      else Error('Algorithm not supported',0);
      end; {case}
end; {ToDoErase}

procedure ToDoRun;
{== Zapne napajeni a spusti program ==}
begin Switches(GetParamLine(2),Data);  { typ procesoru, init Data }
      InitHW(Port);
      P^.SetReset(zero);   { aktivuj reset }
      P^.SetVcc(5.0);      { zapni napajeni }
      xDelay(50);          { pockej na ustaleni }
      P^.SetReset(one);    { skonci reset }
      writeln('Running ...');
end; {ToDoRun}

procedure ToDoStop;
{== Vypne napajeni ==}
begin Switches(GetParamLine(2),Data);  { typ procesoru, init Data }
      InitHW(Port);
      P^.SetReset(zero);
      P^.SetVcc(0);
      writeln('... Stoped');
end; {ToDoStop}

procedure ToDoReset;
{== Provede Reset bez vypnuti napajeni ==}
begin Switches(GetParamLine(2),Data);  { typ procesoru, init Data }
      InitHW(Port);
      P^.SetReset(zero);
      P^.SetVcc(5.0);
      xDelay(50);
      P^.SetReset(one);
      writeln('... Reset ...');
end; {ToDoReset}

procedure ToDoConvert;
{== Procedura pro konverzi formatu souboru ==}
var s:string;
    i:integer;
    Proc:ProcInfo_t;
begin {-- Zpracovani parametru --}
      if paramcount<3 then Help; { chybi jmeno souboru }
      Switches(GetParamLine(4),Data);  { typ procesoru, init Data }
      Data.GetProcInfo(Proc);          { vytahni info o procesoru }
      if Proc.Name='' then Error('Processor type missing',0);
      ProcDisplayInfo(Proc);           { zobraz                   }
      {-- Vstup dat --}
      Data.Import(paramstr(2),FileFormat);
      {-- Vystup dat --}
      case FileFormat of
      _HEX_ : FileFormat:=_TXT_;
      _TXT_ : FileFormat:=_HEX_;
      end; {case}
      Data.Export(paramstr(3),FileFormat,';Converted from file '+paramstr(2));
      writeln('Done');
end; {ToDoConvert}

{====== Hlavni program, Entry a Exit programy ======}

const OldExitProc:pointer=NIL;     { Pro proceduru MyExitProc }

procedure MyExitProc;
{== Ukoncujici procedura pro pripad predcasneho ukonceni programu ==}
{   Tato procedura normalni nic ndela ale pokud je pri ukonceni     }
{   programu nastaven priznak aktivity programovani zavola          }
{   proceduru StopPIC.                                              }
{ Promenne:  StartPICStat .. true znamena aktivitu pri programovani }
{            P            .. pointer na objekt zastupujici hardware }
far;
begin ExitProc:=OldExitProc;
      if StartPICStat and (P<>nil) then EndPIC;
end; {MyExitProc}

begin assign(output,''); { aby slo vystup presmerovat do souboru }
      rewrite(output);
      writeln;
      writeln('PIC Development Programmer');
      writeln('==========================');
      writeln('(c) miho ',date,'       v ',ver);
      writeln;

      {-- test - zadny parametr --}
      if paramcount=0 then Help;
      {-- zaregistruj ukonceni pro pripad predcasneho skonceni programu --}
      OldExitProc:=ExitProc;
      ExitProc:=@MyExitProc;
      {-- rozhodni cinnost --}
      if      UpStr(paramstr(1))='READ'    then ToDoRead
      else if UpStr(paramstr(1))='PROGRAM' then ToDoProgram
      else if UpStr(paramstr(1))='VERIFY'  then ToDoVerify
      else if UpStr(paramstr(1))='ERASE'   then ToDoErase
      else if UpStr(paramstr(1))='RUN'     then ToDoRun
      else if UpStr(paramstr(1))='STOP'    then ToDoStop
      else if UpStr(paramstr(1))='RESET'   then ToDoReset
      else if UpStr(paramstr(1))='CONVERT' then ToDoConvert
      else if UpStr(paramstr(1))='HELP'    then Help
      else Help;
      Halt(exitcode);   { Exitcode si nastavuji pri chybe pri programovani }
end.                    { nebo pri verifikaci. Je to treba uvest takto     }
                        { explicitne jinak se provede Halt(0).             }
