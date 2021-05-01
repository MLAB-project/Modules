use <./src/AWSCREEN01A_D02.scad>
use <./src/AWSCREEN01A_D03.scad>
use <./src/AWSCREEN01A_D04.scad>
use <./src/AWSCREEN01A_D05.scad>
use <./src/AWSCREEN01A_D06.scad>

include <configuration.scad>


barva_D02 = "cyan";
barva_D03 = "yellow";
barva_D04 = "green";
barva_D05 = "yellow";
barva_D06 = "cyan";




posunuti_dilu=0; //posunuti dilu od sebe
difference()
        {
union()
        {
//AWSCREEN01A_D05  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------
//color(barva_D05)
    //translate([0,0,0])
        
       // AWSCREEN01A_D05(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu,D03_tolerance_zavitu);
        
        
//AWSCREEN01A_D06  DRŽÁK druhy dil
//-------------------------------------------------------------
//-------------------------------------------------------------
//color(barva_D06)
   // translate([0,S01_prumer_zavitu/2+D01_material_pred_zavitem+D01_delka_tyce+D02_prumer_obruby/2+D02_sila_materialu+10,D02_vyska_uchytky/2])
        //    rotate(a=[0,0,90])
            
       // AWSCREEN01A_D06(D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);
        
//AWSCREEN01A_D04 uchyt na senzor
//-------------------------------------------------------------
//-------------------------------------------------------------
 //color(barva_D04)
    //translate([0,0,-D04_sila_materialu_na_konektor-2*posunuti_dilu])
            
         // AWSCREEN01A_D04();        
        
//AWSCREEN01A_D03 klasicky dil
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D03)
    translate([0,0,D01_material_pod_zavitem+4*posunuti_dilu])
            
          AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel); 
          
//color(barva_D03)
    //translate([0,0,D01_material_pod_zavitem+D03_vyska_stitu+5*posunuti_dilu])
            
          //AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel);

          
 //AWSCREEN01A_D02 zakoncovaci dil
//-------------------------------------------------------------
//-------------------------------------------------------------
//color(barva_D02)
    //translate([0,0,D01_material_pod_zavitem+2*D03_vyska_stitu+6*posunuti_dilu])
            
         // AWSCREEN01A_D02(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel);
          
 }
//prurez
 translate([-D03_polomer_stitu,-D03_polomer_stitu,0])
    cube([D03_polomer_stitu*2,D03_polomer_stitu,3*D03_polomer_stitu],false);
 }
