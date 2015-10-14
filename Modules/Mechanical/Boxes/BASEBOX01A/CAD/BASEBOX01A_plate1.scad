use <ver_1_0/configuration/celicko.scad>
use <ver_1_0/configuration/sloupek.scad>
use <ver_1_0/configuration/lista.scad>
use <ver_1_0/uravena_celicka.scad>


include <ver_1_0/configuration/manufactury_conf.scad>
include <ver_1_0/configuration.scad>



banister_color = "cyan";
slat_color = "red";

/*
// box banisters
color(banister_color)
translate([(-(pocet_der2+2)*vzdalenost_der)/2,0,0])
        rotate(a=[90,0,0])
            sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);
*/

// box slats
color(slat_color)
    translate([0,0,0])
        rotate(a=[0,0,0])
            lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

color(slat_color)
    translate([0,20,0])
        rotate(a=[0,0,0])
            lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);

color(slat_color)
    translate([0,-20,0])
        rotate(a=[0,0,0])
            lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);
 
 color(slat_color)
    translate([0,-40,0])
        rotate(a=[0,0,0])
            lista (vzdalenost_der,pocet_der2,vzdalenost_od_okraje,vzdalenost_od_diry,vzdalenost_1,vzdalenost_2, zapust,vyska_listy,tloustka_celicka,sirka_materialu,vyska_hlavy,prumer_hlavy,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu);