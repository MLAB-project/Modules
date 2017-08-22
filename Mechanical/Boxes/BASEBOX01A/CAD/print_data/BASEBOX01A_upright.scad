use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../configuration/plbase.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>

barva_sloupku = "green";

vzdalenost_mezi_sloupky=5;

//SLOUPKY
//------------------------------------------------------------
//sloupek 1
color(barva_sloupku)
   rotate(a=[90,0,0]) 
        translate([-(2*(3/2*vzdalenost_der)+vzdalenost_od_okraje)-3/2*vzdalenost_mezi_sloupky,0,0])
        translate([0,vzdalenost_od_okraje,0])
            sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,logo_vyska,logo_sirka);
            
//sloupek 2
color(barva_sloupku)
   rotate(a=[90,0,0]) 
        translate([-3/2*vzdalenost_der-vzdalenost_mezi_sloupky/2,0,0])
        translate([0,vzdalenost_od_okraje,0])
            sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,logo_vyska,logo_sirka);

//sloupek 3
color(barva_sloupku)
   rotate(a=[90,0,0]) 
        translate([vzdalenost_od_okraje+vzdalenost_mezi_sloupky/2,0,0])
        translate([0,vzdalenost_od_okraje,0])
            sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,logo_vyska,logo_sirka);
            
//sloupek 4
color(barva_sloupku)
   rotate(a=[90,0,0]) 
        translate([2*vzdalenost_od_okraje+3/2*vzdalenost_mezi_sloupky+3/2*vzdalenost_der,0,0])
        translate([0,vzdalenost_od_okraje,0])
            sloupek (vyska,zapust1,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,logo_vyska,logo_sirka);            
