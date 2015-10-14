use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>
use <uravena_celicka.scad>


include <configuration/manufactury_conf.scad>
include <configuration.scad>



barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";

//sloupky
//------------------------------------------------------------
//sloupek 1
color(barva_sloupku)
translate([(-(pocet_der2+2)*vzdalenost_der)/2,0,0])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//sloupek 2
color(barva_sloupku)
translate([((pocet_der2+2)*vzdalenost_der)/2,0,0])
rotate(a=[0,0,90])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//sloupek 3
color(barva_sloupku)
translate([((pocet_der2+2)*vzdalenost_der)/2, (pocet_der1+2)*vzdalenost_der,0])
rotate(a=[0,0,180])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//sloupek 4
color(barva_sloupku)
translate([-((pocet_der2+2)*vzdalenost_der)/2, (pocet_der1+2)*vzdalenost_der,0])
rotate(a=[0,0,270])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);
    


//listy velke
//--------------------------------------------------------
//lista velka 1
color(barva_listy)
translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),-vyska/2])
rotate(a=[0,0,0])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista velka 2
color(barva_listy)
translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),vyska/2])
rotate(a=[180,0,180])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista velka 3
color(barva_listy)
translate([0,((pocet_der1+2)*vzdalenost_der)+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),vyska/2])
rotate(a=[180,0,0])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista velka 4
color(barva_listy)
translate([0,((pocet_der1+2)*vzdalenost_der)+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),-vyska/2])
rotate(a=[0,0,180])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);




//listy male
//---------------------------------------------------------
//lista mala 1
color(barva_listy)
translate([((pocet_der2+2)*vzdalenost_der)/2+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),((pocet_der1+2)*vzdalenost_der)/2,-vyska/2])
rotate(a=[0,0,90])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista mala 2
color(barva_listy)
translate([((pocet_der2+2)*vzdalenost_der)/2+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry),((pocet_der1+2)*vzdalenost_der)/2,vyska/2])
rotate(a=[0,180,90])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista mala 3
color(barva_listy)
translate([-(((pocet_der2+2)*vzdalenost_der)/2+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)),((pocet_der1+2)*vzdalenost_der)/2,vyska/2])
rotate(a=[0,180,270])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista mala 4
color(barva_listy)
translate([-(((pocet_der2+2)*vzdalenost_der)/2+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)),((pocet_der1+2)*vzdalenost_der)/2,-vyska/2])
rotate(a=[0,0,270])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//celicka
//--------------------------------------------------------
//celicko predni

color(barva_celicka)
translate([0,-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tloustka_celicka/2)),-(vyska-2*zapust-vule_vysky_celicka+2*vyska_listy)/2])
celicko_predni (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);

//celicko zadni
color(barva_celicka)
translate([0,((pocet_der1+2)*vzdalenost_der)+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)+((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tloustka_celicka/2)),-(vyska-2*zapust-vule_vysky_celicka+2*vyska_listy)/2])
rotate(a=[0,0,180])
celicko_zadni (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);

//celicko prave
color(barva_celicka)
translate([((pocet_der2+2)*vzdalenost_der)/2+(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)+((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tloustka_celicka/2)),(pocet_der1+2)*vzdalenost_der/2,-(vyska-2*zapust-vule_vysky_celicka+2*vyska_listy)/2])
rotate(a=[0,0,90])
celicko_prave (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);

//celicko leve
color(barva_celicka)
translate([-((pocet_der2+2)*vzdalenost_der)/2-(((vzdalenost_od_diry+vzdalenost_od_okraje)/2)-vzdalenost_od_diry)-((((vzdalenost_od_okraje+vzdalenost_od_diry)/2)-sirka_materialu)-(tloustka_celicka/2)),(pocet_der1+2)*vzdalenost_der/2,-(vyska-2*zapust-vule_vysky_celicka+2*vyska_listy)/2])
rotate(a=[0,0,270])
celicko_leve (vyska,zapust,vule_vysky_celicka,pocet_der1,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);

