use <../src/plbase.scad>
use <../src/sloupek.scad>
use <../src/dno.scad>



include <../src/manufactury_conf.scad>
include <../configuration.scad>



//BOCNICE
//-------------------------------------------------------------

difference () {
translate([0,0,(vyska_bocnice/2)+tloustka_plbase])
dno(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);


    
    
    }

