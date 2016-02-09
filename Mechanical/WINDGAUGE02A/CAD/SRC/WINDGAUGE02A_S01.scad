$fn=40; // model faces resolution.
include <../configuration.scad>

use <zavity.scad>
include <polyScrewThread_r1.scad>

PI=3.141592;

module WINDGAUGE02A_S01(R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,S01_vyska_zuzene_casti,S01_vyska_na_elektroniku,S01_vyska_zavitu_na_nasroubovani_drzaku,S01_vyska_prechodu,vule_mezi_statorem_rotorem,S01_vyska_zavitu_na_nasroubovani_drzaku)
    {
        
//zuzena cas komponentu        
                
 translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko+S01_vyska_zuzene_casti)/2+S01_vyska_prechodu])
        
        difference()
        {
        cylinder (h = S01_vyska_zuzene_casti, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*S01_sila_materialu)/2, center = true, $fn=100); 
 
      
    cylinder (h = S01_vyska_zuzene_casti+0.01, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem)/2, center = true, $fn=100); 
   

       //translate([0,0,(stator3_vyska-stator3_vyska_prekryti)/2])    
           
    
            }   

 difference()
        {
          
translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko+S01_vyska_prechodu)/2]) 
            
 cylinder(h=S01_vyska_prechodu,r1=(S01_prumer_zavitu+2*S01_sila_materialu)/2, r2=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*S01_sila_materialu)/2, center=true); 
          
          
 translate([0,0,(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko+S01_vyska_prechodu)/2]) 
            
 cylinder(h=S01_vyska_prechodu,r1=(S01_prumer_zavitu)/2, r2=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem)/2, center=true);          
          
          
            
 } 


  //spodni cast se zavitem          

 difference()
        {
        cylinder (h = S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko, r=(S01_prumer_zavitu+2*S01_sila_materialu)/2, center = true, $fn=100); 
 
            translate([0,0,-(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)/2])
      // metric_thread (diameter=S01_prumer_zavitu, pitch=1, length=S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko+0.01, internal=true, n_starts=6);     
   
 screw_thread(S01_prumer_zavitu,4,55,S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko+0.01,PI/2,2);          
    
            }   
} 
 



    
WINDGAUGE02A_S01(R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,S01_vyska_zuzene_casti,S01_vyska_na_elektroniku,S01_vyska_zavitu_na_nasroubovani_drzaku,S01_vyska_prechodu,vule_mezi_statorem_rotorem,S01_vyska_zavitu_na_nasroubovani_drzaku);
    
    
