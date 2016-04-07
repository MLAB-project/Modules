$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSCREEN02A_D02.scad>

rotate([0, 0, 0])
            
 
AWSCREEN02A_D02(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,3*D03_vyska_zavitu,D03_pocet_vyztuh,screen_bevel);

            
