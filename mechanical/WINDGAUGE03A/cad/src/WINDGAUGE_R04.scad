$fn=40; // model faces resolution.
include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

//podložka u ložiska - nahrazena kovovou
WINDGAUGE01A_R04();

//Model lopatky
module WINDGAUGE01A_R04()
{
    //závit
    difference()
    {      
        union()
        { 
            //materiál na závit
            cylinder (h = R04_zavit_vyska, r=R03_prumer_zavitu/2+S01_sila_materialu, $fn=100);          

            //krycí válec
            difference()
            {                  
                //spodní válec        
                cylinder (h = R01_vyska_preryti_statoru+R04_zavit_vyska, r=S01_prumer_vnitrni/2+5*S01_sila_materialu, $fn=100); 
                //Odečet spodního válce
                translate([0,0,S01_sila_materialu])
                    cylinder (h = R01_vyska_preryti_statoru+R04_zavit_vyska+0.01, r=S01_prumer_vnitrni/2+4*S01_sila_materialu, $fn=100);
                
            }  
        }
      
        translate([0,0,-10])
            screw_thread((R03_prumer_zavitu),S01_hloubka_zavitu,55,R04_zavit_vyska+R02_zavit_vyska+R01_zavit_vyska,PI/2,2);   
    }
 }


