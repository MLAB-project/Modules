$fn=100; // model faces resolution.
include <../configuration.scad>

use <../SRC/WINDGAUGE02A_S01.scad>
use <../SRC/zavity.scad>

translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)/2])


WINDGAUGE02A_S01(R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,S01_vyska_zuzene_casti,S01_vyska_na_elektroniku,S01_vyska_zavitu_na_nasroubovani_drzaku,S01_vyska_prechodu,vule_mezi_statorem_rotorem,S01_vyska_zavitu_na_nasroubovani_drzaku);  
