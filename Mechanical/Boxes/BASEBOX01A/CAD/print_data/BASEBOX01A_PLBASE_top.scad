use <../configuration/celicko.scad>
use <../configuration/sloupek.scad>
use <../configuration/lista.scad>
use <../configuration/plbase.scad>
use <../uravena_celicka.scad>


include <../configuration/manufactury_conf.scad>
include <../configuration.scad>

plbase(pocet_der2+3,pocet_der1+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);
