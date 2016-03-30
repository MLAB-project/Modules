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
cylinder (h = D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu+4*D01_material_pred_zavitem)/2, $fn=12);
      
      translate([0,0,-0.01])      
     cylinder (h = 0.01+D01_material_pod_zavitem+D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2, $fn=100);       
      } 
     
     difference()
        {  
    translate([0,0,D04_sila_materialu_na_konektor])       
 screw_thread(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu,4,55,D01_material_pod_zavitem+4,PI/2,2);
     
            
  translate([0,0,D04_sila_materialu_na_konektor+D01_material_pod_zavitem])          
  cylinder (h = 5, r=(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu+10)/2, $fn=100);   
     
            
            cylinder (h = 0.01+D01_material_pod_zavitem+D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2, $fn=100);
}

//materiál držáku konektoru
translate([0,0,D04_sila_materialu_na_konektor/2])
cube([D04_konenektor_x+12,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem),D04_sila_materialu_na_konektor],true);

//materiál pro kryt konektoru
//spodní krychle
translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/4+5,D04_konenektor_z/2+D04_sila_materialu_na_konektor])
cube([D04_konenektor_x+6+2*D03_tloustka_materialu,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2,D04_konenektor_z],true);


//vrchní válec
translate([0,5,D04_sila_materialu_na_konektor+D04_konenektor_z])

rotate ([90,0,0])
difference()
        {   
cylinder (h = (S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2, r=(D04_konenektor_x+6+2*D03_tloustka_materialu)/2, $fn=100); 
            
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/4,(D04_konenektor_x+6+2*D03_tloustka_materialu)/2])
           
cube([(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2,D04_konenektor_x+6+2*D03_tloustka_materialu],true);
}

}

//otvor na konektor
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem-2)/2+D04_konenektor_y/2,-0.01])
cube([D04_konenektor_x,D04_konenektor_y,10],true);

//dotvoření otvoru
//pro nasunutí ve spodní části
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2,-0.01])
cube([D04_konenektor_x,D04_konenektor_y,18],true);

 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/4,D04_sila_materialu_na_konektor+(D04_konenektor_z)/2])
cube([D04_konenektor_x+6,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2+8,D04_konenektor_z],true);

//odstranění vrchního válce
translate([0,5-D03_tloustka_materialu,D04_sila_materialu_na_konektor+D04_konenektor_z])

rotate ([90,0,0])
difference()
        {   
cylinder (h = (S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2, r=(D04_konenektor_x+6)/2, $fn=100); 
            //odečtení půl válce 
translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/4,(D04_konenektor_x+6+2*D03_tloustka_materialu)/2])
           
cube([(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu)/2,D04_konenektor_x+6+2*D03_tloustka_materialu],true);
}


//otvor na senzor v držáku
translate([0,7,-2])
translate([0,0,(15+5.08)/2-(5.08+3.3+2)/2])
cube([10.16,3,25],true);
            


}

translate([0,7,(D04_vyska_drzaku_senzoru)/2])
difference()
        {  
cube([10.16+2*D03_tloustka_materialu,3+2*D03_tloustka_materialu,D04_vyska_drzaku_senzoru],true);

cube([10.16,3,D04_vyska_drzaku_senzoru+0.01],true);
            translate([0,5,D04_vyska_drzaku_senzoru/2-3.08])
            rotate ([90,0,0])
            cylinder (h = 30, r=(3.3/2), $fn=100);
            }
}