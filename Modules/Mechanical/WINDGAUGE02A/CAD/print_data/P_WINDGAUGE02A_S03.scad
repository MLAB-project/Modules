$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_S03.scad>
use <../SRC/polyScrewThread_r1.scad>

translate([0,0,0])

rotate([0, 0, 0])

WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,vyska_hlavy_sroubu,prumer_hlavy_sroubu,S01_tolerance_zavit,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,S01_sila_materialu,S01_hloubka_zavitu);   
