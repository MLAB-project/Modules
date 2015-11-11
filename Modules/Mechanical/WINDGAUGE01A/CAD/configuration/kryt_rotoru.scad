$fn=40; // model faces resolution.
//include <../configuration.scad>


module kryt_rotoru(prumer_rotoru1,sila_materialu,prumer_sroubu)
{
 
    //kopule
    difference()
        {
            sphere(d = prumer_rotoru1, $fn=100);
            sphere(d = prumer_rotoru1-2*sila_materialu, $fn=100); 
  
            translate([0,0,-prumer_rotoru1/2])          
                cube(size = [prumer_rotoru1, prumer_rotoru1, prumer_rotoru1], center = true);          
            
             }
    
    //dno krytu         
             difference()
        {
            //zakladni valec
            translate([0,0,sila_materialu/2])
                cylinder (h = sila_materialu, r=prumer_rotoru1/2, center = true, $fn=100);           
 
            //odstraněni casti valce
            translate([prumer_rotoru1/2+prumer_sroubu*2,0,sila_materialu/2])          
                cube(size = [prumer_rotoru1, prumer_rotoru1, sila_materialu+1], center = true);
  //otvor na sroub
            translate([0,0,sila_materialu/2])       
                cylinder (h = sila_materialu+0.1, r=prumer_sroubu/2, center = true, $fn=100);        
            
             }
}



