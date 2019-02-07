$fn=40; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

PI=3.141592;

//Držák magnetu

module WINDGAUGE01A_R03()
{
    //valec se zavitem
    union()  
        {
        difference()
        {
            union()
            {
                
                //závit
            translate([0,0,S01_sila_materialu])
                screw_thread((R03_prumer_zavitu-S01_tolerance_zavit),S01_hloubka_zavitu,55,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska,PI/2,2);  
            
            //spodní doraz
            cylinder (h = S01_sila_materialu, r=(R03_prumer_zavitu-S01_tolerance_zavit)/2+S01_sila_materialu, $fn=100);  

         
            
            }    
                        

        //odstranění vnitřní výplně
        translate([0,0,S01_sila_materialu])
            cylinder (h = R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+0.01, r=(R03_prumer_zavitu-S01_tolerance_zavit)/2-S01_hloubka_zavitu/2-S01_sila_materialu, $fn=100); 
            
               
            //otvor na ložisko s vodiči         
       translate([0,0,S01_sila_materialu/2])           
            cylinder (h = S01_sila_materialu+0.01, r=(LO_horni_prumer+0.2)/2, center = true, $fn=100);   
            } 
     
            
         difference()
            {
            cylinder (h = LO_vyska_horni_doraz-R03_mezera_mezi_statorem_rotorem, r=(LO_horni_prumer+0.2)/2+S01_sila_materialu, $fn=100); 
 translate([0,0,-0.005])
            cylinder (h = LO_vyska_horni_doraz-R03_mezera_mezi_statorem_rotorem+0.01, r=(LO_horni_prumer+0.2)/2, $fn=100);            
            
            }       
         
             translate([0,0,LO_vyska_horni_doraz-R03_mezera_mezi_statorem_rotorem])
              difference()
            {
                
            cylinder(h=2*S01_sila_materialu, r1=(LO_horni_prumer+0.2)/2+S01_sila_materialu, r2=(LO_horni_prumer+0.2)/2-S01_sila_materialu,  center=false);    
                
          
 translate([0,0,-0.005])
                
                cylinder(h=2*S01_sila_materialu+0.01,r1=(LO_horni_prumer+0.2)/2, r2=(LO_horni_prumer+0.2)/2-2*S01_sila_materialu,  center=false);  
                     
            
                
            } 

//držák senzoru            
       translate([-(senzor_sirka+2*S01_sila_materialu)/2,-(senzor_delka+2*S01_sila_materialu)/2,0])
            difference()
        { 
           
 //základní materiál pro drzak senzoru           
cube([senzor_sirka+2*S01_sila_materialu,senzor_delka+2*S01_sila_materialu,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+S01_sila_materialu-R01_zavit_vyska],false);
  
            //otvor na senozor
  translate([S01_sila_materialu,S01_sila_materialu,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+S01_sila_materialu-R01_zavit_vyska-senzor_sila])          
cube([senzor_sirka,senzor_delka,senzor_sila+0.01],false);
          
          //odstraneni vyplně
            translate([2*S01_sila_materialu,2*S01_sila_materialu,-0.005])          
cube([senzor_sirka-2*S01_sila_materialu,senzor_delka-2*S01_sila_materialu,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+S01_sila_materialu-R01_zavit_vyska-senzor_sila+0.01],false);
 
 
  translate([(senzor_sirka+2*S01_sila_materialu)/2,0,-0.005])                
cube([4,senzor_delka+2*S01_sila_materialu+0.01,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska+S01_sila_materialu-R01_zavit_vyska+3],false);


            }     
        }
  }




WINDGAUGE01A_R03();

 
