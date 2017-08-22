use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../configuration/plbase.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>


//plbase s nožičkama
 //   plbase_s_nozickama(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy);
    
    
//plbase s nožičkama - polovicni

    translate([-((pocet_der1+3-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2,-vzdalenost_der/2-3/2*((pocet_der2+3-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2, -1])
       plbase_s_nozickama_polovicni(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy);
    
 /*
 //plbase - polovicni

    translate([-((pocet_der1+3-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2,-vzdalenost_der/2-3/2*((pocet_der2+3-1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany)/2, -1])   
        plbase_polovicni(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,vyska_nozicky,vyska_hlavy,prumer_hlavy);
    



