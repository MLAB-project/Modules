$fn=40; // model faces resolution.
include <../configuration.scad>
include <polyScrewThread_r1.scad>
include <AWSCREEN01A_D03.scad>

module AWSCREEN01A_D04(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel,D04_vyska_na_elektroniku,D04_vyska_zavitu,D04_vyska_zavitu_pro_drzak_elektorniky)

    {
     translate ([0,0,0])
    // screen upper rim
     translate ([0,0,D04_vyska_zavitu+D04_vyska_na_elektroniku])
    difference () {    
        screw_thread((D03_polomer_zavitu-D03_tolerance_zavitu)*2,4,55,D03_vyska_zavitu,PI/2,2);
     
     cylinder (h=0.01+D03_vyska_zavitu,r = D03_polomer_zavitu-4,$fn=100);      
    } 
      
     difference () {
         
    cylinder (h=D04_vyska_zavitu+D04_vyska_na_elektroniku,r = D03_polomer_zavitu + D03_material_za_zavitem,$fn=100);
    translate ([0,0,D04_vyska_zavitu])
     cylinder (h=0.01+D04_vyska_na_elektroniku,r = D03_polomer_zavitu-2,$fn=100);    
     translate ([0,0,-0.1])    
    screw_thread(D03_polomer_zavitu*2,4,55,D04_vyska_zavitu+4,PI/2,2);    
    }   
         
      }     
      
    
 AWSCREEN01A_D04(D03_vyska_zavitu,D03_tolerance_zavitu,D03_material_za_zavitem,D03_polomer_zavitu,D03_polomer_stitu,D03_tloustka_materialu,D03_vyska_stitu,D03_pocet_vyztuh,screen_bevel,D04_vyska_na_elektroniku,D04_vyska_zavitu,D04_vyska_zavitu_pro_drzak_elektorniky);