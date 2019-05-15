include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>
PI = 3.141592;
draft = false;
$fn = draft ? 20 : 100; // model faces resolution

module WINDGAUGE01A_R01(draft = true)
{
    translate([0, 0, R01_zavit_vyska+1])
        difference()
        {
            //kužel
            cylinder(h = 3,
                     r1 = S01_prumer_vnitrni/2 + 5*S01_sila_materialu,
                     r2 = S01_prumer_vnitrni/2 + 5*S01_sila_materialu);
            //odečet - otvor na vodiče
            cylinder (h = R01_zavit_vyska + 10,
                      r = 3);
        }
    difference()
    {
        //válec na závit
        cylinder (h = R01_zavit_vyska + 1,
                  r = S01_prumer_vnitrni/2 + 5*S01_sila_materialu);
        //odečet závitu
        translate([0, 0, -10])
            screw_thread((R03_prumer_zavitu), S01_hloubka_zavitu,
                         55, R01_zavit_vyska + 12, PI/2, 2);
    }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, R01_zavit_vyska + 1 + 3])
            rotate([0, 180, 0])
                WINDGAUGE01A_R01(false);
    else
        WINDGAUGE01A_R01();
    // Cut-out cube
    if (draft)
        translate([0, 0, -S01_prumer_vnitrni])
            cube(2*S01_prumer_vnitrni);
}
