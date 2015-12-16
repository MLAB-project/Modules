use <../configuration/plbase.scad>
use <../configuration/sloupek.scad>
use <../configuration/bocnice.scad>



include <../configuration/manufactury_conf.scad>
include <../configuration.scad>



//BOCNICE
//-------------------------------------------------------------
translate([0,0,(vyska_bocnice/2)+tloustka_plbase])
bocnice(pocet_der1+2,pocet_der2+2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);


//PLBASE SPODNI
//-------------------------------------------------------------
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,-vzdalenost_od_okraje-tloustka_bocnice,tloustka_plbase])
rotate(a=[180,0,90])


plbase(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice);