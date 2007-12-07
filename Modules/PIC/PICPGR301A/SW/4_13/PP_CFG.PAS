
{Toto je include soubor}

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde je definice prepinacu pro skupiny procesoru pro definovani            }
{ ( modifikaci ) konfiguracniho slova procesoru.                            }
{===========================================================================}

{---> PP_DEFS - konstanta CfgDefProcCount definuje pocet polozek --}
const CfgDefAll:CfgDef_t=
      ( {-- definice Cfg dat --}
        ( {-- Skupina procesoru C84 --}
          ProcId : 'C84';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXXXXX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXXXXX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXXXXX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'RC';
                       On   : 'XXXXXXXXXXXX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXXXXX01'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX1XXX';
                       Off  : 'XXXXXXXXXX0XXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : 'XXXXXXXXX0XXXX';
                       Off  : 'XXXXXXXXX1XXXX';
                       Bits : ''
                     ),
                     (),(),(),(),(),(),()
                   )
        ),
        ( {-- Skupina procesoru F83, F84, .. --}
          ProcId : 'F83';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXXXXX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXXXXX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXXXXX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'RC';
                       On   : 'XXXXXXXXXXXX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXXXXX01'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '0000000000XXXX';
                       Off  : '1111111111XXXX';
                       Bits : ''
                     ),
                     (),(),(),(),(),(),()
                   )
        ),
        ( {-- Skupina procesoru F627, F628 --}
          ProcId : 'F627';
          Info   : ( ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXX2XX10'
                     ),
                     ( Key  : 'LP';
                       On   : 'XXXXXXXXX0XX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXX0XX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXX0XX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'MCLRE';
                       On   : 'XXXXXXXX1XXXXX';
                       Off  : 'XXXXXXXX0XXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'BODEN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '0000XXXXXXXXXX';
                       Off  : '1111XXXXXXXXXX';
                       Bits : '1010XXXXXXXXXX'
                     ),
                     (),(),(),()
                   )
        ),
        ( {-- Skupina procesoru F818/819 --}
          ProcId : 'F818';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXX0XX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXX0XX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXX0XX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'MCLRE';
                       On   : 'XXXXXXXX1XXXXX';
                       Off  : 'XXXXXXXX0XXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'BODEN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'WRT';
                       On   : 'XXX11XXXXXXXXX';
                       Off  : 'XXX00XXXXXXXXX';
                       Bits : 'XXX10XXXXXXXXX'
                     ),
                     ( Key  : 'DEBUG';
                       On   : 'XX0XXXXXXXXXXX';
                       Off  : 'XX1XXXXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CCPMX_RB2';
                       On   : 'X1XXXXXXXXXXXX';
                       Off  : 'X0XXXXXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CCPMX_RB3';
                       On   : 'X0XXXXXXXXXXXX';
                       Off  : 'X1XXXXXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '0XXXXXXXXXXXXX';
                       Off  : '1XXXXXXXXXXXXX';
                       Bits : ''
                     ),
                     ()
                   )
        ),
        ( {-- Skupina procesoru F87/88, ... --}
          ProcId : 'F87';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXX0XX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXX0XX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXX0XX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'EXTCLK';
                       On   : 'XXXXXXXXX0XX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXX2XX10'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'MCLRE';
                       On   : 'XXXXXXXXXX1XXX';
                       Off  : 'XXXXXXXXXX0XXX';
                       Bits : ''
                     ),
                     ( Key  : 'BOREN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'WRT';
                       On   : 'XXX11XXXXXXXXX';
                       Off  : 'XXX00XXXXXXXXX';
                       Bits : 'XXX10XXXXXXXXX'
                     ),
                     ( Key  : 'DEBUG';
                       On   : 'XX0XXXXXXXXXXX';
                       Off  : 'XX1XXXXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CCPMX';
                       On   : '';
                       Off  : '';
                       Bits : 'X0XXXXXXXXXXXX'
                     ),
                     ( Key  : 'CP';
                       On   : '0XXXXXXXXXXXXX';
                       Off  : '1XXXXXXXXXXXXX';
                       Bits : ''
                     )
                   )
        ),
        ( {-- Skupina procesoru F870, ... --}
          ProcId : 'F870';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXXXXX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXXXXX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXXXXX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'RC';
                       On   : 'XXXXXXXXXXXX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXXXXX10'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '00XXXXXX00XXXX';
                       Off  : '11XXXXXX11XXXX';
                       Bits : '10XXXXXX10XXXX'
                     ),
                     ( Key  : 'BODEN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'WRT';
                       On   : 'XXXX1XXXXXXXXX';
                       Off  : 'XXXX0XXXXXXXXX';
                       Bits : ''
                     ),
                     (),(),()
                   )
        ),
        ( {-- Skupina procesoru F873, ... --}
          ProcId : 'F873';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXXXXX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXXXXX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXXXXX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'RC';
                       On   : 'XXXXXXXXXXXX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXXXXX01'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '00XXXXXX00XXXX';
                       Off  : '11XXXXXX11XXXX';
                       Bits : '10XXXXXX10XXXX'
                     ),
                     ( Key  : 'BODEN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'WRT';
                       On   : 'XXXX1XXXXXXXXX';
                       Off  : 'XXXX0XXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'DEBUG';
                       On   : 'XX0XXXXXXXXXXX';
                       Off  : 'XX1XXXXXXXXXXX';
                       Bits : ''
                     ),
                     (),()
                   )
        ),
        ( {-- Skupina procesoru F873A, ... --}
          ProcId : 'F873A';
          Info   : ( ( Key  : 'LP';
                       On   : 'XXXXXXXXXXXX00';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'XT';
                       On   : 'XXXXXXXXXXXX01';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'HS';
                       On   : 'XXXXXXXXXXXX10';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'RC';
                       On   : 'XXXXXXXXXXXX11';
                       Off  : '';
                       Bits : ''
                     ),
                     ( Key  : 'FOSC';
                       On   : '';
                       Off  : '';
                       Bits : 'XXXXXXXXXXXX01'
                     ),
                     ( Key  : 'WDTE';
                       On   : 'XXXXXXXXXXX1XX';
                       Off  : 'XXXXXXXXXXX0XX';
                       Bits : ''
                     ),
                     ( Key  : 'PWRTE';
                       On   : 'XXXXXXXXXX0XXX';
                       Off  : 'XXXXXXXXXX1XXX';
                       Bits : ''
                     ),
                     ( Key  : 'BODEN';
                       On   : 'XXXXXXX1XXXXXX';
                       Off  : 'XXXXXXX0XXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'LVP';
                       On   : 'XXXXXX1XXXXXXX';
                       Off  : 'XXXXXX0XXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CPD';
                       On   : 'XXXXX0XXXXXXXX';
                       Off  : 'XXXXX1XXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'WRT';
                       On   : 'XXX00XXXXXXXXX';
                       Off  : 'XXX11XXXXXXXXX';
                       Bits : 'XXX10XXXXXXXXX'
                     ),
                     ( Key  : 'DEBUG';
                       On   : 'XX0XXXXXXXXXXX';
                       Off  : 'XX1XXXXXXXXXXX';
                       Bits : ''
                     ),
                     ( Key  : 'CP';
                       On   : '0XXXXXXXXXXXXX';
                       Off  : '1XXXXXXXXXXXXX';
                       Bits : ''
                     ),
                     (),()
                   )
        )
      );
