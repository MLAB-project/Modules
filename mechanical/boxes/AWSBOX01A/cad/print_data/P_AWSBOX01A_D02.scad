$fn=100; // model faces resolution.
include <../configuration.scad>
use <../SRC/AWSBOX01A_D02.scad>

rotate([0, 0, 0])
            
 
translate([-20,0,(pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*radidus_hrany+D02_zapusteni_spodniho_krytu+radidus_hrany])
        rotate([180,0,0])
     AWSBOX01A_D02();

            
