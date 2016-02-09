$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_S03.scad>
use <../SRC/zavity.scad>

translate([0,0,S01_vyska_komponentu_na_lozisko])

rotate([0, 180, 0])

module WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,vyska_hlavy_sroubu,prumer_hlavy_sroubu)   
