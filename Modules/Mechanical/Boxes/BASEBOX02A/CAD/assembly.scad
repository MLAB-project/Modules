use <configuration/sloupek.scad>
use <configuration/plbase.scad>
use <configuration/bocnice.scad>
use <configuration/otvory.scad>
use <configuration/text/Write.scad>
use <upravena_bocnice.scad>

include <configuration/manufactury_conf.scad>
include <configuration.scad>
include <configuration/otvory_conf.scad>


barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";
barva_plbase = "yellow";

//translate([0.5*10.16,-5.08,14])
//    cube([10.16,10.16,10.16]);  


//BOCNICE SE DNEM
//-------------------------------------------------------------
upravena_bocnice();





//PLBASE HORNI
//-------------------------------------------------------------



translate([plbase_tolerance_horni-0.2,+plbase_tolerance_horni-0.2,vyska_bocnice/2-tloustka_plbase/2])
rotate(a=[0,0,0])
    {
        
     
  //plbase_vrchni_kryt(pocet_der1+2,pocet_der2+2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,plbase_tolerance_horni);
  
     plbase_vrchni_kryt_pro_odecet(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,-0.2,tloustka_plbase);    
     }










