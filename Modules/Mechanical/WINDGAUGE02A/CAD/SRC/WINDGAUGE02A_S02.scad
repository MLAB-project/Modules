$fn=40; // model faces resolution.
include <../configuration.scad>


include <polyScrewThread_r1.scad>

PI=3.141592;

module WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka,S01_tolerance_zavit,sirka_matky,magnet_vyska)
    {
union()
  {  
//valec se zavitem
difference()
        {
           
 screw_thread(S01_prumer_zavitu-S01_tolerance_zavit,S01_hloubka_zavitu,55,S01_vyska_komponentu_na_lozisko,PI/2,2); 
 
 translate([0,0,S01_sila_materialu+S01_vyska_komponentu_na_lozisko/2])
    cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=((S01_prumer_zavitu-S01_sila_materialu)-S01_tolerance_zavit)/2-S01_hloubka_zavitu/2, center = true, $fn=100); 
            
  //otvor na pruchod hridelky          
  translate([0,0,S01_sila_materialu/2])           
  cylinder (h = S01_sila_materialu+0.01, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+0.2)/2, center = true, $fn=100);          
  
  //otvor na šroub 1
 translate([-senzor_delka/2,-senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);
            
//otvor na šroub 2 
 translate([senzor_delka/2,-senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);            
            
//otvor na šroub 3
 translate([senzor_delka/2,senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100); 

//otvor na šroub 4
 translate([-senzor_delka/2,senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);           
            
            }           

//otvory na ložisko
translate([0,0,lozisko_vyska/2+S01_sila_materialu])
   difference()
  {  
   
 cylinder (h = lozisko_vyska, r=(lozisko_prumer_vnejsi+2*S01_sila_materialu)/2, center = true, $fn=100);     
 cylinder (h = lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
 
 
}

 difference()
  { 
      union()
      { 
//uchyty na modul
//sloupek 1
translate([-senzor_delka/2,-senzor_sirka/2,0]) 
SLOUPEK();


translate([senzor_delka/2,-senzor_sirka/2,0])  
SLOUPEK();

translate([senzor_delka/2,senzor_sirka/2,0])  
SLOUPEK();

translate([-senzor_delka/2,senzor_sirka/2,0])  
SLOUPEK();
    }
 translate([0,0,S01_sila_materialu])    
  cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, $fn=100);  
    
}







 }
  }  
 

//sloupek na senzor
module SLOUPEK()
{    
translate([0,0,S01_sila_materialu]) 
difference () {
             
    cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky, r= sirka_matky/2+S01_sila_materialu, $fn=20);
       

                   

       translate([0,0,lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky-vyska_matky]) 
            cylinder (h = vyska_matky+0.01, r= (sirka_matky+0.2)/2, $fn=6);
    
    
    translate([0,0,-0.01]) 
            cylinder (h = lozisko_vyska+2*S01_sila_materialu+2*S01_sila_materialu+vyska_hlavy_sroubu+magnet_vyska+vyska_matky+0.01, r= (prumer_sroubu+0.2)/2, $fn=10);
        } 
  } 
  
WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka,S01_tolerance_zavit,sirka_matky,magnet_vyska);   
