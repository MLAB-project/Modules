$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>

SHTBOX01A_D01();

 
    
module SHTBOX01A_D01()
    {
   difference()
            {    
     union()
            
         //hlavní těleso  
         {    
     //válec   
    cylinder (h = D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti-D05_vyska_kuzelu, r=D05_prumer_zavitu/2+1*S01_sila_materialu, $fn=100);      
     
    //kuzel  
     translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti-D05_vyska_kuzelu])          
    cylinder(h=D05_vyska_kuzelu, r1=D05_prumer_zavitu/2+1*S01_sila_materialu, r2=D05_sirka_zuzene_casti/2+S01_sila_materialu, center=false);  
      
    //válec zuzeny  
             
             translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti])
    cylinder (h = D05_vyska_zuzene_casti, r=D05_sirka_zuzene_casti/2+S01_sila_materialu, $fn=100);         
             
             
     //kopule
     translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08+0.01])   
     sphere(r = D05_sirka_zuzene_casti/2+S01_sila_materialu, $fn=100);   
    
          }
          
          
      //závit    
        translate([0,0,-4])      
      screw_thread((D05_prumer_zavitu),4,55,D05_vyska_zavitu+5,PI/2,2); 
   
    
     //válec 
        translate([0,0,D05_vyska_zavitu-1])   
    cylinder (h = D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti-D05_vyska_kuzelu-D05_vyska_zavitu+1, r=D05_prumer_zavitu/2, $fn=100);
   
          
          
  //kuzel  
     translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti-D05_vyska_kuzelu])          
    cylinder(h=D05_vyska_kuzelu, r1=D05_prumer_zavitu/2, r2=D05_sirka_zuzene_casti/2, center=false);  
      
    //válec zuzeny  
             
             translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vyska_zuzene_casti])
    cylinder (h = D05_vyska_zuzene_casti, r=D05_sirka_zuzene_casti/2, $fn=100);         
             
             
     //kopule
     translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08+0.01])   
     sphere(r = D05_sirka_zuzene_casti/2, $fn=100);    
          
      
//vetrací otvory  

angle_sep=360/(D05_pocet_otvoru-1);

for (j = [0 : 2]) {
for (i = [0 : (D05_pocet_otvoru-1)]) {
	
    translate ([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08-D05_vzdalenost_otvoru_od_hrany-j*2*D05_prumer_otvoru])
    
    rotate ([90,0,j*angle_sep/2+angle_sep* i])
	translate ([0,0,D05_sirka_zuzene_casti/2-0.3])
	   cylinder (h = 3*S01_sila_materialu, r=D05_prumer_otvoru/2, $fn=100); 
     }
      }

translate([0,0,D05_vyska_senzoru+D05_vyska_zavitu+D05_vyska_drzaku_senzoru-5.08-3.08+0.01+D05_sirka_zuzene_casti/2-2])   
 cylinder (h = 3*S01_sila_materialu, r=D05_prumer_otvoru/2, $fn=100); 



     
          }
          
          
          
        
  
            
       }
       
       
