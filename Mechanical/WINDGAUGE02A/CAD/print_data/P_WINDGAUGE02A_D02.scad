$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_D02.scad>

rotate([0, -90, 0])
translate([-D02_dotahova_vzdalenost,0,0])

WINDGAUGE02A_D02(D02_sila_materialu,
D02_vyska_uchytky,
D02_prumer_obruby,
D02_delka_celeho_uchytu,
D02_dotahova_vzdalenost,
D02_prumer_uchytneho_sroubu);

            
