use <SRC/AWSBOX01A_D01.scad>
use <SRC/AWSBOX01A_D02.scad>
use <SRC/AWSBOX01A_D03.scad>
use <SRC/AWSBOX01A_D04.scad>

use <SRC/AWSBOX01A_O01.scad>

include <configuration.scad>


barva_D02 = "cyan";
barva_D03 = "yellow";
barva_D04 = "green";
barva_D05 = "yellow";
barva_D06 = "cyan";




posunuti_dilu=0; //posunuti dilu od sebe
difference()
        {
union()
        {
//AWSCREEN01A_D05  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D05)
    
            
            translate([0,D02_sila_materialu+D02_vyska_boxu_pod_plbase+(tloustka_plbase+D02_dolerance_na_zasunuti)/2,D02_zapusteni_spodniho_krytu])
        rotate([90,0,0])
     AWSBOX01A_D01(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);
        
            
             
     AWSBOX01A_D02();   
 
         translate([((pocet_der1-1)*vzdalenost_der+2*vzdalenost_od_okraje+2*D02_sila_materialu+2*D02_dolerance_na_zasunuti),0,D02_sila_materialu+D02_zapusteni_spodniho_krytu])   
            
       rotate([0,180,0])      
     AWSBOX01A_D04();         
            
          
}

cube([70,70,300]);


}