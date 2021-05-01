$fn=40; // model faces resolution.
include <../configuration.scad>


//Drzak senzoru
module ISLHOLDER01A_D05()
    {
    translate([0,0,(D05_vyska_drzaku_senzoru)/2+D05_vyska_podstavce])
        difference()
            {
            cube([10.16+2*S01_sila_materialu,3+2*S01_sila_materialu,D05_vyska_drzaku_senzoru],true);

            cube([10.16,3,D05_vyska_drzaku_senzoru+0.01],true);
            
            translate([0,5,D05_vyska_drzaku_senzoru/2-3.08])
                rotate ([90,0,0])
                    cylinder (h = 30, r=(3.3/2), $fn=100);
            
            }
            
   difference()
        {         
        cylinder (h = D05_vyska_podstavce, r=D05_prumer_zkumavky_vnitrni/2, $fn=100);
        
        translate([0,D05_prumer_zkumavky_vnitrni/4,D05_vyska_podstavce/2])  
            cube([D05_sirka_otvoru_na_kabel,D05_prumer_zkumavky_vnitrni/2,D05_vyska_podstavce+0.11],true); 
         
          rotate ([0,0,180])   
         translate([0,D05_prumer_zkumavky_vnitrni*1/4,D05_vyska_podstavce/2])  
            cube([D05_sirka_otvoru_na_kabel,D05_prumer_zkumavky_vnitrni/4,D05_vyska_podstavce+0.11],true);     
            
       }
    }

ISLHOLDER01A_D05();


