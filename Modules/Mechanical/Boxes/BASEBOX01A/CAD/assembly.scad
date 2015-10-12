use <celicko.scad>
use <sloupek.scad>
use <lista.scad>

include <configuration.scad>

translate([50,0,0])
celicko (vyska,zapust1,vule_vysky_celicka,delka_celicka,tloustka_celicka,vule_tlousky);


translate([0,100,0])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

translate([0,-100,0])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);
