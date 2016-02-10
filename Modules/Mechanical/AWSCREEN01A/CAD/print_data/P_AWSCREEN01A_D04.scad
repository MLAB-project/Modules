$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSCREEN01A_D04.scad>

rotate([0, 0, 0])
            
 
AWSCREEN01A_D04(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel,D04_vyska_na_elektroniku,D04_vyska_zavitu,D04_vyska_zavitu_pro_drzak_elektorniky);  

            
