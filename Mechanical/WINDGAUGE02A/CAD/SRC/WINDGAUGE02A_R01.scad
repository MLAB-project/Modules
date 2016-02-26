$fn=40; // model faces resolution.
include <../configuration.scad>


module WINDGAUGE02A_R01()
    {
        difference()
        {
            
     
                cylinder (h = R02_sila_mateiralu_pod_lopatkami+2*L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru,r=(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem, $fn=100);
             
            //otvor na osičku    
        cylinder (h = R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku, r=(prumer_osicky+3*S01_sila_materialu)/2+0.3, $fn=100);       
         
    //odstranění výpnlně     
           translate([0,0,R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku])  
            
          cylinder (h = L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01, r=(S01_prumer_vnitrni+2*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem, $fn=100);  
            
                       
            
            
             
          

//otvor pro lopatku 1
            rotate(a=[0,0,0]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku/2)])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);
         
          rotate(a=[0,0,0]) 
               translate([(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem,0,R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku+(L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01)/2])  
                cube([3*R01_sila_materialu_pro_prekriti+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01],true);
    
  
  //otvor pro lopatku 2
            rotate(a=[0,0,120]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku/2)])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);          
         rotate(a=[0,0,120]) 
              translate([(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem,0,R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku+(L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01)/2])  
                cube([3*R01_sila_materialu_pro_prekriti+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01],true);     

  
    //otvor pro lopatku 3
            rotate(a=[0,0,240]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,(R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku/2)])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);          
                
                 rotate(a=[0,0,240]) 
                      translate([(S01_prumer_vnitrni+4*S01_sila_materialu)/2+S01_mezera_mezi_statorem_rotorem,0,R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku+(L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01)/2])  
                cube([3*R01_sila_materialu_pro_prekriti+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+2+R01_vyska_preryti_statoru+0.01],true);
  
  
  
}  
}

WINDGAUGE02A_R01();

            
