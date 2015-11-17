$fn=40; // model faces resolution.
include <../configuration.scad>

kryt_rotoru(prumer_rotoru1,sila_materialu,prumer_sroubu,vyska_rotoru1);

module kryt_rotoru(prumer_rotoru1,sila_materialu,prumer_sroubu,vyska_rotoru1)
{
 
    //kopule
    difference()
        {
            sphere(d = prumer_rotoru1+2*sila_materialu, $fn=100);
            sphere(d = prumer_rotoru1+0.1, $fn=100); 
  
            translate([0,0,-(prumer_rotoru1+2*sila_materialu)/2])          
                cube(size = [prumer_rotoru1+2*sila_materialu, prumer_rotoru1+2*sila_materialu, prumer_rotoru1+2*sila_materialu], center = true);          
            
             }
    
             //válcová část krytu        
             difference()
        {
            //zakladni valec
            translate([0,0,-vyska_rotoru1/2])
                cylinder (h = vyska_rotoru1, r=(prumer_rotoru1+2*sila_materialu)/2, center = true, $fn=100);           
 
            //válec pro vykrojení
            translate([0,0,-vyska_rotoru1/2])
                cylinder (h = vyska_rotoru1+0.05, r=(prumer_rotoru1+0.1)/2, center = true, $fn=100); 
            
            
             }
}



