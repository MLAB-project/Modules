$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSBOX01A_D01.scad>

rotate([0, 0, 0])
            
 
translate([0,0,0])
        rotate([0,0,0])
     AWSBOX01A_D01(pocet_der1,pocet_der2,1,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);

            
