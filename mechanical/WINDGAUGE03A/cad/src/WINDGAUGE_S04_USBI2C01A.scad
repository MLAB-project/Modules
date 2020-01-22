include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

draft = true;
$fn = draft ? 20 : 100; // model faces resolution
PI=3.141592;

module DRZAK()
{
    difference()
    {
        translate([-S04_sila_materialu/2, 0, 5.08])
            cube([10.16 + 1*S04_sila_materialu, 3 + 2*S04_sila_materialu, 10], true);

        translate([0, 0, 5.08])
            cube([10.16, 3, 10 + 0.01], true);

        translate([0, 5, 5.08])
            rotate ([90, 0, 0])
                cylinder(h = 30, r=(3.3 / 2));
    }
}

//Držák pro modul USBI2C01A
module WINDGAUGE01A_S04_USBI2C01A(draft = true)
{
    difference()
    {
        union(){
            translate([0, 0, 0])
                cylinder(h = S01_sila_drzaku_RJ11,
                     r = S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 - 1.0);

                     
            //drzaky PCB 
            translate([-USBI2C01A_sirka_mod_otvory*10.16/2 + 5.08, 0, S01_sila_drzaku_RJ11])
                DRZAK();

            translate([USBI2C01A_sirka_mod_otvory*10.16/2-5.08, 0, S01_sila_drzaku_RJ11])
                rotate ([0, 0, 180])
                    DRZAK();
             
                }   
        //otvor pro konektor
        translate([0, 0, S01_sila_drzaku_RJ11/2])
            cube([USBI2C01A_sirka_kon, S01_hrana_B_RJ11, S01_sila_drzaku_RJ11+30+0.01],
                 center=true);

        //otvor až ke kraji
        translate([0, (S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 + 0.5)/2,
                   S01_sila_drzaku_RJ11/2])
            cube([USBI2C01A_sirka_kon,
                  S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2 + 0.5,
                  S01_sila_drzaku_RJ11+0.01],
                 center=true);
    }

    
    }

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, 0])
            rotate([0, 0, 0])
                WINDGAUGE01A_S04_USBI2C01A(false);
    else
        WINDGAUGE01A_S04_USBI2C01A();
    // Cut-out cube not needed in this model
    //if (draft)
    //    translate([0, 0, 0])
    //        cube(10);
}
