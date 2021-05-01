use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../configuration/plbase.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>

barva_predni = "cyan";
barva_zadni = "red";


//celicko predni
//--------------------------------------------------------------
translate([0,-(10+vyska),0])
color(barva_predni)
rotate(a=[-90,0,0])

celicko_predni (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);

//celicko zadni
//--------------------------------------------------------------
translate([0,(10+vyska),0])
color(barva_zadni)
rotate(a=[-90,0,180])

celicko_zadni (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
