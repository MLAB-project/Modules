use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>
use <configuration/plbase.scad>
use <uravena_celicka.scad>


include <configuration/manufactury_conf.scad>
include <configuration.scad>



barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";
barva_plbase = "yellow";


//VELKE LISTY - podstavec drzaku
//--------------------------------------------------------
//lista velka 1
color(barva_listy)
translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),-vyska/2])
rotate(a=[0,0,0])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);


//CELICKA - drzak LCD
//--------------------------------------------------------
//celicko predni

color(barva_celicka)
translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tloustka_celicka/2)),-(vyska-2*zapust-vule_vysky_celicka)/2])
celicko_predni (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);



//PLBASE SPODNI
//-------------------------------------------------------------
color(barva_plbase)
//základní plbase bez nožiček
/*
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,-(vyska/2)])
rotate(a=[180,0,90])


plbase(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);
*/

//plbase s nožičkama
//*
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,-((vyska/2))])
rotate(a=[180,0,90])
plbase_s_nozickama(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy);
//*/

//plbase se zápustnými šrouby
/*
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,-(vyska/2)])
rotate(a=[180,0,90])

plbase_zapustene_srouby(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_hlavy,prekryti_der,prumer_hlavy);
*/

