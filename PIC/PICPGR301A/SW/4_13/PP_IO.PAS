unit PP_IO;

{===========================================================================}
{ (c) miho / DECROS/ICZ 2000/2001/2002                                      }
{===========================================================================}
{ Zde jsou procedury a funkce pro vstup a vystup dat v definovanych         }
{ formatech ( viz IO_t ). Je to objekt, ktery dedi datovy objekt.           }
{===========================================================================}
{verze:                                                                     }
{1.00 - Uvodni verze                                                        }
{1.01 - Uprava exportu Config Word pro obvody s _EPROM1_   PEFI             }

interface

uses PP_COMON,
     PP_DATA,
     PP_DEFS;

const ItemPerLine=8;    { Pocet polozek na jedne radce exportu }

type IO_t=
     ( _HEX_,           { vyber IO filtru typu text      }
       _TXT_,           { vyber IO filtru typu intel hex }
       _NIL_            { neplatna volba                 }
     );

type PicDataIo_t=object(PicData_t)

       procedure Export( Name:string; Format:IO_t; Source:string);
       {== Vystup dat z objektu do souboru ==}

       procedure Import( Name:string; Format:IO_t);
       {== Vstup dat ze souboru do datoveho objektu ==}

     end; {object}



implementation

{===========================================================================}
{ Export dat do souboru                                                     }
{===========================================================================}

procedure _LineOut_TXT_(var f:text; Adr:word; Count:word; var Data:PicDataIo_t);
{== Pomocna procedura vypise radek TXT dat z datatoveho objektu do souboru ==}
var i:integer;
begin HexWord(f,Adr);
      write(f,': ');
      for i:=0 to Count-1 do HexWordSp(f,Data.GetData(Adr+i));
      writeln(f);
end; {_LineOut_TXT_}

procedure _LineOut_HEX_(var f:text; Adr:word; Count:word; var Data:PicDataIo_t);
{== Pomocna procedura vypise radek HEX dat z datoveho objektu do souboru ==}
var i:integer;
    dat:word;
    suma:byte;      { kontrolni soucet HEX }
    procedure sum(data:word);
    begin inc(suma,data);
          inc(suma,data shr 8);
    end; {sum}
begin suma:=0;
      write(f,':10');
      sum($10);
      HexWord(f,Adr*2);
      sum(Adr*2);
      write(f,'00');
      for i:=0 to Count-1 do begin dat:=Data.GetData(Adr+i);
                                   HexByte(f,dat);
                                   HexByte(f,dat shr 8);
                                   sum(dat);
                           end;
      HexByte(f,byte(-suma));
      writeln(f);
end; {_LineOut_HEX_}

procedure PicDataIo_t.Export( Name:string; Format:IO_t; Source:string);
{== Vystup dat z objektu do souboru ==}
var f:text;
    i:integer;
    len:word;
    Proc:ProcInfo_t;
