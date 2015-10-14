use <celicko.scad>
use <sloupek.scad>
use <lista.scad>

include <configuration.scad>
include <manufactury_conf.scad>



module celicko_predni()
{
translate([0,0,0])

celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
}

module celicko_zadni()
{
translate([0,0,0])

celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
}

module celicko_leve()
{
translate([0,0,0])

celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
}

module celicko_prave()
{
translate([0,0,0])

celicko (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
}

//celicko_predni();
