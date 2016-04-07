$fn=40; // model faces resolution.
include <../configuration.scad>

include <AWSCREEN02A_D06.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;



module AWSCREEN02A_D07()
    {

difference()
        {

 union()  
   {
    
     

// valec na závit
translate([0,0,D04_sila_zavitu_stojanku/2])
cylinder (h = D04_sila_zavitu_stojanku, r=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2, center = true, $fn=100);
            
   for (i = [0 : (D07_pocet_nozicek-1)]) {
	rotate ([0,0,(360/D07_pocet_nozicek)* i])
nozicka();	

}      


 }

   
          
    translate([0,0,-4])       
 screw_thread(S01_prumer_zavitu,4,55,D04_sila_zavitu_stojanku+8,PI/2,2);
     

}




 

// cube([200,200,200]);



















}
    

 module nozicka()   
      {
    translate([0,0,0])  
difference()
        {
            
            union()
            {
            translate([0,0,D04_sila_zavitu_stojanku])     
cylinder (h=D07_vyska_stojanku,r1=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2+2*D01_material_pred_zavitem ,r2=(S01_prumer_zavitu+2*D01_material_pred_zavitem)/2+5,$fn=100);
 
  cylinder (h = D04_sila_zavitu_stojanku, r=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2+2*D01_material_pred_zavitem , $fn=100);              
                 } 
          translate([0,0,D04_sila_zavitu_stojanku])       
       cylinder (h=D07_vyska_stojanku,r1=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2+2*D01_material_pred_zavitem-D07_sila_materialu ,r2=(S01_prumer_zavitu+2*D01_material_pred_zavitem)/2-D07_sila_materialu+5,$fn=100); 
            
              
            
  translate([0,0,0])  
    difference()
        {
            
  cube([2*D07_vyska_stojanku,2*D07_vyska_stojanku,3*D07_vyska_stojanku], true); 
   
            translate([D07_vyska_stojanku,0,D07_vyska_stojanku/2])  
   cube([2*D07_vyska_stojanku,D07_sirka_nozicky,D07_vyska_stojanku+D04_sila_zavitu_stojanku], true); 
            
     }      
  }      
    
    } 
AWSCREEN02A_D07();


    
  
     