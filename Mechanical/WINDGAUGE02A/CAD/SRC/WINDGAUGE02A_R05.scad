$fn=40; // model faces resolution.
include <../configuration.scad>

module WINDGAUGE02A_R05(vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu,vyska_matky,sirka_matky,R05_sirka_matky,S01_sila_materialu)
    {
        //setihrana matice
          difference()
        {
        //zakladni material
            cylinder (h = 2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_zapusteni+vyska_matky, r= R05_sirka_matky/2, $fn=6);
            
         //dira na matku   
    cylinder (h = vyska_matky+0.2, r= (sirka_matky+0.2)/2, $fn=6);
            
       
  
        //otvor pro magnet    
            translate([0,0,(2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_zapusteni+vyska_matky)-magnet_zapusteni/2+0.01])    
                cylinder (h = magnet_zapusteni+0.01, r=((magnet_prumer+0.2)/2), center = true, $fn=100);     
   
        //zapusteni uchytného sroubu   
            translate([0,0,(2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_zapusteni+vyska_matky)-vyska_hlavy_sroubu/2+0.1])    
                cylinder (h = vyska_hlavy_sroubu+1, r=((prumer_hlavy_sroubu+0.2)/2), center = true, $fn=100); 

        //otvor pro sroub
        translate([0,0,(2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_zapusteni+vyska_matky)/2+0.1])     
            cylinder (h = (2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_zapusteni+vyska_matky)+0.1, r=(prumer_sroubu)/2, center = true, $fn=100);     
        }
    }



WINDGAUGE02A_R05(vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu,vyska_matky,sirka_matky,R05_sirka_matky,S01_sila_materialu);

 
