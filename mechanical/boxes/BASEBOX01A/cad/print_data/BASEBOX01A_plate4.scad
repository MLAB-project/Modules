use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../configuration/plbase.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>

barva_leve = "green";
barva_prave = "yellow";


//celicko prave
//-----------------------------------------------------------
color(barva_prave)
translate([vyska+10,0,0])
rotate(a=[-90,0,90])

celicko_prave (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
//*/


//celicko leve
//-----------------------------------------------------------
color(barva_leve)
translate([-(vyska+10),0,0])
rotate(a=[-90,0,270])

celicko_leve (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);