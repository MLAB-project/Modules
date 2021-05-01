$fn=40; // model faces resolution.
include <../configuration.scad>

//podložka u ložiska - nahrazena kovovou
module WINDGAUGE02A_R04 ()
    {
    difference()
        {
        union()
            {
            translate([0,0,0])
                cylinder (h = S01_sila_materialu, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv)/2, center = true, $fn=100); 
            }    
   
        translate([0,0,1/2*S01_sila_materialu-(lozisko_vyska)/2])             
            cylinder (h = 2*S01_sila_materialu+lozisko_vyska+0.1, r=((prumer_osicky)/2), center = true, $fn=100);   
        }
    }
 
 WINDGAUGE02A_R04 ();