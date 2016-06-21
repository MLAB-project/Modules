$fn=40; // model faces resolution.
include <../configuration.scad>


//Ucpávka
module ISLHOLDER01A_D06()
    {
  
            
   difference()
        {         
        cylinder (h = D05_vyska_podstavce, r=D05_prumer_zkumavky_vnitrni/2, $fn=100);
        
        translate([0,D05_prumer_zkumavky_vnitrni/4,D05_vyska_podstavce/2])  
            cube([D05_sirka_otvoru_na_kabel,D05_prumer_zkumavky_vnitrni/2,D05_vyska_podstavce+0.11],true); 
         
        
       }
    }

ISLHOLDER01A_D06();


