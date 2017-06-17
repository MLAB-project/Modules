Modul obsahuje digitální 16-bitový senzor teploty MAX31725, který měří teplotu v rozsahu -40 °C - 105 °C s přesností +/- 0.5 °C. Komunikace probíhá přes I2C rozhraní. Integrovaný obvod lze nastavit i jako termostat.

<img src="https://raw.githubusercontent.com/MLAB-project/Modules/master/Sensors/LTS01A/DOC/SRC/img/LTS01A_Top_Big.jpg" width="563" height="157" />

1. Technické parametry
======================

Parametr Hodnota Poznámka Napájení 3.3V Integrovaný obvod MAX31725 Využití Měření teploty Rozhraní I2C Rozměry 60.45 x 9.65 x 16 mm Výška nad základní deskou

|                   |                      |                           |
|-------------------|----------------------|---------------------------|
| **Parametr**      | **Hodnota**          | **Poznámka**              |
| Napájení          | 3.3V                 |                           |
| Integrovaný obvod | MAX31725             |                           |
| Využití           | Měření teploty       |                           |
| Rozhraní          | I2C                  |                           |
| Rozměry           | 60.45 x 9.65 x 16 mm | Výška nad základní deskou |

2. Popis konstrukce
===================

2.1. Úvod
---------

Modul může sloužit jako náhrada za oblíbený senzor teploty DS18B20. Koncepce modulu umožňuje zapojení až 8 senzorů na jedné sběrnici I2C. Adresa daného senzoru se nastavuje pomocí nulových odporů. V integrovaném obvodu je možné použít i jako termostat. Přes I2C rozhraní se nastaví hodnota teploty, při které se má měnit logická úroveň na pinu OS.

2.2. Zapojení
-------------

3. Osazení a oživení
====================

3.1. Osazení
------------

Označení Typ (pouzdro) R4 nebo R5 0R (0805) R6 nebo R7 0R (0805) R8 nebo R9 0R (0805) R10 0R (0805) R1, R2, R3 10k (0805) C1 100nF (0805) D1 BZV55C-3V6 (minimelf) SV1 JUMP2x5 SV4 JUMP1x1 X2 Šroub M3 X3 MAX31725 (TDFN8)

|              |                       |
|--------------|-----------------------|
| **Označení** | **Typ (pouzdro)**     |
| R4 nebo R5   | 0R (0805)             |
| R6 nebo R7   | 0R (0805)             |
| R8 nebo R9   | 0R (0805)             |
| R10          | 0R (0805)             |
| R1, R2, R3   | 10k (0805)            |
| C1           | 100nF (0805)          |
| D1           | BZV55C-3V6 (minimelf) |
| SV1          | JUMP2x5               |
| SV4          | JUMP1x1               |
| X2           | Šroub M3              |
| X3           | MAX31725 (TDFN8)      |

3.2. Oživení
------------

Po osazení modulu je dobré provést vizuální kontrolu, případně proměřit, zda na napájení není zkrat. Další oživení není potřeba.

3.3. Program
------------

Ve složce SW tohoto modulu v databázi SVN je umístěn vzorový program pro výčet teploty ze senzoru. Zdrojový kód je v C pro PIC16F887.
