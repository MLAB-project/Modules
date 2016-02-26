use <SRC/WINDGAUGE02A_D01.scad>
use <SRC/WINDGAUGE02A_D02.scad>
use <SRC/WINDGAUGE02A_L01.scad>
use <SRC/WINDGAUGE02A_R01.scad>
use <SRC/WINDGAUGE02A_R02.scad>
use <SRC/WINDGAUGE02A_R03.scad>
use <SRC/WINDGAUGE02A_S01.scad>
use <SRC/WINDGAUGE02A_S02.scad>
use <SRC/WINDGAUGE02A_S03.scad>

include <configuration.scad>

barva_D01 = "yellow";
barva_D02 = "cyan";
barva_L01 = "green";
barva_R01 = "green";
barva_R02 = "yellow";
barva_R03 = "cyan";
barva_S01 = "red";
barva_S02 = "green";
barva_S03 = "yellow";



posunuti_dilu=10; //posunuti dilu od sebe

//WINDGAUGE02A_D01  DRŽÁK
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D01)
    translate([0,0,0])
        
        WINDGAUGE02A_D01();
        
        
//WINDGAUGE02A_D02  DRŽÁK druhy dil
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_D02)
    translate([0,S01_prumer_zavitu/2+D01_material_pred_zavitem+D01_delka_tyce+D02_prumer_obruby/2+D02_sila_materialu+10,D02_vyska_uchytky/2])
            rotate(a=[0,0,90])
            
        WINDGAUGE02A_D02(D02_sila_materialu,D02_vyska_uchytky,D02_prumer_obruby,D02_delka_celeho_uchytu,D02_dotahova_vzdalenost,D02_prumer_uchytneho_sroubu);
        
//WINDGAUGE02A_S01  stator velky dil
//-------------------------------------------------------------
//-------------------------------------------------------------
/*
color(barva_S01)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)/2+D01_material_pod_zavitem])
             
 
WINDGAUGE02A_S01(R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,S01_vyska_zuzene_casti,S01_vyska_na_elektroniku,S01_vyska_zavitu_na_nasroubovani_drzaku,S01_vyska_prechodu,vule_mezi_statorem_rotorem,S01_vyska_zavitu_na_nasroubovani_drzaku);        
*/        
        
//WINDGAUGE02A_S02 
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_S02)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem-2*S01_vyska_komponentu_na_lozisko])
            rotate(a=[0,0,0])
            
          WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka);  

//WINDGAUGE02A_S03 
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_S03)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem-2*S01_vyska_komponentu_na_lozisko])
            rotate(a=[180,0,0])
            
          WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,vyska_hlavy_sroubu,prumer_hlavy_sroubu);                         
        
//WINDGAUGE02A_R01  rotor 1 vrchní díl
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_R01)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu+(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)])
            rotate(a=[180,0,0])
            
        WINDGAUGE02A_R01(R02_sila_mateiralu_pod_lopatkami,L01_hloubka_zapusteni_drzaku,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,prumer_pomocne_trubicky,zapusteni_pomocne_trubicky,vule_mezi_statorem_rotorem,R01_vyska_preryti_statoru,R01_sila_materialu_pro_prekriti,S01_sila_materialu);  
 

//WINDGAUGE02A_R02  rotor 2 spodní díl
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_R02)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu-(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2])
            rotate(a=[0,0,0])
            
       WINDGAUGE02A_R02(R02_sila_mateiralu_pod_lopatkami,L01_hloubka_zapusteni_drzaku,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,prumer_pomocne_trubicky,zapusteni_pomocne_trubicky);
       
       
//WINDGAUGE02A_L01  lopatka 1
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_L01)
    translate([L01_prumer_lopatky/2+L01_delka_uchytu+L01_hloubka_zapusteni/2+(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku)/2,L01_hrana_drzaku_a/2,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu+L01_hrana_drzaku_b/2])
            rotate(a=[0,0,90])
            
      WINDGAUGE02A_L01(L01_hloubka_zapusteni,L01_hloubka_zapusteni_drzaku,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_a,L01_hrana_drzaku_b,L01_tolerance_drzaku,L01_delka_uchytu,L01_prumer_lopatky,L01_sila_materialu_lopatky);
      
      
//WINDGAUGE02A_L01  lopatka 2
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_L01)
rotate(a=[0,0,120])
    translate([L01_prumer_lopatky/2+L01_delka_uchytu+L01_hloubka_zapusteni/2+(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku)/2,L01_hrana_drzaku_a/2,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu+L01_hrana_drzaku_b/2])
            rotate(a=[0,0,90])
            
      WINDGAUGE02A_L01(L01_hloubka_zapusteni,L01_hloubka_zapusteni_drzaku,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_a,L01_hrana_drzaku_b,L01_tolerance_drzaku,L01_delka_uchytu,L01_prumer_lopatky,L01_sila_materialu_lopatky);  
  
//WINDGAUGE02A_L01  lopatka 3
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_L01)
rotate(a=[0,0,240])
    translate([L01_prumer_lopatky/2+L01_delka_uchytu+L01_hloubka_zapusteni/2+(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku)/2,L01_hrana_drzaku_a/2,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu+L01_hrana_drzaku_b/2])
            rotate(a=[0,0,90])
            
      WINDGAUGE02A_L01(L01_hloubka_zapusteni,L01_hloubka_zapusteni_drzaku,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_a,L01_hrana_drzaku_b,L01_tolerance_drzaku,L01_delka_uchytu,L01_prumer_lopatky,L01_sila_materialu_lopatky);    
      
      
//WINDGAUGE02A_R03  kryt
//-------------------------------------------------------------
//-------------------------------------------------------------
color(barva_R03)
    translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)+D01_material_pod_zavitem+S01_vyska_zuzene_casti+S01_vyska_prechodu+(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)])
            rotate(a=[0,0,0])
            
        WINDGAUGE02A_R03(R03_sila_materialu,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,R01_sila_materialu_pro_prekriti,
R02_sila_mateiralu_pod_lopatkami,S01_sila_materialu);       