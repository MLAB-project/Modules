$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/WINDGAUGE02A_R01.scad>

translate([0,0,R02_sila_mateiralu_pod_lopatkami])

WINDGAUGE02A_R01(R02_sila_mateiralu_pod_lopatkami,L01_hloubka_zapusteni_drzaku,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,prumer_pomocne_trubicky,zapusteni_pomocne_trubicky,vule_mezi_statorem_rotorem,R01_vyska_preryti_statoru,R01_sila_materialu_pro_prekriti,S01_sila_materialu);

            
