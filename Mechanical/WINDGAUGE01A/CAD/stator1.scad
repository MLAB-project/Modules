$fn=40; // model faces resolution.

prumer_rotoru1=50;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
vyska_matky=3;
prumer_orechu=10;
sila_materialu=3;
sila_materialu_vule=0.2;
hloubka_prekryti=2;

//lozisko
lozisko_prumer_vnitrni=5;
lozisko_prumer_vnejsi=16;
lozisko_vyska=5;
lozisko_prekryv=1.5;

//nastevní rotoru2
vyska_kryti=5;

//lopatka
hloubka_uchytu=20;
sila_uchytu=12;
vyska_uchytu=10;
tolerance_uchytu=0.1;

difference()
{
union ()
{
   
        cylinder (h = vyska_rotoru2, r=prumer_rotoru1/2, center = true, $fn=100);

    
        

//kryci kroužek   
    translate([0,0,-(vyska_rotoru2)/2-(vyska_kryti)/2])
    komponent2();
    
      }

//otvory pro uchyceni krytky rotoru
      translate([0,0,hloubka_prekryti/2])
cylinder (h = vyska_rotoru1+0.1, r=prumer_sroubu/2, center = true, $fn=100);

translate([0,0,-(vyska_rotoru1-hloubka_prekryti)/2+vyska_matky/2])
cylinder (h = vyska_matky+0.1, r=prumer_orechu/2, center = true, $fn=100);   
   
   
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






module komponent2()
    {
  difference ()
        {
         cylinder (h = vyska_kryti, r=(prumer_rotoru1/2), center = true, $fn=100);
    
               cylinder (h = vyska_kryti+0.1, r=(prumer_rotoru1/2-sila_materialu), center = true, $fn=100);
            
 
        
        }
        
    }    