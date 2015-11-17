$fn=40; // model faces resolution.
//include <../configuration.scad>



module rotor1(prumer_rotoru1,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,sila_materialu,sila_materialu_vule,hloubka_prekryti,hloubka_uchytu,sila_uchytu,vyska_uchytu,tolerance_uchytu)
    {
        difference()
        {
            union ()
                {
   
                cylinder (h = vyska_rotoru1-hloubka_prekryti, r=prumer_rotoru1/2, center = true, $fn=100);

    
                translate([0,0,vyska_rotoru1/2])
                    cylinder (h = hloubka_prekryti, r=(prumer_rotoru1/2) -sila_materialu-sila_materialu_vule, center = true, $fn=100);

//otvory pro lopatky   
                translate([0,0,-(vyska_rotoru1-hloubka_prekryti)/2-(vyska_uchytu+tolerance_uchytu)/2])
  
//otvory pro lopatky                    
    difference ()
        {
         cylinder (h = vyska_uchytu+tolerance_uchytu, r=(prumer_rotoru1/2), center = true, $fn=100);
    
               cylinder (h = vyska_uchytu+2*tolerance_uchytu, r=(prumer_rotoru1/2-hloubka_uchytu+5), center = true, $fn=100);
            
 //dira pro prvni uchyt lopatky           
        translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])  
             cube([hloubka_uchytu,sila_uchytu+tolerance_uchytu,vyska_uchytu+2*tolerance_uchytu],true);
            
 //dira pro druhy uchyt lopatky
            
        rotate(a=[0,0,120]) 
            
            translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])  
                cube([hloubka_uchytu,sila_uchytu+tolerance_uchytu,vyska_uchytu+2*tolerance_uchytu],true);
            
     //dira pro treti uchyt lopatky
            
        rotate(a=[0,0,240]) 
            
            translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])  
                cube([hloubka_uchytu,sila_uchytu+tolerance_uchytu,vyska_uchytu+2*tolerance_uchytu],true);        
        
        }
    
                }

  
   
   
//otvor pro uchyceni prvni lopatky
      translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,hloubka_prekryti/2])
        cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru1-hloubka_prekryti)/2+vyska_matky/2])
        cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100);   
  
//otvor pro uchyceni druhe lopatky
      rotate(a=[0,0,120]) 
        translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,hloubka_prekryti/2])
            cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      rotate(a=[0,0,120]) 
        translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru1-hloubka_prekryti)/2+vyska_matky/2])
            cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100);  

//otvor pro uchyceni treti lopatky
      rotate(a=[0,0,240]) 
        translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,hloubka_prekryti/2])
        cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      rotate(a=[0,0,240]) 
        translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru1-hloubka_prekryti)/2+vyska_matky/2])
            cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100); 
      
}

}




