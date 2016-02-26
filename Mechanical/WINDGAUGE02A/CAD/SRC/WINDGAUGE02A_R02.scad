$fn=40; // model faces resolution.
include <../configuration.scad>

include <polyScrewThread_r1.scad>
PI=3.141592;


module WINDGAUGE02A_R02()
    {
        
          
        
        
        difference()
        {
            
   union()
            {
                cylinder (h = R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2, center = true, $fn=100);
      
      //valec pod zavitem          
    translate([0,0,(L01_hloubka_zapusteni_drzaku+R02_sila_mateiralu_pod_lopatkami)/2])
        cylinder (h = L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b-1, r=(prumer_osicky+3*S01_sila_materialu)/2, $fn=100);
        
                //zavit
        translate([0,0,L01_hloubka_zapusteni_drzaku+L01_hrana_drzaku_b+(L01_hloubka_zapusteni_drzaku+R02_sila_mateiralu_pod_lopatkami)/2-3])  
      screw_thread(prumer_osicky+3*S01_sila_materialu,S01_hloubka_zavitu,55,2*R02_vyska_matky+3,PI/2,2);            
                
                
}
//otvor pro lopatku 1
            rotate(a=[0,0,0]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,((R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2)-L01_hloubka_zapusteni_drzaku/2])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);
    
  
  //otvor pro lopatku 2
            rotate(a=[0,0,120]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,((R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2)-L01_hloubka_zapusteni_drzaku/2])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);          
              

  
    //otvor pro lopatku 3
            rotate(a=[0,0,240]) 
            
           translate([(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2-L01_hloubka_zapusteni-L01_sila_zapusteni_drzaku/2,0,((R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2)-L01_hloubka_zapusteni_drzaku/2])  
                cube([L01_sila_zapusteni_drzaku+L01_tolerance_drzaku,L01_hrana_drzaku_a+L01_tolerance_drzaku,L01_hloubka_zapusteni_drzaku],true);          
      //otvor na hřídelku          
   
  cylinder (h = R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku+0.1+60, r=prumer_osicky/2, center = true, $fn=100);
 /* 
  //otvor pro pomocnou trubicku        
    translate([0,0,-(((R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2)-zapusteni_pomocne_trubicky/2)])  
  cylinder (h = zapusteni_pomocne_trubicky, r=prumer_pomocne_trubicky/2, center = true, $fn=100);
*/  
}  
}

WINDGAUGE02A_R02();

            
