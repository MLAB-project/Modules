use <src/sloupek.scad>
use <src/plbase.scad>
use <src/bocnice.scad>
use <src/dno.scad>
use <src/spodni_kryt.scad>
use <src/otvory.scad>
use <src/text/Write.scad>
use <upravena_bocnice.scad>

include <src/manufactury_conf.scad>
include <configuration.scad>
include <src/otvory_conf.scad>


barva_dno_bocnice = "cyan";
barva_spodni_kryt = "green";
barva_plbase_horni = "yellow";

posuv_dilu=0; //pro složeni krabičky zadat 0 pro rozebrání zdat 10

//BOCNICE SE DNEM
//-------------------------------------------------------------


translate([0,0,-2*posuv_dilu])
translate([-((pocet_der2-1)*vzdalenost_der+2*vzdalenost_od_okraje2)/2-tloustka_bocnice,-vzdalenost_od_okraje1-tloustka_bocnice,-(vyska_bocnice/2)-tloustka_plbase])
        rotate(a=[180,0,90])

plbase(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice);


color(barva_dno_bocnice)
    upravena_bocnice();

//PLBASE HORNI
//-------------------------------------------------------------
translate([0,0,5*posuv_dilu])
color(barva_plbase_horni)
translate([0,0,vyska_bocnice/2-tloustka_plbase/2])
    rotate(a=[0,0,0])
        {
  
     plbase_vrchni_kryt_pro_odecet(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,plbase_tolerance_horni,tloustka_plbase);    
     }

//SPODNÍ KRYT
//-------------------------------------------------------------
/*
translate([0,0,-5*posuv_dilu])
color(barva_spodni_kryt)
translate([0,0,-vyska_bocnice/2-2*tloustka_plbase])
    spodni_kryt(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);

*/




translate([0,0,-5*posuv_dilu])
color(barva_spodni_kryt)
translate([0,0,-tloustka_plbase-dno_sila_materialu])
   dno(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje1,vzdalenost_od_okraje2,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);



