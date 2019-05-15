include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

PI=3.141592;
draft = true;
$fn = draft ? 20 : 100; // model faces resolution

//Držák magnetu
module WINDGAUGE01A_R06(draft = true)
{
    //valec se zavitem
    union()
    {
        translate([0, 0, S01_sila_materialu/2])
            cylinder(h = S01_sila_materialu+0.01,
                     r = (LO_horni_prumer + 0.2) / 2,
                     center = true);
            cylinder(h = LO_vyska_horni_doraz - R03_mezera_mezi_statorem_rotorem + 0.01,
                     r = (LO_horni_prumer + 0.2) / 2);
        translate([0, 0, LO_vyska_horni_doraz-R03_mezera_mezi_statorem_rotorem])
            translate([0, 0, -0.005])
                cylinder(h = 2*S01_sila_materialu + 0.01,
                         r1 = (LO_horni_prumer + 0.2) / 2,
                         r2 = (LO_horni_prumer + 0.2) / 2 - 2*S01_sila_materialu);
    }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, 0])
            rotate([0, 0, 0])
                WINDGAUGE01A_R06(false);
    else
        WINDGAUGE01A_R06();
    // Cut-out cube
    if (draft)
        translate([0, 0, 0])
            cube(2*LO_vyska_horni_doraz);
}
