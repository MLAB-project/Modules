$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>

//materiál pro kryt konektoru
//spodní krychle
translate([0,-(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/4+5,D04_konenektor_z/2+D04_sila_materialu_na_konektor])
cube([D04_konenektor_x+6+2*D03_tloustka_materialu,(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/2,D04_konenektor_z],true);




//vrchní válec
translate([0,5,D04_sila_materialu_na_konektor+D04_konenektor_z])

rotate ([90,0,0])
difference()
        {   
cylinder (h = (S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/2, r=(D04_konenektor_x+6+2*D03_tloustka_materialu)/2, $fn=100); 

//tohle když se smaže je to ok            
 translate([0,-(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/4,(D04_konenektor_x+6+2*D03_tloustka_materialu)/2])
           
cube([(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/2,(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu)/2,D04_konenektor_x+6+2*D03_tloustka_materialu],true);
}