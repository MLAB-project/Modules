use <src/UNIBOX03A_D01.scad>
use <src/otvory.scad>

include <configuration.scad>
include <src/otvory_conf.scad>


barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";
barva_plbase = "yellow";

//Předni čeličko
//------------------------------------------------------------

vzdalenost_AL=4; //vzdalenost od hrany čelíčka k vrchní hraně ALbase

difference() {
color(barva_sloupku)
translate([0,0,0])
UNIBOX03A_D01();



posun_modulu_der_x=11;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])
I2CDIFF01A(2*sila,roztec_der);
    
posun_modulu_der_x1=6;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x1*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])
RJ12V01A(2*sila,roztec_der); 
 
    
    
 posun_modulu_der_x2=0;
rotate(a=[-90,0,0])
translate([posun_modulu_der_x2*roztec_der-roztec_der*(pocet_der_osa_x-1)/2,0,-rozmer_y/2+vzdalenost_AL])   
 C1(2*sila,roztec_der);   
    
     }  