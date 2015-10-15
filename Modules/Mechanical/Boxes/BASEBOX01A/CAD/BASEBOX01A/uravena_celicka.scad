use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>

include <configuration.scad>
include <configuration/manufactury_conf.scad>



module celicko_predni()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
    
translate([20,0,0])
cube(size = [10,10,30], center = true);    
    
              }
}

module celicko_zadni()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
    
translate([20,0,0])    
cube(size = [10,10,30], center = true); 
}
}

module celicko_leve()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
       
translate([20,0,0])    
cube(size = [10,10,30], center = true); 
}
}

module celicko_prave()
{
translate([0,0,0])
difference() {
celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky,vyska_listy);
       
translate([20,0,0])    
cube(size = [10,10,30], center = true); 
}
}
/*
translate([0,-50,0]) 
celicko_predni();

translate([0,50,0])
rotate(a=[0,0,180])
celicko_zadni();

translate([60,0,0])
rotate(a=[0,0,90])
celicko_leve();
*/

translate([-60,0,0])
rotate(a=[90,0,270])
celicko_prave();

