include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

draft = true;
$fn = draft ? 20 : 100; // model faces resolution
PI=3.141592;

//Držák na konektor RJ11
module WINDGAUGE01A_S03(draft = true)
{
    difference()
    {
        translate([0, 0, 0])
            cylinder (h = S01_sila_drzaku_RJ11,
                      r=S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 - 0.5);
            
        translate([0, 0, S01_sila_drzaku_RJ11/2])           
            cube([S01_hrana_A_RJ11, S01_hrana_B_RJ11, S01_sila_drzaku_RJ11 + 0.01],
                  center=true);

        //otvor až ke kraji
        translate([0, (S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 + 0.5)/2,
                   S01_sila_drzaku_RJ11/2])
            cube([S01_hrana_A_RJ11, S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 + 0.5,
                  S01_sila_drzaku_RJ11+0.01], center=true);          
        }
    }

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, 0])
            rotate([0, 0, 0])
                WINDGAUGE01A_S03(false);
    else
        WINDGAUGE01A_S03();
    // Cut-out cube not needed in this model
    //if (draft)
    //    translate([0, 0, 0])
    //        cube(10);
}
