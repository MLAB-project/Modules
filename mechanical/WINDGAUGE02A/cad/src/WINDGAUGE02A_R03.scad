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
                cylinder (h = S01_sila_materialu, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv)/2, center = true, $fn=100);     
             }
        
        //otvor pro magnet    
        translate([0,0,(magnet_vyska+R03_vyska_narezeni_hridelky+S01_sila_materialu-senzor_vyska_IO-senzor_odstup_od_magnetu)-magnet_zapusteni/2+0.01])    
            cylinder (h = magnet_zapusteni+0.01, r=((magnet_prumer+0.2)/2), center = true, $fn=100);     
        
        //otvor  
        translate([0,0,-S01_sila_materialu])        
            cylinder (h = 3*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky-senzor_vyska_IO-senzor_odstup_od_magnetu+0.1, r=prumer_osicky/2, $fn=100);
              
        translate([0,0,magnet_vyska+R03_vyska_narezeni_hridelky+S01_sila_materialu-senzor_vyska_IO-senzor_odstup_od_magnetu+0.1-S01_sila_materialu])
         
        difference()
            {     
            cylinder(  S01_sila_materialu,d1=3*R05_sirka_matky, d2=3*lozisko_prumer_vnitrni+2*lozisko_prekryv  );    
            
            cylinder(  S01_sila_materialu, d1=R05_sirka_matky,d2=lozisko_prumer_vnitrni+2*lozisko_prekryv  );
            }     
              
        //spodní zakulacení           
        difference()
            {     
            cylinder(  S01_sila_materialu, d1=3*lozisko_prumer_vnitrni+2*lozisko_prekryv,d2=3*R05_sirka_matky  );    
            
            cylinder(  S01_sila_materialu, d1=lozisko_prumer_vnitrni+2*lozisko_prekryv,d2=R05_sirka_matky  );
            }
            
            
  //sterbina
translate([0,0,-R01_mezera_mezi_statorem_rotorem]) 
   cube([(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2+2,sterbina_na_osicku,R01_vyska_preryti_statoru+R01_mezera_mezi_statorem_rotorem+0.2]);          
            
        }
    }


WINDGAUGE02A_R03();

 
