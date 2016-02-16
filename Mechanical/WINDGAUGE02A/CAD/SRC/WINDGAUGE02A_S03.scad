$fn=40; // model faces resolution.
include <../configuration.scad>

use <zavity.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;

module WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,vyska_hlavy_sroubu,prumer_hlavy_sroubu,S01_tolerance_zavit,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,S01_sila_materialu,S01_hloubka_zavitu)
    {
union()
  {  
//valec se zavitem
difference()
        {
           
 screw_thread((R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*S01_sila_materialu)-S01_tolerance_zavit,S01_hloubka_zavitu,55,S01_vyska_komponentu_na_lozisko,PI/2,2); 
 
 translate([0,0,S01_sila_materialu+S01_vyska_komponentu_na_lozisko/2])
    cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=((R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*S01_sila_materialu)-S01_tolerance_zavit/2)/2-S01_hloubka_zavitu/2-S01_sila_materialu, center = true, $fn=100); 
            
  //otvor na pruchod hridelky          
  translate([0,0,S01_sila_materialu/2])           
  cylinder (h = S01_sila_materialu+0.01, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+0.2)/2, center = true, $fn=100);          
            }           

//otvory na ložisko
translate([0,0,lozisko_vyska/2+S01_sila_materialu])
   difference()
  {     
 cylinder (h = lozisko_vyska, r=(lozisko_prumer_vnejsi+2*S01_sila_materialu)/2, center = true, $fn=100);     
 cylinder (h = lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
 
 
}
   
  }
}


    

    
 WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,vyska_hlavy_sroubu,prumer_hlavy_sroubu,S01_tolerance_zavit,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,S01_sila_materialu,S01_hloubka_zavitu);   
