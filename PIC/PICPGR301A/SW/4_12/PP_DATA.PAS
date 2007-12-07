unit PP_DATA;

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde je definice objektu pro ulozeni dat v pameti.                         }
{===========================================================================}

interface

uses PP_DEFS;

{===========================================================================}
{ Definice typu a konstant pro ulozeni dat ( delka buferu, typ ulozenych    }
{ dat.                                                                      }
{===========================================================================}

type DataItem_t=record    { typ pro ulozeni jednoho datoveho slova }
       W : word;          { vlastni data                           }
       S : boolean;       { true znamena platna data               }
     end; {record}

type RangeType_t=
       ( _INVALID_,       { adresa neprislusi zadne oblasti           }
         _PM_,            { adresa spada do pameti programu           }
         _DM_,            { adresa spada do pameti dat                }
         _CM_,            { adresa spada do konfiguracni pameti       }
         _CFG_            { adresa je adresou zvlastniho konfig slova }
       );

type PicData_t=object
       {-- vlastni datove pole --}
       _Buf : array[0..DataBufLen-1] of DataItem_t;  { zde jsou data }
       {-- informace o vybranem procesoru --}
       _Proc:ProcInfo_t;
       {-- metody --}

       procedure Init(ProcInfo:ProcInfo_t);
       {== Zapamatuje si typ procesoru ( jeho prametry ) a smaze datovou oblast ==}

       procedure GetProcInfo(var ProcInfo:ProcInfo_t);
       {== Vrati aktualni parametry procesoru ==}

       function TestAdr(Adr:word):RangeType_t;
       {== Vrati typ pametoveho prostoru pro zadanou adresu ==}

       function Store(Adr:word;Data:word):boolean;
       {== Ulozi data na zadanou adresu. Pri chybne adrese vraci true ==}

       procedure StoreProc(Adr:word;Data:word);
       {== Ulozi data na zadanou adresu. ==}

       function GetStat(Adr:word):boolean;
       {== Vrati priznak platnosti dat na zadane adrese, true znamena data platna ==}

       function GetData(Adr:word):word;
       {== Vrati data ze zadane adresy. Pri chybne adrese vraci same jednotky ==}

       end; {object}

implementation

function InRange(What,Start,Finish:word):boolean;
{== Vraci true pokud What spada do rozsahu [Start..Finish] ==}
{   Pomocna funkce                                           }
begin InRange:=(What>=Start) and (What<=Finish)
end; {InRange}

procedure PicData_t.Init(ProcInfo:ProcInfo_t);
{== Zapamatuje si typ procesoru ( jeho prametry ) a smaze datovou oblast ==}
var i:integer;
begin _Proc:=ProcInfo;
      {-- inicializace bufferu --}
      for i:=0 to DataBufLen-1 do begin _Buf[i].W:=0;
                                        _Buf[i].S:=false;
                                  end;
      {-- inicializace jednotlivych oblasti--}
      for i:=_Proc.PM_Base to _Proc.PM_Base+_Proc.PM_Len-1 do
          _Buf[i].W:=_Proc.PM_Mask;
      for i:=_Proc.DM_Base to _Proc.DM_Base+_Proc.DM_Len-1 do
          _Buf[i].W:=_Proc.DM_Mask;
      for i:=_Proc.CM_Base to _Proc.CM_Base+_Proc.CM_Len-1 do
          _Buf[i].W:=_Proc.CM_Mask;
end; {Init}

procedure PicData_t.GetProcInfo(var ProcInfo:ProcInfo_t);
{== Vrati aktualni parametry procesoru ==}
begin ProcInfo:=_Proc;
end; {GetProcInfo}

function PicData_t.TestAdr(Adr:word):RangeType_t;
{== Vrati typ pametoveho prostoru pro zadanou adresu ==}
begin TestAdr:=_INVALID_;   { nepasuje do zadneho rozsahu }
      with _Proc do
      begin if Name=''
               then begin exit; { neni dany typ procesoru }
                    end;
            if Adr>DataBufLen
               then begin exit; { adresa mimo rozsah bufferu }
                    end;
            if (PM_Len>0) and (Adr>=PM_Base) and (Adr<=PM_Base+PM_Len)
               then begin TestAdr:=_PM_;
                          exit;
                    end;
            if (CM_Len>0) and (Adr>=CM_Base) and (Adr<=CM_Base+CM_Len)
               then begin TestAdr:=_CM_;
                          exit;
                    end;
            if (DM_Len>0) and (Adr>=DM_Base) and (Adr<=DM_Base+DM_Len)
               then begin TestAdr:=_DM_;
                          exit;
                    end;
            if Adr=Cfg_Base
               then begin TestAdr:=_CFG_;
                          exit;
                    end;
      end;
end; {TestAdr}

function PicData_t.Store(Adr:word;Data:word):boolean;
{== Ulozi data na zadanou adresu. Pri chybne adrese vraci true ==}
begin case TestAdr(Adr) of
        _INVALID_ : begin {-- chybna adresa - nic nedelej --}
                          Store:=true;
                          exit;
                    end;
        _PM_      : data:=data and _Proc.PM_Mask; { maskuj data }
        _DM_      : data:=data and _Proc.DM_Mask;
        _CM_      : data:=data and _Proc.CM_Mask;
        _CFG_     : data:=data and _Proc.Cfg_Mask;
      end; {case}
      {-- platna adresa - uloz data --}
      Store:=false;
      _Buf[Adr].S:=true;   { datova polozka platna }
      _Buf[Adr].W:=data;   { vlastni data          }
end; {Store}

procedure PicData_t.StoreProc(Adr:word;Data:word);
{== Ulozi data na zadanou adresu ==}
begin if Store(Adr, Data) then;
end; {StoreProc}

function PicData_t.GetStat(Adr:word):boolean;
{== Vrati priznak platnosti dat na zadane adrese, true znamena data platna ==}
begin GetStat:=false;
      if TestAdr(Adr)=_INVALID_ then exit;
      GetStat:=_Buf[Adr].S;
end; {GetStat}

function PicData_t.GetData(Adr:word):word;
{== Vrati data ze zadane adresy. Pri chybne adrese vraci same jednotky ==}
begin GetData:=$FFFF;
      if TestAdr(Adr)=_INVALID_ then exit;
      GetData:=_Buf[Adr].W;
end; {GetData}

begin
end.
