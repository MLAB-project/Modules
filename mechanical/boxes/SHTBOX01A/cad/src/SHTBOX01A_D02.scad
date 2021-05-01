$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>


module SHTBOX01A_D02()
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
   
   union()
            
         //podstavec se zavitem   
         {   
        cylinder (h = D05_vyska_podstavce-D05_vyska_zavitu, r=D05_prumer_zavitu/2+2*S01_sila_materialu, $fn=8);
          
       translate([0,0,D05_vyska_podstavce-D05_vyska_zavitu])    
             
         screw_thread((D05_prumer_zavitu-2*tolerance_zavitu),4,55,D05_vyska_zavitu,PI/2,2);    
          }
        
        translate([0,(D05_prumer_zavitu+4*S01_sila_materialu)/4+3,D05_vyska_podstavce/2])  
            cube([D05_sirka_otvoru_na_kabel,(D05_prumer_zavitu+4*S01_sila_materialu)/2,D05_vyska_podstavce+0.11],true); 
         
               
            
       }
    }

SHTBOX01A_D02();

    
