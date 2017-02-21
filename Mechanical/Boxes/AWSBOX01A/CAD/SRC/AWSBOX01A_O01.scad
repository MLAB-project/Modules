include <../configuration.scad>


module I2CDIFF01A(){
  
 I2CDIFF01A_sirka_kon=15; //sirka konektoru
 I2CDIFF01A_vyska_kon=14; //vyska konektoru
 I2CDIFF01A_sirka_mod_otvory=4; //kolik modul zabira der
 I2CDIFF01A_vyska_nad_plbase=7; //jak je vzdálen konektor nad plbase    
      
      
   translate([vzdalenost_der*(I2CDIFF01A_sirka_mod_otvory-1)/2,I2CDIFF01A_vyska_nad_plbase+I2CDIFF01A_vyska_kon/2,D02_sila_materialu/2])
   cube(size = [I2CDIFF01A_sirka_kon,I2CDIFF01A_vyska_kon,D02_sila_materialu+0.4], center = true);  
    
}

module RJ12_3x2(){
  
 RJ_12_sirka_kon=30; //sirka konektoru
 RJ_12_vyska_kon=42; //vyska konektoru
 RJ_12_sirka_mod_otvory=5; //kolik modul zabira der
 RJ_12_vyska_nad_plbase=7; //jak je vzdálen konektor nad plbase    
      
      
   translate([vzdalenost_der*(RJ_12_sirka_mod_otvory-1)/2,RJ_12_vyska_nad_plbase+RJ_12_vyska_kon/2,D02_sila_materialu/2])
   cube(size = [RJ_12_sirka_kon,RJ_12_vyska_kon,D02_sila_materialu+0.4], center = true);  
    
}
      

module RJ12_2x2(){
  
 I2CDIFF01A_sirka_kon=13; //sirka konektoru
 I2CDIFF01A_vyska_kon=33; //vyska konektoru
 I2CDIFF01A_sirka_mod_otvory=6; //kolik modul zabira der
 I2CDIFF01A_vyska_nad_plbase=6; //jak je vzdálen konektor nad plbase    
  
//parametry s držáku rj12    
 RJ12_sire_konektoru=15;     
  RJ12_rozestup_mezi_konektory=3.5;  

    
    
   translate([vzdalenost_der/2+(RJ12_rozestup_mezi_konektory+RJ12_sire_konektoru)/2,I2CDIFF01A_vyska_nad_plbase+I2CDIFF01A_vyska_kon/2,D02_sila_materialu/2])
   cube(size = [I2CDIFF01A_sirka_kon,I2CDIFF01A_vyska_kon,D02_sila_materialu+0.4], center = true);  
    
     translate([vzdalenost_der/2+(RJ12_rozestup_mezi_konektory+RJ12_sire_konektoru)*3/2,I2CDIFF01A_vyska_nad_plbase+I2CDIFF01A_vyska_kon/2,D02_sila_materialu/2])
   cube(size = [I2CDIFF01A_sirka_kon,I2CDIFF01A_vyska_kon,D02_sila_materialu+0.4], center = true);
    
}