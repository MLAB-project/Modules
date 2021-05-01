$fn=40; // model faces resolution.
include <../configuration.scad>

include <ISLHOLDER01A_D02.scad>


PI=3.141592;

//Držák anemometru

module ISLHOLDER01A_D01()
{
difference()
    {
    union()  
        { 
        //výstuha
            translate([S01_sila_materialu/2,0,0])
        rotate ([0,-90,0])
            linear_extrude (height = S01_sila_materialu, convexity = 10)
                polygon(points=[[D02_vyska_uchytky/2,D01_delka_tyce+S01_prumer_vnitrni/2+D01_material_pred_zavitem+D02_sila_materialu-1],[0, D01_delka_tyce+S01_prumer_vnitrni/2+D01_material_pred_zavitem+D02_sila_materialu-1],[0,S01_prumer_vnitrni/2+D01_material_pred_zavitem],[D02_vyska_uchytky/3,S01_prumer_vnitrni/2+D01_material_pred_zavitem]]);   
  
         rotate ([90,0,0])     
translate([0,15,D01_material_pod_zavitem/2-S01_prumer_vnitrni/2-D01_material_pred_zavitem])
         difference() {   
  cube([D01_sirka_tyce,30,D01_material_pod_zavitem],center=true); 
translate([0,8,0])
cylinder(h=D01_material_pod_zavitem+0.01,r=D02_prumer_uchytneho_sroubu/2,center=true); 
}

        //uchyt na tyc
        translate([0,D01_delka_tyce/2+(S01_prumer_vnitrni-S01_tolerance_zavit)/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
            cube([D01_sirka_tyce,D01_delka_tyce,D01_material_pod_zavitem],center=true); 
  
        //uchyt na tyc ovalna cast
        translate([0,(S01_prumer_vnitrni-S01_tolerance_zavit)/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
            cube([D01_sirka_tyce,D01_material_za_zavitem+D01_material_pred_zavitem,D01_material_pod_zavitem],center=true);
      
        //material kolem uchytu na sloupek
        translate([0,D01_delka_tyce+(S01_prumer_vnitrni-S01_tolerance_zavit)/2+D01_material_pred_zavitem+(D02_sila_materialu+D02_prumer_obruby/2)/2-D02_dotahova_vzdalenost,D01_material_pod_zavitem/2])

        difference()
            {
            cube([D01_sirka_tyce,D02_sila_materialu+D02_prumer_obruby/2,D01_material_pod_zavitem],center=true);
            
            translate([0,D02_prumer_obruby/2-D02_dotahova_vzdalenost-D02_sila_materialu,0])    
                cylinder(h=D02_vyska_uchytky+0.01,r=D02_prumer_obruby/2,center=true);         
            }        
      
        //uchyt na sloupek
        translate([0,D01_delka_tyce+(S01_prumer_vnitrni-S01_tolerance_zavit)/2+D01_material_pred_zavitem+D02_sila_materialu+(D02_prumer_obruby)/2,D02_vyska_uchytky/2])
            rotate(a=[0,0,270])
                ISLHOLDER01A_D02();      

        }

    

    }
}
 
ISLHOLDER01A_D01();
 
