Jedná se o modul, který je možné osadit IO SHT30 nebo SHT31, které umí měřit relativní vlhkost a teplotu s velkou přesností a stabilitou. Rozsah měřené vlhkosti je 0 % až 100 %. Teplota je měřena v rozsahu -40 °C až 125 °C. Komunikace probíhá přes rozhranní I2C.

1. Technické parametry
======================

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left">Parametr</td>
<td align="left">Hodnota</td>
<td align="left">Poznámka</td>
</tr>
<tr class="even">
<td align="left"><p>Relativní vlhkost</p></td>
<td align="left">0% - 100%</td>
<td align="left">Typ. přesnost dle IO</td>
</tr>
<tr class="odd">
<td align="left">Teplota</td>
<td align="left"> -40°C - 125°C</td>
<td align="left">Typ. přesnost dle IO</td>
</tr>
<tr class="even">
<td align="left">Integrovaný obvod</td>
<td align="left"> SHT30, SHT31</td>
<td align="left"> </td>
</tr>
<tr class="odd">
<td align="left"><p>Rozhraní</p></td>
<td align="left">I2C</td>
<td align="left"> </td>
</tr>
<tr class="even">
<td align="left">Napájení</td>
<td align="left">Min 2.4V - max. 5.5V</td>
<td align="left"> </td>
</tr>
<tr class="odd">
<td align="left">Rozměr</td>
<td align="left">9.65 x 40.13</td>
<td align="left"> </td>
</tr>
</tbody>
</table>

 

2. Popis konstrukce
===================

2.1. Úvodem
-----------

Jedná se o modul založený na IO SHT31V01A, který umožňuje měření relativní vlhkosti a teploty a velkou přesností a stabilitou. Další přesné informace IO je možné vyčíst z oficiálního dokumentačního listu výrobce. Modul obsahuje veškeré potřebné součástky pro správný chod.

2.2. Zapojení modulu
--------------------

3. Osazení a oživení
====================

3.1. Osazení
------------

Označení Typ Pouzdro Počet J1,J2 CONN1\_1 Straight\_1x01 2 J9,J10,J11,J12,J13 JUMP\_2x1 Straight\_1x02 5 M1,M2 HOLE MountingHole\_3mm 2 R1,R2,R5,R6 10k SMD-0805 4 R3 - SMD-0805 1 R4 0R SMD-0805 1 C1 100nF SMD-0805 1 U1 SHT31 DFN-8- 1EP\_2.4x2.4mm\_Pitch0.5mm 1 D1 BZV55C-5,6V Diode-MiniMELF\_Standard 1 

3.2. Oživení
------------

Je potřeba provést kontrolu zda není na plošném spoji zkrat a zda je dobře zapájen IO. Jinak není třeba nic oživovat, pouze připojit a napsat program. Když je nulovým odporem osazena pozice R4 adresa modulu je 0x44, pokud je osazena pozice R3 je adresa 0x45.

3.3. Program
------------

Vzorový program se nachází ve složce SW modulu. Pro spuštění je potřeba mít nainstalovaný pyMLAB.
