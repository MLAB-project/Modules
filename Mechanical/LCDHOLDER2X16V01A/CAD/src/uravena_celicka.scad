use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>
use <configuration/otvory.scad>

include <configuration.scad>
include <configuration/manufactury_conf.scad>
include <configuration/otvory_conf.scad>

//Slouzi pro vytvoreni vlastnich celicek dle potreby

//Vytvoreni predniho celicka krabicky
//--------------------------------------------------------
module celicko_predni()
{
translate([0,0,0])
        difference() {
            union() {

                celicko (vyska,zapust,vule_vysky_celicka,pocet_der2+2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);
    
                otvor_LCD2_16_sloupky(vyska,zapust,vule_vysky_celicka,pocet_der2+2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);
                }
                
            otvor_LCD2_16_diry(vyska,zapust,vule_vysky_celicka,pocet_der2+2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);    
    
              }
              
}
 

barva_predni = "cyan";


//Zobrazeni vzhledu navrhovanych celicek
color(barva_predni)
translate([0,-50,0]) 
celicko_predni();

