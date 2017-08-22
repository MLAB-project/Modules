Modul obsahuje integrovaný obvod AS5048B, který umožňuje měření magnetického pole kolmého k povrchu integrovaného obvodu. Modul je vhodný pro měření úhlové polohy magnetu, konstrukci otáčkoměrů. Komunikační rozhraní je I2C. 

<img src="https://raw.githubusercontent.com/roman-dvorak/Modules/master/Sensors/RPS01A/DOC/SRC/img/RPS01A_top_big.jpg" style="width:80.0%" />

1 Technické parametry
=====================

|          |                       |                           |
|----------|-----------------------|---------------------------|
| Parametr | Hodnota               | Poznámka                  |
| Napájení | 3,3 V nebo 5 V        |                           |
| Rozhraní | I2C                   |                           |
| Spotřeba | Max 15 mA             |                           |
| Rozměry  | 20.00 x 40.13 x 16 mm | Výška nad základní deskou |

2 Popis konstrukce
==================

2.1 Úvodem
----------

2.2 Mechanická konstrukce
-------------------------

Modul obsahuje úchytné šroubky ve všech rozích v rozteči MLAB (10.16mm). Při potřebě šetřit místem je možné odstřihnutí části PCB se dvěma šrouby. 

3 Osazení a oživení
===================

3.1 Osazení
-----------

|              |                  |                                |           |
|--------------|------------------|--------------------------------|-----------|
| **Označení** | **Typ**          | **Pouzdro**                    | **Počet** |
| U1           | AS5048B          | TSSOP-14\_4.4x5mm\_Pitch0.65mm | 1         |
| C1           | 10uF             | SMD-0805                       | 1         |
| C2           | 100nF            | SMD-0805                       | 1         |
| J1           | JUMP\_5X2        | Pin\_Header\_Straight\_2x05    | 1         |
| J2           | JUMP\_2x1        | Pin\_Header\_Straight\_2x01    | 1         |
| P1,P2,P3,P4  | \_               | MountingHole\_3mm              | 4         |
| R3,R5        | 0R               | SMD-0805                       | 2         |
| R1           | 0R pro VDD 3,3 V | SMD-0805                       | 1         |
|              | VDD 5 V nic      | SMD-0805                       | 0         |
| R2,R4        | nic              | SMD-0805                       | 2         |
| R6,R7        | 10k              | SMD-0805                       | 2         |
| J3           | JUMP\_5X2        | SMD\_JUMP1X5                   | 1         |
| C3           | 10uF             | TantalC\_SizeB\_Reflow         | 1         |
| D1           | M4               | SMA\_Standard                  | 1         |

3.2 Oživení
-----------

 Vzorový program je napsán v programu pyMLAB.