begin Name:=UpStr(Name);
      writeln('Exporting data to file:   ',Name);
      {== Zalozeni souboru ==}
      assign(f,Name);
      {$I-}
      rewrite(f);
      {$I+}
      if ioresult<>0 then Error('Unable create file: '+Name,0);
      {== Hlavicka souboru ==}
      {$I-}
      case format of
        _TXT_ : begin writeln(f,source);
                      writeln(f);
                end;
        _HEX_ : ;
      end; {case}
      {== Telo souboru ( data ) ==}
      {-- Pamet programu --}
      GetProcInfo(Proc);   { vytahni si parametry }
      if Proc.PM_Len>0 then
      begin i:=0;
            while i<Proc.PM_Len do
            begin if (i+ItemPerLine)<Proc.PM_Len
                     then len:=ItemPerLine
                     else len:=Proc.PM_Len-i;
                  case format of
                       _TXT_ : _LineOut_TXT_(f,Proc.PM_Base+i,len,self);
                       _HEX_ : _LineOut_HEX_(f,Proc.PM_Base+i,len,self);
                  end; {case}
                  i:=i+ItemPerLine;
            end;
            {-- Oddelovac --}
            case format of
                 _TXT_ : writeln(f);
                 _HEX_ : writeln(f);
            end; {case}
      end;
      {-- Pamet dat --}
      if Proc.DM_Len>0 then
      begin i:=0;
            while i<Proc.DM_Len do
            begin if (i+ItemPerLine)<Proc.DM_Len
                     then len:=ItemPerLine
                     else len:=Proc.DM_Len-i;
                  case format of
                       _TXT_ : _LineOut_TXT_(f,Proc.DM_Base+i,len,self);
                       _HEX_ : _LineOut_HEX_(f,Proc.DM_Base+i,len,self);
                end; {case}
                  i:=i+ItemPerLine;
            end;
            {-- Oddelovac --}
            case format of
                 _TXT_ : writeln(f);
                 _HEX_ : writeln(f);
            end; {case}
      end;
      {-- Konfiguacni pamet --}
      if Proc.CM_Len>0 then
      begin i:=0;
            while i<Proc.CM_Len do
            begin if (i+ItemPerLine)<Proc.CM_Len
                     then len:=ItemPerLine
                     else len:=Proc.CM_Len-i;
                  case format of
                       _TXT_ : _LineOut_TXT_(f,Proc.CM_Base+i,len,self);
                       _HEX_ : _LineOut_HEX_(f,Proc.CM_Base+i,len,self);
                  end; {case}
                  i:=i+ItemPerLine;
            end;
      end;
            {-- Oddelovac --}
            case format of
                 _TXT_ : writeln(f);
                 _HEX_ : writeln(f);
            end; {case}

      {-- konfiguracni slovo --                 }
      {-- jen u procesoru s algoritmem _EPROM1_,}
      {-- tam neni soucasti konfig. pameti      }
      if Proc.Alg=_EPROM1_ then
      begin
       case format of
            _TXT_ : _LineOut_TXT_(f,Proc.Cfg_Base,1,self);
            _HEX_ : _LineOut_HEX_(f,Proc.Cfg_Base,1,self);
       end; {case}
      end;

      {== Paticka souboru ==}
      case format of
        _TXT_ : ;
        _HEX_ : writeln(f,':00000001FF');
      end; {case}
      {== Uzavreni souboru ==}
      close(f);
      {$I+}
      if ioresult<>0 then Error('Unable write to file: '+name,0);
end; {Export}

{===========================================================================}
{ Import dat ze souboru                                                     }
{===========================================================================}

