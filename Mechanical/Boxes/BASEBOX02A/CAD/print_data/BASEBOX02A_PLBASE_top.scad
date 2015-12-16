use <../configuration/plbase.scad>



include <../configuration/manufactury_conf.scad>
include <../configuration.scad>


 translate([-((pocet_der2+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,-((pocet_der1+2)*vzdalenost_der+2*vzdalenost_od_okraje)/2-tloustka_bocnice,0])
rotate(a=[0,0,0])
    {
        
        plbase_bez_der_napis(pocet_der2+3,pocet_der1+3,radidus_hrany,vzdalenost_der,vzdalenost_od_okraje,prumer_sroubu,tloustka_plbase,prekryti_der,box_jmeno,tloustka_bocnice);
        
     }
