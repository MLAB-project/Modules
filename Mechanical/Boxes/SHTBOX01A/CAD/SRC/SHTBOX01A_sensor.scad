$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>


module SHTBOX01A_sensor()
    {
   
        difference()
            {
            cube([10.16,1.2,4*10.16],false);
                   
            translate([5.08,2,5.08])
                rotate ([90,0,0])
                    cylinder (h = 30, r=(3.3/2), $fn=100);
                
            translate([5.08,2,2*10.16+5.08])
                rotate ([90,0,0])
                    cylinder (h = 30, r=(3.3/2), $fn=100);    
            
            }
            
  }

SHTBOX01A_sensor();

    
