
{Toto je include soubor}

{===========================================================================}
{ (c) miho / DECROS 2000                                                    }
{===========================================================================}
{ Zde je definice prepinacu pro skupiny procesoru pro definovani            }
{ ( modifikaci ) konfiguracniho slova procesoru.                            }
{===========================================================================}

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
        )
      );
