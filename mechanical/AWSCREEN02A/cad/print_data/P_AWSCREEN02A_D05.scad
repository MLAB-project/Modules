$fn=100; // model faces resolution.
include <../configuration.scad>


use <../SRC/polyScrewThread_r1.scad>
use <../SRC/AWSCREEN02A_D05.scad>


PI=3.141592;

AWSCREEN02A_D05(S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,D01_material_pod_zavitem,D01_material_za_zavitem,D01_material_pred_zavitem,D01_delka_tyce,D01_sirka_tyce,D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu,D03_tolerance_zavitu);


    
  
