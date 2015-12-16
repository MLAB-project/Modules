use <text/Write.scad>
use <MLAB_logo.scad>
use <sloupek.scad>
include <manufactury_conf.scad>
include <../configuration.scad>



//Bočnice
//------------------------------------------------------------


module bocnice(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice){

difference () {
union()
    {
translate([-((pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje)/2,-vzdalenost_od_okraje,vyska_bocnice/2])
rotate(a=[180,0,90])        
translate([radidus_hrany,radidus_hrany,0])
        translate([-tloustka_bocnice,-tloustka_bocnice,0])
difference () {


minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,vyska_bocnice]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
translate([tloustka_bocnice,tloustka_bocnice,-0.025])    
minkowski()
    {
	cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany,vyska_bocnice+0.05]);          // base plastics brick
        cylinder(r=radidus_hrany,h=0.1);
    }
 }   
    
//SLOUPKY
//------------------------------------------------------------
//sloupek 1

translate([(-(pocet_der2)*vzdalenost_der)/2,0,0])
sloupek (vyska_bocnice,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,
   logo_vyska,logo_sirka);

//sloupek 2

translate([((pocet_der2)*vzdalenost_der)/2,0,0])
rotate(a=[0,0,90])
sloupek (vyska_bocnice,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,
   logo_vyska,logo_sirka);

//sloupek 3

translate([((pocet_der2)*vzdalenost_der)/2, (pocet_der1)*vzdalenost_der,0])
rotate(a=[0,0,180])
sloupek (vyska_bocnice,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,
   logo_vyska,logo_sirka);

//sloupek 4

translate([-((pocet_der2)*vzdalenost_der)/2, (pocet_der1)*vzdalenost_der,0])
rotate(a=[0,0,270])
sloupek (vyska_bocnice,vzdalenost_der,vzdalenost_od_okraje,vzdalenost_od_diry,radidus_hrany,prumer_sroubu,prumer_matice,vyska_matice,posuv_dorazu,matice_sila_materialu,
   logo_vyska,logo_sirka);
        
    

                

}

//----------------------------------------------------
//LOGO MLAB 
        translate([(5-(pocet_der2)*vzdalenost_der)/2,0,0])
            translate ([0, -vzdalenost_od_okraje-tloustka_bocnice*1/2,0])  // 
                rotate([0, 90, 270])
                    scale(v = [logo_sirka, logo_vyska, 0.3])
                        MLAB_logo_short();

}
}




    

