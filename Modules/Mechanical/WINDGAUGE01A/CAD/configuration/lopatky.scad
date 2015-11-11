$fn=40; // model faces resolution.
//include <../configuration.scad>




module lopatka(hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu,prumer_lopatky,sila_materialu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky,prumer_rotoru1,prumer_sroubu)
    {
        
        union()
        {
        
        //prechod lopatka drzak
        difference()
        {
        translate([-hrana_uchytu_lopatky/2,prumer_lopatky/4,0])
        cube([hrana_uchytu_lopatky,(prumer_lopatky/2)+5,hrana_uchytu_lopatky],center=true);
            sphere(d = prumer_lopatky, $fn=100);
        }
        
        difference()
        {
            
      //lopatka    
      sphere(d = prumer_lopatky, $fn=100);
            
        sphere(d = prumer_lopatky-2*sila_materialu_lopatky, $fn=100);     
            
          translate([0,-prumer_lopatky/2,-prumer_lopatky/2])  
            cube(size = prumer_lopatky);
        }
        
        
       //uchyt_lopatky - tycka
        translate([-hrana_uchytu_lopatky/2,prumer_lopatky/2+delka_uchytu_lopatky/2,0])
        cube([hrana_uchytu_lopatky,delka_uchytu_lopatky,hrana_uchytu_lopatky],center=true);
        
        
        
        //uchyt lopatky cast v rotoru
        translate([-sila_uchytu/2,prumer_lopatky/2+delka_uchytu_lopatky+hloubka_uchytu/2,0]) 
         difference()
         {
             cube([sila_uchytu,hloubka_uchytu,vyska_uchytu],center=true);
           
             //otvor pro sroub
           translate([0,0,0])   
           cylinder(h=vyska_uchytu+1, r=prumer_sroubu, center=true, $fn=100);  
         
         //zaobleni    
        translate([0,+prumer_rotoru1/2-hloubka_uchytu/2,0]) 
        difference()
         {
       cylinder(h=vyska_uchytu+1, r=prumer_rotoru1/2+2, center=true, $fn=100);       
             
       cylinder(h=vyska_uchytu+2, r=prumer_rotoru1/2, center=true, $fn=100); 
        
      
         }
         }
         
         //vyrovnávací úsek mezi úchytem v rotoru a úchytem loplatky (tyčkou)
            
translate([0,prumer_lopatky/2+delka_uchytu_lopatky+5/2,0])
         
       difference()
         {
             translate([-hrana_uchytu_lopatky/2,0,0])
             cube([hrana_uchytu_lopatky,10,hrana_uchytu_lopatky],center=true);
             
        translate([-sila_uchytu,+prumer_rotoru1/2-5/2,0]) 
            
       cylinder(h=vyska_uchytu+1, r=prumer_rotoru1/2, center=true, $fn=100);   
         
             
            
         
         } 
        
        
      
    
                }
                  }