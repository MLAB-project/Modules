$fn=100; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>
PI=3.141592;

WINDGAUGE01A_R01();

module WINDGAUGE01A_R01()
{
    
    translate([0,0,R01_zavit_vyska+1])
    difference()
    {  
    //kužel 
        
    cylinder(h=4, r1=R03_prumer_zavitu/2+S01_sila_materialu, r2=5, center=false, $fn=100); 
        
    
    
    }
    
     difference()
    {  
    
            
        //válec na závit
         cylinder (h = R01_zavit_vyska+1, r=R03_prumer_zavitu/2+S01_sila_materialu, $fn=100);  
        
      //odečet závitu
   translate([0,0,-10])
                screw_thread((R03_prumer_zavitu),S01_hloubka_zavitu,55,R01_zavit_vyska+12,PI/2,2);   
     
  

}

//válec pro držení PCB
 cylinder (h = R01_zavit_vyska+4, r=2, $fn=100);

}
