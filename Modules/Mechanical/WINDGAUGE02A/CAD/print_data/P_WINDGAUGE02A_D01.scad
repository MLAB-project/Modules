$fn=100; // model faces resolution.
include <../configuration.scad>


use <../SRC/polyScrewThread_r1.scad>
use <../SRC/WINDGAUGE02A_D02.scad>


PI=3.141592;



module WINDGAUGE02A_D01(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu)
    {

difference()
        {

 union()  
   { 
       //zavit
translate([0,0,D01_material_pod_zavitem])       
 screw_thread(S01_prumer_zavitu-0.5,4,55,S01_vyska_komponentu_na_lozisko,PI/2,2);            

//spodní valec
translate([0,0,D01_material_pod_zavitem/2])
cylinder (h = D01_material_pod_zavitem, r=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2, center = true, $fn=100);

//uchyt na tyc
       translate([0,D01_delka_tyce/2+S01_prumer_zavitu/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
 cube([D01_sirka_tyce,D01_delka_tyce,D01_material_pod_zavitem],center=true);      
//uchyt na tyc ovalna cast
translate([0,S01_prumer_zavitu/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
 cube([D01_sirka_tyce,D01_material_za_zavitem+D01_material_pred_zavitem,D01_material_pod_zavitem],center=true);
       
       
//material kolem uchytu na sloupek
  translate([0,D01_delka_tyce+S01_prumer_zavitu/2+D01_material_pred_zavitem+(D02_sila_materialu+D02_prumer_obruby/2)/2-D02_dotahova_vzdalenost,D01_material_pod_zavitem/2])
difference()
        {
       cube([D01_sirka_tyce,D02_sila_materialu+D02_prumer_obruby/2,D01_material_pod_zavitem],center=true);
       translate([0,D02_prumer_obruby/2-D02_dotahova_vzdalenost-D02_sila_materialu,0])    
        cylinder(h=D02_vyska_uchytky+0.01,r=D02_prumer_obruby/2,center=true);         
            
}        
            


//uchyt na sloupek
       
       translate([0,D01_delka_tyce+S01_prumer_zavitu/2+D01_material_pred_zavitem+D02_sila_materialu+(D02_prumer_obruby)/2,D02_vyska_uchytky/2])
        rotate(a=[0,0,270])
 WINDGAUGE02A_D02(D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);      

}

//otvor
translate([0,0,(D01_material_pod_zavitem+S01_vyska_komponentu_na_lozisko)/2])
cylinder (h = D01_material_pod_zavitem+S01_vyska_komponentu_na_lozisko+0.02, r=(S01_prumer_zavitu-2*D01_material_za_zavitem)/2, center = true, $fn=100);

 }
    }
 
WINDGAUGE02A_D01(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);


    
  
