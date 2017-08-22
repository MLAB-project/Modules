use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>
use <configuration/plbase.scad>
use <uravena_celicka.scad>
use <configuration/otvory.scad>

include <configuration/manufactury_conf.scad>
include <configuration.scad>
include <configuration/otvory_conf.scad>

//Slouzi pro vytvoreni vlastnich celicek dle potreby

//Vytvoreni predniho celicka krabicky
//--------------------------------------------------------
module celicko_predni()
difference() {
            union() {

                celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);
    
                otvor_LCD2_16_sloupky(vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);
                }
                
            otvor_LCD2_16_diry(vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy,vzdalenost_der_x,vzdalenost_der_y,prumer_otvoru,prumer_sloupku,ramecek_x,ramecek_y,ramecek_vyska);    
    
              }




//Vytvoreni zadniho celicka krabicky
//--------------------------------------------------------
module celicko_zadni()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
    
pocet_der_dane_strany=15;
posun_od_kraje=1;    
USBI2C01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy); 
}
}


//Vytvoreni leveho celicka krabicky
//--------------------------------------------------------
module celicko_leve()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
       
pocet_der_dane_strany=11;
posun_od_kraje=1;
    
//RS232SINGLE01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy);
    
I2CDIFF01A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy);
}
}



//Vytvoreni praveho celicka krabicky
//--------------------------------------------------------
module celicko_prave()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);

posun_od_kraje3=0; 
    
MIC338(tloustka_celicka,vyska,zapust,vule_vysky_celicka,posun_od_kraje3,vzdalenost_der);
  
pocet_der_dane_strany=11;
posun_od_kraje=1;    
UNIPOWER02A(tloustka_celicka,pocet_der_dane_strany,posun_od_kraje,vzdalenost_der,vyska_listy);
}
}
barva_predni = "cyan";
barva_zadni = "red";
barva_leve = "green";
barva_prave = "yellow";

//Zobrazeni vzhledu navrhovanych celicek
color(barva_predni)
translate([0,-50,0]) 
celicko_predni();

color(barva_zadni)
translate([0,50,0])
rotate(a=[0,0,180])
celicko_zadni();

color(barva_leve)
translate([-60,0,0])
rotate(a=[0,0,270])
celicko_leve();

color(barva_prave)
translate([60,0,0])
rotate(a=[0,0,90])
celicko_prave();

