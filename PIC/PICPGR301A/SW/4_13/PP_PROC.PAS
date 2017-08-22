
{Toto je include soubor}

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde je definice vlastnosti vsech procesoru PIC, ktere tento program znam. }
{===========================================================================}
{verze:                                                                     }
{ 1.00 - Uvodni verze                                                       }
{ 1.01 - Uprava definic procesoru 12C508/509            PEFI                }
{ 1.02 - Doplneny procesory 87xA                        MIHO                }
{ 1.11 - Doplneny procesory 627A/628A/648A              MIHO                }
{ 1.12 - Doplneny procesory 87/88                       MIHO                }

{---> PP_DEFS - zde je nadefinovany pocet procesoru a druhy algoritmu --}
{---> PP_CFG  - zde jsou nadefinovany prepinace Cfg slova             --}
const ProcInfoAll:array[1..ProcCount] of ProcInfo_t =
      (
        {-- Programovane starym algoritmem EPROM --}
        ( Name:        'PIC12C508';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $001F;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$0FFF;
          CM_Base:$0200;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12C508A';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $001F;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$0FFF;
          CM_Base:$0200;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC12C509';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $001F;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$0FFF;
          CM_Base:$0400;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12C509A';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $001F;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$0FFF;
          CM_Base:$0400;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12CE518';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $0FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$0FFF;
          CM_Base:$0200;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12CE519';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $0FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$0FFF;
          CM_Base:$0400;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:        'PIC16C505';
          Alg:            _EPROM1_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $0FFF;
          Cfg_Mask:          $0FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$0FFF;
          CM_Base:$0400;   CM_Len:$0004;   CM_Mask:$0FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {-- Programovani standardnim algoritmem EPROM --}
        ( Name:        'PIC12C671';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC12C672';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12CE673';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC12CE674';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:         'PIC14000';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC14C000';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:        'PIC16C554';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C556';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C558';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:         'PIC16C61';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C71';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C62';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C64';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C65';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C73';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C74';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C710';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C711';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C62A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C62B';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C63';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C63A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C64A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C65A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C65B';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C66';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C67';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C72';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C72A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C73A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C73B';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C74A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C74B';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C76';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:         'PIC16C77';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C620';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16C620A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C621';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16C621A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C622';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16C622A';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16CE623';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16CE624';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:       'PIC16CE625';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C712';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C716';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C745';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C765';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C923';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C924';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C773';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C774';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:        'PIC16C717';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C770';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C771';
          Alg:            _EPROM2_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {-- Programovani standardnim algoritmem EPROM ale s paritou pameti programu ( 14 bit + 2 bity parita ) --}
        ( Name:        'PIC16C642';
          Alg:            _EPROM3_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        ( Name:        'PIC16C662';
          Alg:            _EPROM3_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {}
        ( Name:        'PIC16C715';
          Alg:            _EPROM3_;
          Tprog:               100;
          Bits:                 14;
          Cfg:                  '';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$0000;   DM_Len:$0000;   DM_Mask:$0000
        ),
        {-- Programovani algoritmem EEPROM / FLASH --}
        ( Name:         'PIC16C84';
          Alg:               _EE1_;
          Tprog:             10000;
          Bits:                 14;
          Cfg:               'C84';
          Cfg_Base:          $2007;
          Cfg_Mask:          $001F;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:         'PIC16F83';
          Alg:               _EE1_;
          Tprog:             10000;
          Bits:                 14;
          Cfg:               'F83';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0200;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:         'PIC16F84';
          Alg:               _EE1_;
          Tprog:             10000;
          Bits:                 14;
          Cfg:               'F83';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F84A';
          Alg:               _EE2_;
          Tprog:             10000;
          Bits:                 14;
          Cfg:               'F83';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        {}
        ( Name:        'PIC16F627';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F627';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3DFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F628';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F627';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3DFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F627A';
          Alg:               _EE4_;
          Tprog:              6000;
          Bits:                 14;
          Cfg:              'F627';
          Cfg_Base:          $2007;
          Cfg_Mask:          $21FF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F628A';
          Alg:               _EE4_;
          Tprog:              6000;
          Bits:                 14;
          Cfg:              'F627';
          Cfg_Base:          $2007;
          Cfg_Mask:          $21FF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F648A';
          Alg:               _EE4_;
          Tprog:              6000;
          Bits:                 14;
          Cfg:              'F627';
          Cfg_Base:          $2007;
          Cfg_Mask:          $21FF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F818';
          Alg:               _EE5_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F818';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0400;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F819';
          Alg:               _EE5_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F818';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3FFF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        {}
        ( Name:         'PIC16F87';
          Alg:               _EE5_;
          Tprog:              1000;
          Bits:                 14;
          Cfg:               'F87';
          Cfg_Base:          $2007;
          Cfg_Mask:          $33FF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0020;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        ( Name:         'PIC16F88';
          Alg:               _EE5_;
          Tprog:              1000;
          Bits:                 14;
          Cfg:               'F87';
          Cfg_Base:          $2007;
          Cfg_Mask:          $33FF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0020;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        {}
        ( Name:        'PIC16F870';        { ! nemam zarucena data }
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F870';
          Cfg_Base:          $2007;
          Cfg_Mask:          $33FF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F871';        { ! nemam zarucena data }
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F870';
          Cfg_Base:          $2007;
          Cfg_Mask:          $33FF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F872';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F870';
          Cfg_Base:          $2007;
          Cfg_Mask:          $33FF;
          PM_Base:$0000;   PM_Len:$0800;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0040;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F873';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F873';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3BFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F874';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F873';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3BFF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F876';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F873';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3BFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F877';
          Alg:               _EE2_;
          Tprog:              5000;
          Bits:                 14;
          Cfg:              'F873';
          Cfg_Base:          $2007;
          Cfg_Mask:          $3BFF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F873A';
          Alg:               _EE3_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F873A';
          Cfg_Base:          $2007;
          Cfg_Mask:          $2FCF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F874A';
          Alg:               _EE3_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F873A';
          Cfg_Base:          $2007;
          Cfg_Mask:          $2FCF;
          PM_Base:$0000;   PM_Len:$1000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0080;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F876A';
          Alg:               _EE3_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F873A';
          Cfg_Base:          $2007;
          Cfg_Mask:          $2FCF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        ),
        ( Name:        'PIC16F877A';
          Alg:               _EE3_;
          Tprog:              8000;
          Bits:                 14;
          Cfg:              'F873A';
          Cfg_Base:          $2007;
          Cfg_Mask:          $2FCF;
          PM_Base:$0000;   PM_Len:$2000;   PM_Mask:$3FFF;
          CM_Base:$2000;   CM_Len:$0008;   CM_Mask:$3FFF;
          DM_Base:$2100;   DM_Len:$0100;   DM_Mask:$00FF
        )
      );
