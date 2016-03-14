$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>


AWSCREEN01A_D04();







module AWSCREEN01A_D04()

    {
difference()
        {
union()
   {  
    
    difference()
        {   
 translate([0,0,0])
cylinder (h = D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu+2*D01_material_pred_zavitem)/2, $fn=100);
            
            
      } 
     
     difference()
        {  
    translate([0,0,D04_sila_materialu_na_konektor])       
 screw_thread(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu,4,55,D01_material_pod_zavitem,PI/2,2);
            
            cylinder (h = 0.01+D01_material_pod_zavitem+D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2, $fn=100);
}
}

//otvor na konektor
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem-2)/2+D04_konenektor_y/2,-0.01])
cube([D04_konenektor_x,D04_konenektor_y,18],true);

//dotvoření otvoru
//pro nasunutí ve spodní části
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2,-0.01])
cube([D04_konenektor_x,D04_konenektor_y,18],true);

 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2,D04_sila_materialu_na_konektor+D01_material_pod_zavitem/2])
cube([D04_konenektor_x+6,D04_konenektor_y,D01_material_pod_zavitem],true);

}
translate([0,7,(15+5.08)/2+D04_sila_materialu_na_konektor])
difference()
        {  
cube([10.16+2*D03_tloustka_materialu,3+2*D03_tloustka_materialu,15+5.08],true);
translate([0,0,(15+5.08)/2-(5.08+3.3+2)/2])
cube([10.16,3,5.08+3.3+2],true);
            translate([0,15,(15+5.08)/2-(3.3)/2-2])
            rotate ([90,0,0])
            cylinder (h = 30, r=(3.3/2), $fn=100);
            }
}