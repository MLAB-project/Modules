$fn=40; // model faces resolution.
include <../configuration.scad>

//dilec do loziska
module WINDGAUGE02A_R04 (lozisko_prumer_vnitrni,lozisko_prekryv,S01_sila_materialu,prumer_sroubu)
    {
    difference()
        {

    union()
            {
    translate([0,0,0])
        cylinder (h = S01_sila_materialu, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv)/2, center = true, $fn=100); 
            
            translate([0,0,S01_sila_materialu])
        cylinder (h = S01_sila_materialu, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+2*S01_sila_materialu)/2, center = true, $fn=100);
          
           translate([0,0,-2*S01_sila_materialu]) 
    cylinder (h = lozisko_vyska, r=(lozisko_prumer_vnitrni/2), center = true, $fn=100);   
        }    
   translate([0,0,1/2*S01_sila_materialu-(lozisko_vyska)/2])             
  cylinder (h = 2*S01_sila_materialu+lozisko_vyska+0.1, r=((prumer_sroubu)/2), center = true, $fn=100);   
          
        
    }
 }
 
 WINDGAUGE02A_R04 (lozisko_prumer_vnitrni,lozisko_prekryv,S01_sila_materialu,prumer_sroubu);