$fn=40; // model faces resolution.
use <src/UNIBOX04A_D01.scad>
use <src/otvory.scad>

include <configuration.scad>
include <src/otvory_conf.scad>


barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";
barva_plbase = "yellow";

//Předni čeličko
//------------------------------------------------------------

vzdalenost_AL=9; //vzdalenost od hrany čelíčka k vrchní hraně ALbase 9

difference() {
color(barva_sloupku)
translate([0,0,0])
UNIBOX04A_D01();



posun_modulu_der_x=0;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])
IR(sila,rozmer_y-vzdalenost_AL);
    
posun_modulu_der_x1=15;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x1*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])

LCD(2*sila,roztec_der,vzdalenost_AL); 
    
    
 posun_modulu_der_x2=13;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x2*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])

 VYPINAC(2*sila,roztec_der,vzdalenost_AL);
  
    
     }  
     
    
