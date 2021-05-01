use <text/Write.scad>
use <MLAB_logo.scad>
use <sloupek.scad>
use <plbase.scad>
include <manufactury_conf.scad>
include <../configuration.scad>

bocnice(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);

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
        
    //obvod
      difference () {

        minkowski()
        {
            cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje-2*radidus_hrany+2*tloustka_bocnice,vyska_bocnice+tloustka_plbase]);          // base plastics brick
            cylinder(r=radidus_hrany,h=0.01);
        }   

        translate([tloustka_bocnice-radidus_hrany,tloustka_bocnice-radidus_hrany,-0.1])    
            
                cube([(pocet_der1)*vzdalenost_der+2*vzdalenost_od_okraje,(pocet_der2)*vzdalenost_der+2*vzdalenost_od_okraje,vyska_bocnice+tloustka_plbase+0.2]);        
 
  
        
    }     
      
   
    
//SLOUPKY
//------------------------------------------------------------
//sloupek 1

    translate([(-(pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje+prumer_matice/2,-vzdalenost_od_okraje+prumer_matice/2,vyska_bocnice/2-(vyska_matice+2*tloustka_bocnice+0.1)-tloustka_plbase])
        sloupek ();

//sloupek 2

    translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje-prumer_matice/2,-vzdalenost_od_okraje+prumer_matice/2,vyska_bocnice/2-(vyska_matice+2*tloustka_bocnice+0.1)-tloustka_plbase])
        rotate(a=[0,0,90])
            sloupek ();

//sloupek 3

    translate([((pocet_der2)*vzdalenost_der)/2+vzdalenost_od_okraje-prumer_matice/2, (pocet_der1)*vzdalenost_der+vzdalenost_od_okraje-prumer_matice/2,vyska_bocnice/2-(vyska_matice+2*tloustka_bocnice+0.1)-tloustka_plbase])
        rotate(a=[0,0,180])
            sloupek ();

//sloupek 4

    translate([-((pocet_der2)*vzdalenost_der)/2-vzdalenost_od_okraje+prumer_matice/2, (pocet_der1)*vzdalenost_der+vzdalenost_od_okraje-prumer_matice/2,vyska_bocnice/2-(vyska_matice+2*tloustka_bocnice+0.1)-tloustka_plbase])
        rotate(a=[0,0,270])
            sloupek ();
 }

//----------------------------------------------------
//LOGO MLAB 
/*  
translate([(5-(pocet_der2)*vzdalenost_der)/2,0,0])
            translate ([0, -vzdalenost_od_okraje-tloustka_bocnice*1/2,0])  // 
                rotate([0, 90, 270])
                    scale(v = [logo_sirka, logo_vyska, 0.3])
                        MLAB_logo_short();
*/



//plbase odecet na kryt
  translate([0,0,vyska_bocnice/2-tloustka_plbase/2+0.05])
    rotate(a=[0,0,0])
    {
    plbase_vrchni_kryt_pro_odecet(pocet_der1,pocet_der2,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice,0,tloustka_plbase+0.1);
    }


}
}


   

    