$fn=40; // model faces resolution.
include <../configuration.scad>

//kryt_rotoru

module WINDGAUGE02A_R03(R03_sila_materialu,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,R01_sila_materialu_pro_prekriti,
R02_sila_mateiralu_pod_lopatkami,S01_sila_materialu)
{
 
    //kopule
    difference()
        {
            sphere(r = (R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu)/2, $fn=100);
            
            sphere(r = (R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*S01_sila_materialu)/2+0.1, $fn=100); 
            
            translate([0,0,-(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu)/2])     
            
                cube(size = [(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu), (R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu), (R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu)], center = true);          
            
        }
             
             
    
             //válcová část krytu        
        difference()
            {
            //zakladni valec
            translate([0,0,-
R02_sila_mateiralu_pod_lopatkami/2])
                cylinder (h = 
R02_sila_mateiralu_pod_lopatkami, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*R03_sila_materialu+2*S01_sila_materialu)/2, center = true, $fn=100);           
 
            //válec pro vykrojení
            translate([0,0,-R02_sila_mateiralu_pod_lopatkami/2])
                cylinder (h = R02_sila_mateiralu_pod_lopatkami+0.01, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni+2*vule_mezi_statorem_rotorem+2*R01_sila_materialu_pro_prekriti+2*S01_sila_materialu)/2+0.01, center = true, $fn=100); 
              
            }
}


WINDGAUGE02A_R03(R03_sila_materialu,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,vule_mezi_statorem_rotorem,R01_sila_materialu_pro_prekriti,R02_sila_mateiralu_pod_lopatkami,S01_sila_materialu);
