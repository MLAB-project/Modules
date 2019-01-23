$fn=40; // model faces resolution.
include <../configuration.scad>

//Držák na konektor RJ11

module WINDGAUGE01A_S03()
{

wall_thickness = 2; 
D = 25;  // venturi tube base diameter
D_Diaphragm = D/2;

    difference()
    {
        
        cylinder (h = 5*D, d = D + 2*wall_thickness, $fn=100); 

        translate([0,0,0])
            cylinder (h = 6*D, d = D_Diaphragm , $fn=100); 

        translate([0,0,0])
            cylinder (h = 3*D, d1 = D , d2 = D_Diaphragm , $fn=100); 

        translate([0,0,3*D + D_Diaphragm])
            cylinder (h = D, d1 = D_Diaphragm , d2 = D , $fn=100); 

        translate([0,0,3*D + D_Diaphragm + D])
            cylinder (h = 2*D,d = D , $fn=100); 

        translate([0,0,3*D + D_Diaphragm/2])
            rotate([90,0,0])
                cylinder (h = 2*D,d = 3 , $fn=100); 

        translate([0,0,3*D + D_Diaphragm + D])
            rotate([90,0,0])
                cylinder (h = 2*D,d = 3 , $fn=100); 

            
    }

}

   

  
WINDGAUGE01A_S03(); 

