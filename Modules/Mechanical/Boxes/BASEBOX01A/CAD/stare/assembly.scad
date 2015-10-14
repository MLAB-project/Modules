use <celicko.scad>
use <sloupek.scad>
use <lista.scad>

include <configuration.scad>


//ALBASE1115
    

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

barva_sloupku = "cyan";
barva_listy = "red";


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




translate([50,0,0])

celicko (vyska,zapust,vule_vysky_celicka,pocet_der2,vzdalenost_der,vule_delky_celicka,tloustka_celicka,vule_tlousky);



