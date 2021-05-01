use <../src/spodni_kryt.scad>



include <../src/manufactury_conf.scad>
include <../configuration.scad>


 translate([0,0,tloustka_plbase/2])
rotate(a=[0,0,0])
    {
        
    
spodni_kryt(pocet_der1-1,pocet_der2-1,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,vyska_bocnice,prekryti_der,tloustka_bocnice);
        
     }
