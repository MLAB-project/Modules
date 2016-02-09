$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_S02.scad>
use <../SRC/polyScrewThread_r1.scad>


PI=3.141592;

translate([0,0,S01_vyska_komponentu_na_lozisko])

rotate([0, 180, 0])

WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka);   
