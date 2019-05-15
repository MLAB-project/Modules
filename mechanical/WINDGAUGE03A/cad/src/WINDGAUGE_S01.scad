include <../configuration.scad>
include <./lib/polyScrewThread_r1.scad>

draft = true;
$fn = draft ? 20 : 100; // model faces resolution
PI=3.141592;

//Držák ložisek, rotoru, senzoru
module WINDGAUGE01A_S01(draft = true)
{
    //valec se zavitem
    union()
    {
        difference()
        {
            union()
            {
                translate([0, 0, S01_sila_materialu])
                    if (draft)
                        cylinder(h = S01_vyska_horni_zavit,
                                 d = S01_prumer_vnitrni + S01_tolerance_zavit);
                    else
                        screw_thread((S01_prumer_vnitrni-S01_tolerance_zavit),
                                     S01_hloubka_zavitu, 55, S01_vyska_horni_zavit,
                                     PI/2, 2);
                //spodní doraz
                cylinder(h = S01_sila_materialu,
                         r=S01_prumer_vnitrni/2 + 5/2*S01_sila_materialu);
                //krycí ovál - usnadnění povolení
                difference()
                {
                    cylinder(h = R01_vyska_prekryti_statoru + 5,
                             r=S01_prumer_vnitrni/2 + 5/2*S01_sila_materialu);
                    cylinder(h = R01_vyska_prekryti_statoru + 5 + 0.01,
                             r = S01_prumer_vnitrni/2 + 3/2*S01_sila_materialu);
                }
            }
        //odstranění vnitřní výplně
        translate([0, 0, S01_sila_materialu])
            cylinder(h = S01_vyska_horni_zavit + 0.01,
                     r = (S01_prumer_vnitrni/2 - S01_hloubka_zavitu/2
                          - S01_sila_materialu));
        //otvor na ložisko s vodiči
        translate([0, 0, S01_sila_materialu/2])
            cylinder(h = S01_sila_materialu + 0.01,
                     r = (LO_spodni_prumer + 0.2)/2,
                     center = true);
        }
        //držák ložiska
        difference()
        {
            cylinder(h = LO_vyska_bez_krytu + 2 + prumer_sroubu + 2*S01_sila_materialu,
                     r = (LO_spodni_prumer + 4*S01_sila_materialu) / 2);

            //otvor na ložisko
            cylinder(h = LO_vyska_bez_krytu + 2 + prumer_sroubu + 2*S01_sila_materialu + 0.5,
                     r = (LO_spodni_prumer) / 2);

            //otvor na zasunuti loziska do ohradky
            translate([0, 0, LO_vyska_bez_krytu])
                cylinder(h = 2 + prumer_sroubu + 2*S01_sila_materialu + 0.5,
                         r = (LO_spodni_prumer + 2*S01_sila_materialu) / 2);

            //otvor na pojistny sroub
            translate([0, (LO_spodni_prumer + 4*S01_sila_materialu + 1) / 2,
                       LO_vyska_bez_krytu + 2 + 0.4 + prumer_sroubu/2])
                rotate(a = [90, 0, 0])
                    cylinder(h = LO_spodni_prumer + 4*S01_sila_materialu + 1,
                             r = prumer_sroubu/2);
        }
        /*
        //držák ložiska doraz
        difference()
        {
            translate([0, 0, LO_vyska_bez_krytu])
                cylinder(h = 2*S01_sila_materialu,
                         r1 = (LO_spodni_prumer + 2*S01_sila_materialu) / 2,
                         r2 = LO_spodni_prumer/2);
            translate([0, 0, LO_vyska_bez_krytu])
                cylinder(h = 2*S01_sila_materialu,
                         r1 = LO_spodni_prumer/2,
                         r2 = (LO_spodni_prumer - 2*S01_sila_materialu) / 2);
        }
        */
    }
}

//sloupek na senzor
module SLOUPEK()
{
    translate([0, 0, S01_sila_materialu])
        difference ()
        {
            cylinder (h = (R01_vyska_prekryti_statoru + 2*lozisko_vyska
                           + 2*S01_sila_materialu + 2*S01_sila_materialu
                           + vyska_hlavy_sroubu + magnet_vyska + vyska_matky),
                      r = sirka_matky/2 + S01_sila_materialu, $fn = 20);
            translate([0, 0, R01_vyska_prekryti_statoru + 2*lozisko_vyska
                       + 2*S01_sila_materialu + 2*S01_sila_materialu + vyska_hlavy_sroubu
                       + magnet_vyska])
                cylinder (h = vyska_matky + 0.01, r = (sirka_matky + 0.2)/2, $fn = 6);
            translate([0, 0, -0.01])
                cylinder (h = (R01_vyska_prekryti_statoru + 2*lozisko_vyska
                               + 2*S01_sila_materialu + 2*S01_sila_materialu
                               + vyska_hlavy_sroubu + magnet_vyska + vyska_matky + 0.01),
                          r = (prumer_sroubu + 0.2) / 2, $fn = 40);
            translate([0, 0, -0.01])
                cylinder (h = vyska_hlavy_sroubu - S01_sila_materialu,
                          r = prumer_hlavy_sroubu/2, $fn = 40);
            translate([0, 0, vyska_hlavy_sroubu - S01_sila_materialu - 0.02])
                cylinder(h = 2 + 0.02,
                         r1 = prumer_hlavy_sroubu/2,
                         r2 = (prumer_sroubu + 0.2) / 2);
        }
}

difference()
{
    // If not draft -> move to print position.
    if (!draft)
        translate([0, 0, 0])
            rotate([0, 0, 0])
                WINDGAUGE01A_S01(false);
    else
        WINDGAUGE01A_S01();
    // Cut-out cube
    if (draft)
        translate([0, 0, 0])
            cube(10*R01_vyska_prekryti_statoru);
}
