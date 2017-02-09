use <SRC/SHTBOX01A_D01.scad>
use <SRC/SHTBOX01A_D02.scad>
use <SRC/SHTBOX01A_sensor.scad>

include <configuration.scad>


barva_D01 = "yellow";
barva_D02 = "cyan";
barva_sensor = "green";




difference()
        {     
union()
 {  

color(barva_D01)
    translate([0,0,0])
             
 
SHTBOX01A_D01();  
 
color(barva_D02)
    translate([0,0,-(D05_vyska_podstavce-D05_vyska_zavitu)])
             
 
SHTBOX01A_D02();      
     
     
 color(barva_sensor)
    translate([-5.08,-1,D05_vyska_podstavce+D05_vyska_drzaku_senzoru-3.08-5.08-3.2])
             
 
SHTBOX01A_sensor();   
       
 
       

 }     
cube(300); // cut to show internal relief
}
  
      
