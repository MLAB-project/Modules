$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;

//Držák magnetu

module WINDGAUGE02A_R03()
    {
    //setihrana matice
    difference()
        {
        union()
            {
            //zakladni material
            cylinder (h = magnet_vyska+R03_vyska_narezeni_hridelky+S01_sila_materialu-senzor_vyska_IO-senzor_odstup_od_magnetu, r= R05_sirka_matky/2, $fn=6);
            
            translate([0,0,-S01_sila_materialu/2])    
                cylinder (h = S01_sila_materialu, r=(S01_prumer_vnitrniB-S01_hloubka_zavitu)/2, center = true, $fn=100);  
             
                for(i = [1 : magnet_pocet]){
                    rotate([0,0,(360/magnet_pocet)*i]){
                        translate([0,magnet_vzdalenost, 0]) difference(){
                            cylinder(h=magnet_zapusteni, d=magnet_prumer+1);
                            cylinder(h=magnet_vyska+0.1, d=magnet_prumer);
                        }
                    }
                }
             }
        
       
        //otvor  
        translate([0,0,-S01_sila_materialu])        
            cylinder (h = 3*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+0.1, r=prumer_osicky/2, $fn=100);
              
        translate([0,0,magnet_vyska+R03_vyska_narezeni_hridelky+S01_sila_materialu-senzor_vyska_IO-senzor_odstup_od_magnetu+0.1-S01_sila_materialu]);
   
            
            
  //sterbina
translate([0,0,-25]) 
   cube([(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2+2,sterbina_na_osicku,50]);          
            
        }
    }


WINDGAUGE02A_R03();

 
