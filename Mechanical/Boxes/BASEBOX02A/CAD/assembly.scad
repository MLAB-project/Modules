use <configuration/celicko.scad>
use <configuration/sloupek.scad>
use <configuration/lista.scad>
use <configuration/plbase.scad>
use <configuration/bocnice.scad>
use <uravena_celicka.scad>
use <configuration/otvory.scad>
use <configuration/text/Write.scad>


include <configuration/manufactury_conf.scad>
include <configuration.scad>
include <configuration/otvory_conf.scad>


barva_sloupku = "cyan";
barva_listy = "red";
barva_celicka = "green";
barva_plbase = "yellow";


    


//BOCNICE
//-------------------------------------------------------------
bocnice(pocet_der1+2,pocet_der2+2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);


//PLBASE SPODNI
//-------------------------------------------------------------
color(barva_plbase)
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,-vzdalenost_od_okraje-tloustka_bocnice,-(vyska_bocnice/2)])
rotate(a=[180,0,90])


plbase(pocet_der1+3,pocet_der2+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,tloustka_bocnice);


//PLBASE HORNI
//-------------------------------------------------------------

//základní plbase bez nožiček s nadpisem

translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,-vzdalenost_od_okraje-tloustka_bocnice,5*vyska_bocnice/2])
rotate(a=[0,0,0])
    {
        
        plbase_bez_der_napis(pocet_der2+3,pocet_der1+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,box_jmeno);
        
     }










/*


//základní plbase bez nožiček

translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,2* vyska])
rotate(a=[0,0,0])
    {
        
        plbase(pocet_der2+3,pocet_der1+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der);
translate([ 0, 0, 0]) 
                    rotate([0,0,0])
                        write(box_jmeno,h=5,t=2, space= 1.1, font = "Letters.dxf",center=true);

        
     }
//*/
//plbase se zapuštěním šroubů
/*
translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,(vyska/2)])
rotate(a=[0,0,0])

plbase_zapustene_srouby(pocet_der2+3,pocet_der1+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_hlavy,prekryti_der,prumer_hlavy);
*/



