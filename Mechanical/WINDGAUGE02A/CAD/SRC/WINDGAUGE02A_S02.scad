$fn=40; // model faces resolution.
include <../configuration.scad>

use <zavity.scad>

module WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka)
    {

difference()
        {
//translate([0,0,-(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)/2-10])
    
metric_thread (diameter=S01_prumer_zavitu-0.3, pitch=1, length=S01_vyska_komponentu_na_lozisko, internal=false, n_starts=6);

//otvory na ložisko
translate([0,0,lozisko_vyska/2])
 cylinder (h = lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
 
 translate([0,0,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+0.2)/2, center = true, $fn=100);


//otvor na šroub 1
translate([-senzor_delka/2,-senzor_sirka/2,vyska_matky/2])
 cylinder (h = vyska_matky+0.01, r=(prumer_orechu+0.2)/2, center = true, $fn=100);
 
 translate([-senzor_delka/2,-senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);
            
//otvor na šroub 2
translate([senzor_delka/2,-senzor_sirka/2,vyska_matky/2])
 cylinder (h = vyska_matky+0.01, r=(prumer_orechu+0.2)/2, center = true, $fn=100);
 
 translate([senzor_delka/2,-senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);            
            
//otvor na šroub 3
translate([senzor_delka/2,senzor_sirka/2,vyska_matky/2])
 cylinder (h = vyska_matky+0.01, r=(prumer_orechu+0.2)/2, center = true, $fn=100);
 
 translate([senzor_delka/2,senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100); 

//otvor na šroub 4
translate([-senzor_delka/2,senzor_sirka/2,vyska_matky/2])
 cylinder (h = vyska_matky+0.01, r=(prumer_orechu+0.2)/2, center = true, $fn=100);
 
 translate([-senzor_delka/2,senzor_sirka/2,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100); 

 }
    }
 



    

    
 WINDGAUGE02A_S02(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu,senzor_delka,senzor_sirka);   
