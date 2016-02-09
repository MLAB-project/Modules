$fn=40; // model faces resolution.
include <../configuration.scad>


module WINDGAUGE02A_R02(R02_sila_mateiralu_pod_lopatkami,L01_hloubka_zapusteni_drzaku,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,prumer_pomocne_trubicky,zapusteni_pomocne_trubicky)
    {
        difference()
        {
            
   
                cylinder (h = R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku, r=(R02_vzdalenost_mezi_uchyty_lopatek+2*L01_sila_zapusteni_drzaku+2*L01_hloubka_zapusteni)/2, center = true, $fn=100);

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
   
  cylinder (h = R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku+0.1, r=prumer_osicky/2, center = true, $fn=100);
  
  //otvor pro pomocnou trubicku        
    translate([0,0,-(((R02_sila_mateiralu_pod_lopatkami+L01_hloubka_zapusteni_drzaku)/2)-zapusteni_pomocne_trubicky/2)])  
  cylinder (h = zapusteni_pomocne_trubicky, r=prumer_pomocne_trubicky/2, center = true, $fn=100);
  
}  
}

//WINDGAUGE02A_R02(R02_sila_mateiralu_pod_lopatkami,L01_hloubka_zapusteni_drzaku,R02_vzdalenost_mezi_uchyty_lopatek,L01_sila_zapusteni_drzaku,L01_hloubka_zapusteni,prumer_pomocne_trubicky,zapusteni_pomocne_trubicky);

            
