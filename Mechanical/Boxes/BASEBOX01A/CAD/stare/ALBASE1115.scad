use <celicko.scad>
use <sloupek.scad>
use <lista.scad>

include <manufactury_conf.scad>

vzdalenost_der = 10.16; //rozteč děr mezi sebou


vyska = 60;  //vyska celeho sloupku
radidus_hrany = 5; //radius zaobleni sloupku


//---------------------------------------------------
//parametry lišty

vzdalenost_od_okraje = 8.88; //vzdalenost stredu upevnovaci diry od kraje desky

//malá list
pocet_der1 = 8; //pocet der desky, ponížené o 3

//velká list
pocet_der2 = 12; //pocet der desky, ponížené o 3




translate([0,0,0])
sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista mala
translate([0,-100,0])
lista (vzdalenost_der,pocet_der1,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

//lista velka
translate([0,-120,0])
lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);