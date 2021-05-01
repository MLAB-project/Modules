$fn=40; // model faces resolution.
include <../configuration.scad>

include <polyScrewThread_r1.scad>

//Držák na konektor RJ11

PI=3.141592;
module WINDGAUGE02A_S03()
    {
    difference()
        {
        translate([0,0,0])
            cylinder (h = S01_sila_drzaku_RJ11, r=(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2-0.3, $fn=100); 
            
        translate([0,0,S01_sila_drzaku_RJ11/2])           
            cube([S01_hrana_A_RJ11,S01_hrana_B_RJ11,S01_sila_drzaku_RJ11+0.01],center=true);

        //otvor až ke kraji
        translate([0,((S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5)/2,S01_sila_drzaku_RJ11/2])       cube([S01_hrana_A_RJ11,(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5,S01_sila_drzaku_RJ11+0.01],center=true);          
        }

    }

   

  
WINDGAUGE02A_S03(); 

