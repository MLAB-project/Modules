use <SRC/AWSCREEN01A_D01.scad>
use <SRC/AWSCREEN01A_D02.scad>
use <SRC/AWSCREEN01A_D03.scad>
use <SRC/AWSCREEN01A_D04.scad>
use <SRC/AWSCREEN01A_D05.scad>
use <SRC/AWSCREEN01A_D06.scad>

include <configuration.scad>

barva_D01 = "yellow";
barva_D02 = "cyan";
barva_D03 = "yellow";
barva_D04 = "green";
barva_D05 = "yellow";
barva_D06 = "cyan";




posunuti_dilu=10; //posunuti dilu od sebe

//AWSCREEN01A_D05  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D05)
    translate([0,0,0])
        
        AWSCREEN01A_D05(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);
        
        
//AWSCREEN01A_D06  DRŽÁK druhy dil
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D06)
    translate([0,S01_prumer_zavitu/2+D01_material_pred_zavitem+D01_delka_tyce+D02_prumer_obruby/2+D02_sila_materialu+10,D02_vyska_uchytky/2])
            rotate(a=[0,0,90])
            
        AWSCREEN01A_D06(D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);
        
//AWSCREEN01A_D04  stator velky dil
//-------------------------------------------------------------
//-------------------------------------------------------------

color(barva_D04)
    translate([0,0,D01_material_pod_zavitem+2*posunuti_dilu])
             
 
AWSCREEN01A_D04(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel,D04_vyska_na_elektroniku,D04_vyska_zavitu,D04_vyska_zavitu_pro_drzak_elektorniky);        
        
        
//AWSCREEN01A_D03
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D03)
    translate([0,0,D04_vyska_zavitu+D04_vyska_na_elektroniku+D01_material_pod_zavitem+4*posunuti_dilu])
            
          AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel); 

color(barva_D03)
    translate([0,0,D04_vyska_zavitu+D04_vyska_na_elektroniku+D01_material_pod_zavitem+6*posunuti_dilu+D03_vyska_stitu])
            
          AWSCREEN01A_D03(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel); 
