$fn=100; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
PI=3.141592;



WINDGAUGE01A_R01();

module WINDGAUGE01A_R01()
{
    
    translate([0,0,R01_zavit_vyska+1])
    difference()
    {  
    //kužel 
        
    cylinder(h=3, r1=S01_prumer_vnitrni/2+5*S01_sila_materialu, r2=S01_prumer_vnitrni/2+5*S01_sila_materialu, center=false, $fn=100); 
        
    //odečet - otvor na vodiče
      cylinder (h = R01_zavit_vyska+10, r=3, $fn=100);   
    
    }
    
     difference()
    {  
    
            
        //válec na závit
         cylinder (h = R01_zavit_vyska+1, r=S01_prumer_vnitrni/2+5*S01_sila_materialu, $fn=100);  
        
      //odečet závitu
   translate([0,0,-10])
                screw_thread((R03_prumer_zavitu),S01_hloubka_zavitu,55,R01_zavit_vyska+12,PI/2,2);   
     
        
        
  

}



}
