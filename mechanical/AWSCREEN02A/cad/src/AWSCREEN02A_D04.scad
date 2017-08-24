$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>



AWSCREEN02A_D04();







module AWSCREEN02A_D04()

    {
difference()
        {
union()
   {  
       //drzák senzoru
       translate([0,0,(D04_vyska_drzaku_senzoru)/2])
difference()
        {  
cube([10.16+2*D03_tloustka_materialu,3+2*D03_tloustka_materialu,D04_vyska_drzaku_senzoru],true);

cube([10.16,3,D04_vyska_drzaku_senzoru+0.01],true);
            translate([0,5,D04_vyska_drzaku_senzoru/2-3.08])
            rotate ([90,0,0])
            cylinder (h = 30, r=(3.3/2), $fn=100);
            }
    
    difference()
        {   
 translate([0,0,0])
cylinder (h = D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu+4*D01_material_pred_zavitem)/2, $fn=12);
      
      translate([0,0,-0.01])      
     cylinder (h = 0.01+D01_material_pod_zavitem+D04_sila_materialu_na_konektor, r=(S01_prumer_zavitu-2*D01_material_za_zavitem-4*D03_tolerance_zavitu-2*D01_material_za_zavitem)/2, $fn=100);       
      } 
     
     difference()
        {  
    translate([0,0,D04_sila_materialu_na_konektor])       
 screw_thread(S01_prumer_zavitu-2*D03_tolerance_zavitu,4,55,D04_sila_zavitu_stojanku+D03_vyska_zavitu+4,PI/2,2);
     
            //začištění závitu aby byl celý           
  translate([0,0,D04_sila_materialu_na_konektor+D04_sila_zavitu_stojanku+D03_vyska_zavitu])          
  cylinder (h = 5, r=(S01_prumer_zavitu)/2, $fn=100);   
     
           //vnitřní otvor v závitu 
            cylinder (h = 0.01+D04_sila_materialu_na_konektor+D04_sila_zavitu_stojanku+D03_vyska_zavitu, r=(S01_prumer_zavitu-2*D01_material_za_zavitem-2*D03_tolerance_zavitu)/2, $fn=100);
}

//materiál držáku konektoru
translate([0,0,D04_sila_materialu_na_konektor/2])
cube([D04_konenektor_x+12,(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem),D04_sila_materialu_na_konektor],true);

//materiál pro kryt konektoru
//spodní krychle
translate([0,0,D04_konenektor_z/2+D04_sila_materialu_na_konektor])
cube([D04_konenektor_x+6+2*D03_tloustka_materialu,D04_konenektor_y,D04_konenektor_z],true);


//vrchní válec
translate([0,D04_konenektor_y/2,D04_sila_materialu_na_konektor+D04_konenektor_z])

rotate ([90,0,0])
difference()
        {   
cylinder (h = D04_konenektor_y, r=(D04_konenektor_x+6+2*D03_tloustka_materialu)/2, $fn=100); 
            
 translate([0,-(D04_konenektor_x+6+2*D03_tloustka_materialu)/4,D04_konenektor_y/2])
           
cube([(D04_konenektor_x+6+2*D03_tloustka_materialu)+0.01,(D04_konenektor_x+6+2*D03_tloustka_materialu)/2+0.01,D04_konenektor_y+0.01],true);
}
}

//otvor na konektor
 translate([0,0,0])
cube([D04_konenektor_x,D04_konenektor_y,2*D04_sila_materialu_na_konektor+0.01],true);

//dotvoření otvoru
//pro nasunutí ve spodní části
 translate([0,-(S01_prumer_zavitu)/4-4*D03_material_za_zavitem,0])
cube([D04_konenektor_x,(S01_prumer_zavitu)/2,(D04_sila_materialu_na_konektor+2*D03_material_za_zavitem)*2+0.01],true);

//odstranění závitu pro vsunutí konektoru
 translate([0,-(S01_prumer_zavitu-D01_material_za_zavitem-2*D03_tolerance_zavitu-D01_material_za_zavitem)/2,D04_sila_materialu_na_konektor+(D04_sila_zavitu_stojanku+D03_vyska_zavitu+4)/2])
cube([D04_konenektor_x+6,4+D01_material_za_zavitem,(D04_sila_zavitu_stojanku+D03_vyska_zavitu+4)],true);


 translate([0,0,D04_sila_materialu_na_konektor+(D04_konenektor_z)/2])
//odstranění spodního kvádru v oblasti krytu konektoru
cube([D04_konenektor_x+6,D04_konenektor_y+0.01,D04_konenektor_z+0.04],true);

//odstranění vrchního válce
translate([0,D04_konenektor_y/2,D04_sila_materialu_na_konektor+D04_konenektor_z])

rotate ([90,0,0])
difference()
        {   
cylinder (h = D04_konenektor_y+0.01, r=(D04_konenektor_x+6)/2, $fn=100); 
            
 translate([0,-(D04_konenektor_x+6)/4,D04_konenektor_y/2])
           
cube([(D04_konenektor_x+6)+0.01,(D04_konenektor_x+6)/2+0.01,D04_konenektor_y+0.02],true);
}



//otvor na senzor v držáku
translate([0,7,-2])
translate([0,0,(15+5.08)/2-(5.08+3.3+2)/2])
cube([10.16,3,25],true);
            


}


}

