$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_R03.scad>

translate([0,0,R02_sila_mateiralu_pod_lopatkami])

WINDGAUGE02A_R03(R03_sila_materialu,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,R01_sila_materialu_pro_prekriti,R02_sila_mateiralu_pod_lopatkami,S01_sila_materialu);

            
