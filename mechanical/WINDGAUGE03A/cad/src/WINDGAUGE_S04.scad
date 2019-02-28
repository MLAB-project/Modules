$fn=40; // model faces resolution.
include <../configuration.scad>

include <./lib/polyScrewThread_r1.scad>

//Držák na konektor RJ11

WINDGAUGE01A_S04();

PI=3.141592;


module WINDGAUGE01A_S04()
    {
    difference()
        {
        translate([0,0,0])
            cylinder (h = S01_sila_drzaku_RJ11, r=(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2-0.5, $fn=100); 
            
        translate([0,0,S01_sila_drzaku_RJ11/2])           
            cube([I2CDIFF01A_sirka_kon,S01_hrana_B_RJ11,S01_sila_drzaku_RJ11+0.01],center=true);

        //otvor až ke kraji
        translate([0,((S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5)/2,S01_sila_drzaku_RJ11/2])       cube([I2CDIFF01A_sirka_kon,(S01_prumer_vnitrni)/2-S01_hloubka_zavitu/2+0.5,S01_sila_drzaku_RJ11+0.01],center=true);          
        }

translate([-I2CDIFF01A_sirka_mod_otvory*10.16/2+5.08,0,S01_sila_drzaku_RJ11])
DRZAK();
        
translate([I2CDIFF01A_sirka_mod_otvory*10.16/2-5.08,0,S01_sila_drzaku_RJ11])
 rotate ([0,0,180])
DRZAK();        


    }

   
module DRZAK()
    {
difference()
            {
                 translate([-S04_sila_materialu/2,0,5.08])
            cube([10.16+1*S04_sila_materialu,3+2*S04_sila_materialu,10],true);

translate([0,0,5.08])
            cube([10.16,3,10+0.01],true);
            
            translate([0,5,5.08])
                rotate ([90,0,0])
                    cylinder (h = 30, r=(3.3/2), $fn=100);
            
            }
}