$fn=40; // model faces resolution.
include <../configuration.scad>

include <AWSCREEN02A_D06.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;



module AWSCREEN02A_D05(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu,D03_tolerance_zavitu)
    {

difference()
        {

 union()  
   {
    
      
       


      
difference()
        {
            union()  
   {
//spodní valec
translate([0,0,D04_sila_zavitu_stojanku/2])
cylinder (h = D04_sila_zavitu_stojanku, r=(S01_prumer_zavitu+D01_material_pred_zavitem*2)/2, center = true, $fn=100);
            




//uchyt na tyc
       translate([0,D01_delka_tyce/2+S01_prumer_zavitu/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
 cube([D01_sirka_tyce,D01_delka_tyce,D01_material_pod_zavitem],center=true);      
//uchyt na tyc ovalna cast
translate([0,S01_prumer_zavitu/2+D01_material_pred_zavitem,D01_material_pod_zavitem/2])
 cube([D01_sirka_tyce,D01_material_za_zavitem+D01_material_pred_zavitem,D01_material_pod_zavitem],center=true);

 }
 
              translate([0,0,-4])       
 screw_thread(S01_prumer_zavitu,4,55,D04_sila_zavitu_stojanku+8,PI/2,2);
 
 }


       
       
//material kolem uchytu na sloupek
  translate([0,D01_delka_tyce+S01_prumer_zavitu/2+D01_material_pred_zavitem+(D02_sila_materialu+D02_prumer_obruby/2)/2-D02_dotahova_vzdalenost,D01_material_pod_zavitem/2])
difference()
        {
       cube([D01_sirka_tyce,D02_sila_materialu+D02_prumer_obruby/2,D01_material_pod_zavitem],center=true);
       translate([0,D02_prumer_obruby/2-D02_dotahova_vzdalenost-D02_sila_materialu,0])    
        cylinder(h=D02_vyska_uchytky+0.01,r=D02_prumer_obruby/2,center=true);         
            
}        
            


//uchyt na sloupek
       
       translate([0,D01_delka_tyce+S01_prumer_zavitu/2+D01_material_pred_zavitem+1+(D02_prumer_obruby)/2,D02_vyska_uchytky/2])
        rotate(a=[0,0,270])
            AWSCREEN02A_D06_2();      

}

//otvor válcový
translate([0,0,D01_material_pod_zavitem-1+S01_vyska_komponentu_na_lozisko/2])
cylinder (h = S01_vyska_komponentu_na_lozisko+2+0.02, r=(S01_prumer_zavitu-2*D03_tolerance_zavitu-2*D01_material_za_zavitem)/2, center = true, $fn=100);

//odecet vrchního závitu aby byl rovný
translate([0,0,D01_material_pod_zavitem+S01_vyska_komponentu_na_lozisko])       

cylinder (h = S01_vyska_komponentu_na_lozisko+0.02, r=(S01_prumer_zavitu-2*D03_tolerance_zavitu)/2, $fn=100);
 

// cube([200,200,200]);

}
    }
 
AWSCREEN02A_D05(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu,D03_tolerance_zavitu);


    
  
