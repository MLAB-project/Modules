$fn=40; // model faces resolution.
include <../configuration.scad>



//Model lopatky



module WINDGAUGE02A_L01()
        
        union()
        {
        
        //prechod lopatka drzak
            difference()
        {
        translate([-L01_hrana_drzaku_a/2,L01_prumer_lopatky/4,0])
            cube([L01_hrana_drzaku_a,(L01_prumer_lopatky/2)+5,L01_hrana_drzaku_b],center=true);
                sphere(d = L01_prumer_lopatky, $fn=100);
        }     
            
            difference()
        {
           //lopatka    
                sphere(d = L01_prumer_lopatky, $fn=100);
            
                sphere(d = L01_prumer_lopatky-2*L01_sila_materialu_lopatky, $fn=100);     
            
            
                translate([0,-L01_prumer_lopatky/2,-L01_prumer_lopatky/2])  
                    cube(size = L01_prumer_lopatky);
        }
        
        
         //uchyt_lopatky - tycka
        translate([-L01_hrana_drzaku_a/2,L01_prumer_lopatky/2+L01_delka_uchytu/2,0])
            cube([L01_hrana_drzaku_a,L01_delka_uchytu,L01_hrana_drzaku_b],center=true);
       
       //uchyt_lopatky - tycka v rotoru
        translate([-L01_hrana_drzaku_a/2,L01_prumer_lopatky/2+L01_delka_uchytu+L01_hloubka_zapusteni/2,0])
            cube([L01_hrana_drzaku_a,L01_hloubka_zapusteni,L01_hrana_drzaku_b],center=true);
        
        //uchyt_lopatky - v rotoru
        translate([-L01_hrana_drzaku_a/2,L01_prumer_lopatky/2+L01_delka_uchytu+L01_hloubka_zapusteni+L01_sila_zapusteni_drzaku/2,0])
            cube([L01_hrana_drzaku_a,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_b+2*L01_hloubka_zapusteni_drzaku],center=true);
        
      }   
       
 //  WINDGAUGE02A_L01(L01_hloubka_zapusteni,L01_hloubka_zapusteni_drzaku,L01_sila_zapusteni_drzaku,L01_hrana_drzaku_a,L01_hrana_drzaku_b,L01_tolerance_drzaku,L01_delka_uchytu,L01_prumer_lopatky,L01_sila_materialu_lopatky);