$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSCREEN01A_D06.scad>

rotate([0, 0, 0])
translate([-D02_dotahova_vzdalenost,0,D02_vyska_uchytky/2])

AWSCREEN01A_D06(D02_sila_materialu,
D02_vyska_uchytky,
D02_prumer_obruby,
D02_delka_celeho_uchytu,
D02_dotahova_vzdalenost,
D02_prumer_uchytneho_sroubu);

            
