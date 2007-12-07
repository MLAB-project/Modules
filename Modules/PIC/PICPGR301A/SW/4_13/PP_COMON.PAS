unit PP_COMON;

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde jsou obecne uzivane pomocne procedury a funkce .                      }
{===========================================================================}

interface

function UpStr(str:string):string;
{== Prevede retezec na velka pismena ==}

procedure PressEnter;
{== Zobrazi hlasku a ceka na stisk klavesy ==}

procedure HexByte(var f:text;data:word);
{== Vytiskni byte jako 2 znaky ==}

procedure HexWord(var f:text;data:word);
{== Vytiskni word jako 4 znaky ==}

procedure HexWordSp(var f:text;data:word);
{== Vytiskni word jako 4 znaky a mezeru ==}

procedure HexAdr(var f:text;data:word);
{== Vytiskni adresu s dvojteckou ==}

procedure Error(ErrorStr:string; LineNumber:integer); (* !! *)
{== Vytiskne hlaseni o chybe a ukonci program ==}
{   Pokud je LinNumber<=0 pak se netiskne       }

function DelSpace(s:string):string;
{== Vyhodi vsechny mezery ze zacatku retezce s ==}

function GetWord(s:string):string;
{== Vrati prvni slovo ze zadaneho retezce ==}

function DelWord(s:string):string;
{== Odstrihne prvni slovo z retezce ==}

procedure DisplayRange(Base, Len:word);
{== obrazi rozsah jako dvojici hex cisel ==}

function GetParamLine(First:integer):string;
{== slozi vsechny parametry od First a vrati UpCase tohoto slozeni ==}

implementation

function UpStr(str:string):string;
{== Prevede retezec na velka pismena ==}
var i:integer;
begin for i:=1 to length(str) do str[i]:=upcase(str[i]);
      UpStr:=str;
end; {UpStr}

procedure PressEnter;
{== Zobrazi hlasku a ceka na stisk klavesy ==}
begin write('Press ENTER to continue ...');
      readln;
      writeln;
end; {PressEnter}

const prevod:array[0..15]of char=('0','1','2','3','4','5','6','7',
                                  '8','9','A','B','C','D','E','F');

procedure HexByte(var f:text;data:word);
{== Vytiskni byte jako 2 znaky ==}
begin write(f, prevod[(data shr  4) and $F],
               prevod[data and $F]);
end; {HexByte}

procedure HexWord(var f:text;data:word);
{== Vytiskni word jako 4 znaky ==}
begin write(f, prevod[(data shr 12) and $F],
               prevod[(data shr  8) and $F],
               prevod[(data shr  4) and $F],
               prevod[data and $F]);
end; {HexWord}

procedure HexWordSp(var f:text;data:word);
{== Vytiskni word jako 4 znaky a mezeru ==}
begin write(f, prevod[(data shr 12) and $F],
               prevod[(data shr  8) and $F],
               prevod[(data shr  4) and $F],
               prevod[data and $F],
               ' ');
end; {HexWordSp}

procedure HexAdr(var f:text;data:word);
{== Vytiskni adresu s dvojteckou ==}
begin write(f, prevod[(data shr 12) and $F],
               prevod[(data shr  8) and $F],
               prevod[(data shr  4) and $F],
               prevod[data and $F],
               ': ');
end; {HexAdr}

procedure Error(ErrorStr:string; LineNumber:integer);
{== Vytiskne hlaseni o chybe a ukonci program ==}
{   Pokud je LinNumber<=0 pak se netiskne       }
begin writeln;
      if LineNumber<=0 then writeln('FATAL: ',ErrorStr)
                       else writeln('FATAL @ Line ',LineNumber,': ',ErrorStr);
      writeln;
      halt(1);
end; {Error}

function DelSpace(s:string):string;
{== Vyhodi vsechny mezery ze zacatku retezce s ==}
var i:integer;
begin i:=1;
      while (i<=length(s)) and (s[i]=' ')
      do inc(i);
      DelSpace:=copy(s,i,255);
end; {DelSpace}

function GetWord(s:string):string;
{== Vrati prvni slovo ze zadaneho retezce ==}
var t:string;
begin t:=DelSpace(s);
      GetWord:=copy(t,1,pos(' ',t+' ')-1);
end; {GetWord}

function DelWord(s:string):string;
{== Odstrihne prvni slovo z retezce ==}
var t:string;
begin t:=DelSpace(s);
      t:=copy(t,pos(' ',t+' ')+1,255);
      DelWord:=DelSpace(t);
end; {DelWord}

procedure DisplayRange(Base, Len:word);
{== obrazi rozsah jako dvojici hex cisel ==}
begin if Len<>0
      then begin hexword(Output,Base);
                 write('..');
                 hexword(Output,Base+Len-1);
                 write('  ');
           end
      else begin write('none        ');
           end;
end; {DisplayRange}

function GetParamLine(First:integer):string;
{== slozi vsechny parametry od First a vrati UpCase tohoto slozeni ==}
var i:integer;
    s:string;
begin s:='';
      if First<1 then exit;
      for i:=First to paramcount do s:=s+paramstr(i)+' ';
      GetParamLine:=UpStr(s);
end; {GetParamLine}

begin
end.
