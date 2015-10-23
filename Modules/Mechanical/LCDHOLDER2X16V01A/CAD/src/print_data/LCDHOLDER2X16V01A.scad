use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>

barva = "cyan";

rotate([90,0,0])
{
    // podstavec drzaku
    //--------------------------------------------------------
    //lista velka 1
    color(barva)
    translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),-vyska/2])
        rotate(a=[0,0,0])
            lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,
                   vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,
                   prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,
                   matice_sila_materialu);


    //CELICKA - drzak LCD
    //--------------------------------------------------------
    //celicko predni

    color(barva)
        translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-   sirka_materialu)-(tloustka_celicka/2)),
            -(vyska-2*zapust-vule_vysky_celicka)/2])
            celicko_predni(vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);
}