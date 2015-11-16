$fn=40; // model faces resolution.
//include <../configuration.scad>





module rotor2 (vyska_rotoru2,prumer_rotoru1,vyska_kryti,sila_materialu,stator1_sila,vyska_matky,vzdalenost_rot_stat,lozisko_prumer_vnitrni,lozisko_prekryv,sila_pod_loziskem,delka_hridele,lozisko_vyska,sirka_matky_tol,sirka_matky,hloubka_uchytu,vyska_rotoru1,prumer_sroubu,vyska_matky,prumer_orechu,vzdalenost_rot_stat2,sirka_matky_tol)
{

difference()
{
union ()
{
   
        cylinder (h = vyska_rotoru2, r=prumer_rotoru1/2, center = true, $fn=100);

    
        

//kryci kroužek   
    translate([0,0,-(vyska_rotoru2)/2-(vyska_kryti)/2])
 
    
  difference ()
        {
         cylinder (h = vyska_kryti, r=(prumer_rotoru1/2), center = true, $fn=100);
    
               cylinder (h = vyska_kryti+0.1, r=(prumer_rotoru1/2-sila_materialu), center = true, $fn=100);
            
 
        
        }
        
    
    
//doraz na lozisko   
translate([0,0,-(vyska_rotoru2+stator1_sila+vyska_matky+vzdalenost_rot_stat)/2])
cylinder (h = stator1_sila+vyska_matky+vzdalenost_rot_stat, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv)/2, center = true, $fn=100);  

//hridel
translate([0,0,-(vyska_rotoru2+stator1_sila+vyska_matky+vzdalenost_rot_stat+lozisko_vyska+sila_pod_loziskem+delka_hridele)/2])
cylinder (h = stator1_sila+vyska_matky+vzdalenost_rot_stat+lozisko_vyska+sila_pod_loziskem+delka_hridele, r=(lozisko_prumer_vnitrni/2), center = true, $fn=100);     
    
    
      }
    
//otvor v hřídeli
 translate([0,0,-(stator1_sila+vyska_matky+vzdalenost_rot_stat+lozisko_vyska+sila_pod_loziskem+delka_hridele)/2])
cylinder (h = vyska_rotoru2+stator1_sila+vyska_matky+vzdalenost_rot_stat+lozisko_vyska+sila_pod_loziskem+delka_hridele+0.1, r=(prumer_sroubu/2), center = true, $fn=100); 
      
      
  //otvor pro matku
      translate([0,0,(vyska_rotoru2-vyska_matky)/2])
 cylinder (h = vyska_matky+0.1, r= (sirka_matky+sirka_matky_tol)/2, center = true,$fn=6);  
     

  
   
   
//otvor pro uchyceni prvni lopatky
      translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])
cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru2)/2+vyska_matky/2])
cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100);   
  
//otvor pro uchyceni druhe lopatky
      rotate(a=[0,0,120]) 
      translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])
cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

rotate(a=[0,0,120]) 
translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru2)/2+vyska_matky/2])
cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100);  

//otvor pro uchyceni treti lopatky
      rotate(a=[0,0,240]) 
      translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,0])
cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

rotate(a=[0,0,240]) 
translate([hloubka_uchytu/2+(prumer_rotoru1/2-hloubka_uchytu),0,-(vyska_rotoru2)/2+vyska_matky/2])
cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100); 
      
}
} 

  