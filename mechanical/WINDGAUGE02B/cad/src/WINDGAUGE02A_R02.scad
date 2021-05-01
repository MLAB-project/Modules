$fn=100; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>
PI=3.141592;

//Drzak rotoru se závitem

WINDGAUGE02A_R02();

module WINDGAUGE02A_R02()
    {
    //setihrana matice
    difference()
        {
        union()
            {
            //závit
            screw_thread((12-S01_tolerance_zavit),3,55,R01_vyska_preryti_statoru,PI/2,2);  
                           
            //spodní podložka        
            translate([0,0,-R01_mezera_mezi_statorem_rotorem/2])    
                cylinder (h = R01_mezera_mezi_statorem_rotorem, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2, center = true, $fn=100);     
            }
                  
        //otvor  
        translate([0,0,-R01_mezera_mezi_statorem_rotorem-0.05])        
            cylinder (h = R01_vyska_preryti_statoru+R01_mezera_mezi_statorem_rotorem+0.1, r=prumer_osicky/2, $fn=100);


//sterbina
translate([0,0,-R01_mezera_mezi_statorem_rotorem]) 
   cube([(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2+2,sterbina_na_osicku,R01_vyska_preryti_statoru+R01_mezera_mezi_statorem_rotorem+0.2]);


        }

    }
