{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,R-,S+,V+,X-}
{$M 16384,0,655360}

program TSTPGR(Input,Output);

{=============================================================}
{== Program pro testovani a ozivovani programatoru PICPGR   ==}
{=============================================================}

{ (c)miho 2004 }

{=============================================================}
{ Historie:                                                   }
{ 1.00  Novy program                                          }
{=============================================================}


uses CRT;

var PortAdr:word absolute 0:$408;

procedure key;
begin readln;
end;

begin {== Uvodni tisk ==}

      writeln;
      writeln('Test Utility for PICPGR');
      writeln('=======================');
      writeln('(c) miho 2004    v.1.00');
      writeln;

      {== Overeni dostupnosti portu LTP1 ==}

      if PortAdr=0 then begin writeln('No LPT port available!');
                              halt(1);
                        end;

      {== Testovaci posloupnost ==}
      writeln('Action            PGC  PGD  VDD  ...  GND  VPP     Comment');
      writeln('-------------------------------------------------------------------------------');
      port[PortAdr]:=0;
      writeln('OFF               X    X    0V   .    0V   0V      Standard state OFF');
      key;

      port[PortAdr]:=$10;
      writeln('Vdd ON            X    X    +5V  .    0V   +5V');
      key;

      port[PortAdr]:=$50;
      writeln('Vdd ON and RESET  X    X    +5V  .    0V   0V');
      key;

      port[PortAdr]:=$20;
      writeln('Vpp ON            X    X    0V   .    0V   0V      Invalid state (missing Vdd)');
      key;

      port[PortAdr]:=$30;
      writeln('Vpp and Vdd ON    X    X    +5V  .    0V   +12V');
      key;

      port[PortAdr]:=$02;
      writeln('Data 0            X    L    0V   .    0V   0V');
      key;

      port[PortAdr]:=$03;
      writeln('Data 1            X    H    0V   .    0V   0V');
      key;

      port[PortAdr]:=$08;
      writeln('Clock 0           L    X    0V   .    0V   0V');
      key;

      port[PortAdr]:=$0C;
      writeln('Clock 1           H    X    0V   .    0V   0V');
      key;

      writeln;
      writeln('Test PGD input, use 10k resistor to connect PDG to GND and VDD');
      writeln;
      port[PortAdr]:=$10;

      repeat
            if (port[PortAdr+1] and $40)<>0 then write('PGD State: H')
                                            else write('PGD State: L');
            write(#$0D);
      until keypressed and (readkey=#$0D);

      writeln;
      writeln;
      writeln('Action            PGC  PGD  VDD  ...  GND  VPP     Comment');
      writeln('-------------------------------------------------------------------------------');
      port[PortAdr]:=$80+$3F;
      writeln('OFF               X    X    0V   .    0V   0V      Alternative state OFF');
end.