procedure _LineIn_TXT_(var s:string; var Data:PicData_t; LineNumber:integer);
{== Pomocna procedura zpracuje radku TXT textu a data ulozi do datoveho objektu ==}
var i:integer;

    adr,dat:word;
    valid:boolean;
 procedure blank;
 begin while ( (s[i]=' ') or (s[i]=#8) ) and (i<length(s)) do inc(i);
 end;
 procedure hex;
 begin dat:=0;
       valid:=false;
       blank;
       while (s[i]in ['0'..'9']) or (s[i]in ['A'..'F'])
       do begin valid:=true;
                if s[i]<='9' then dat:=16*dat+(ord(s[i])-ord('0'))
                             else dat:=16*dat+(ord(s[i])-ord('A')+10);
                inc(i);
          end;
       blank;
       if s[i]<>':' then Error('Invalid file format, ":" expected',LineNumber);
       inc(i);
       if not valid then Error('Invalid file format, Address expected',LineNumber);
       adr:=dat;
       blank;
       while (s[i]in ['0'..'9']) or (s[i]in ['A'..'F'])
       do begin valid:=false;
                dat:=0;
                while (s[i]in ['0'..'9']) or (s[i]in ['A'..'F'])
                do begin valid:=true;
                         if s[i]<='9' then dat:=16*dat+(ord(s[i])-ord('0'))
                                      else dat:=16*dat+(ord(s[i])-ord('A')+10);
                         inc(i);
                   end;
                blank;
                if valid then begin if Data.Store(adr,dat)
                                    then Error('Bad Address',LineNumber);
                                    inc(adr);
                              end;
          end;
       if (s[i]<>';') and (s[i]<>'#')
       then Error('Invalid file format, unexpected char "'+s[i]+'"',LineNumber);
 end;
begin if length(s)=0 then exit;
      i:=1;
      blank;
      s:=s+';';
      while (i<=length(s)) and ( s[i]<>';' ) and (s[i]<>'#') do
      begin {-- jednotliva cisla --}
            hex;
      end;
end; {_LineIn_TXT_}

procedure _LineIn_HEX_(var s:string; var Data:PicData_t; LineNumber:integer);
{== Pomocna procedura zpracuje radku HEX textu a data ulozi do datoveho objektu ==}
var i,j:integer;
    adr,dat:word;
    suma:byte;
 function h(i:integer):byte;
 begin if s[i]<='9' then h:=(ord(s[i])-ord('0'))
                    else h:=(ord(s[i])-ord('A')+10);
 end;
begin {-- filtrace radky --}
      j:=1;                                     { vyhod blank znaky }
      for i:=1 to length(s) do if (s[i]<>' ') and (s[i]<>#8) then
               begin s[j]:=s[i];
                     inc(j);
               end;
      byte(s[0]):=j-1;
      if s=':00000001FF' then exit;             { ukoncovaci veta }
      if s[1]<>':' then exit;                   { platny zacatek  }
      if length(s)=0 then exit;                 { prazdne radky nevadi }
      if length(s)<13 then Error('Invalid file format, line too short',LineNumber);
      {-- vytazeni cislic --}
      for i:=2 to length(s) do
          if not (s[i]in ['0'..'9']) and not (s[i]in ['A'..'F'])
          then Error('Invalid file format, illegal char',LineNumber);
      j:=16*h(2)+h(3);      { pocet polozek }
      if j and 1 = 1 then Error('Invalid file format, odd data count',LineNumber);
      if length(s) <> j*2+11 then Error('Invalid file format, line length',LineNumber);
      j:=j div 2;
      {-- kontrola kontrolniho souctu HEX --}
      suma:=0;
      for i:=0 to 2*j+5-1 do
      begin {$R-} suma:=suma+h(2+i*2)*16+h(3+i*2);
            {$R+}
      end;
      if suma<>0 then Error('CheckSum Error',LineNumber);
      {-- Nacteni dat --}
      adr:=(( h(4) *16 + h(5)) *16 + h(6)) *16 + h(7);
      if adr and 1 = 1 then Error('Invalid file format, odd addres',LineNumber);
      adr:=adr shr 1;
      if (s[8]<>'0') or (s[9]<>'0') then exit;
      for i:=0 to j-1 do
      begin dat:=( ( h(4*i+12) *16 + h(4*i+13)) *16
                   + h(4*i+10)) *16 + h(4*i+11)     ;
            if Data.Store(adr,dat)
            then Error('Bad Address',LineNumber);
            inc(adr);
      end;
end; {_LineIn_HEX_}

procedure PicDataIo_t.Import( Name:string; Format:IO_t);
{== Vstup dat ze souboru do datoveho objektu ==}
var f:text;
    s:string;
    LineNumber:integer;
begin name:=UpStr(name);
      writeln('Importing data from file: ',name);
      assign(f,name);
      {$I-}
      reset(f);
      {$I+}
      if ioresult<>0 then Error('Unable open file: '+name,0);
      {$I-}
      LineNumber:=0;
      repeat inc(LineNumber);   { pocitani cisla radky pro pripad chyby }
             readln(f,s);
             s:=UpStr(s);
      case Format of
        _TXT_ : _LineIn_TXT_(s,self,LineNumber);
        _HEX_ : _LineIn_HEX_(s,self,LineNumber);
      end; {case}
      until eof(f);
      close(f);
      {$I+}
      if ioresult<>0 then Error('Unable read from file: '+name,LineNumber);
      { pro testovani importu }
      { Export('a.a',_TXT_,';Test of Import procedure'); }
end; {Import}

begin
end.
