$fn=40; // model faces resolution.

prumer_rotoru1=50;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
vyska_matky=3.5;
sirka_matky=6.6;
sirka_matky_tol=0.175;

nut_size = 6.6;
prumer_orechu=10;
sila_materialu=3;
sila_materialu_vule=0.2;
hloubka_prekryti=2;

//lozisko
lozisko_prumer_vnitrni=5;
lozisko_prumer_vnejsi=16;
lozisko_prekryv=1.5;
lozisko_vyska=5;

//nastevní rotoru2

vzdalenost_rot_stat=2; //vzdálenost mezi statorem a rotorem
vzdalenost_rot_stat2=1;//vzdálenost mezi statorem a rotorem z boku

//lopatka
hloubka_uchytu=20;
sila_uchytu=12;
vyska_uchytu=10;
tolerance_uchytu=0.1;

//stator1
stator1_sila=2;

//stator2
sila_pod_loziskem=1;

//rotor2
delka_hridele=5; //delka hridele koukající ve statoru

//stator3
stator3_sila_steny=2;
stator3_vzdalenost_od_steny=1; //definuje vzdalenost hlavy sroubu od steny statrou 4
stator3_vyska=60;
stator3_vyska_prekryti=5;

//rotor2
vyska_kryti=stator1_sila+vyska_matky+vzdalenost_rot_stat+stator3_vyska_prekryti-vzdalenost_rot_stat2; //udává výšku krycího prstence

difference()
{
union ()
{
   
        cylinder (h = vyska_rotoru2, r=prumer_rotoru1/2, center = true, $fn=100);

    
        

//kryci kroužek   
    translate([0,0,-(vyska_rotoru2)/2-(vyska_kryti)/2])
    komponent2();
    
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
 

module komponent2()
    {
  difference ()
        {
         cylinder (h = vyska_kryti, r=(prumer_rotoru1/2), center = true, $fn=100);
    
               cylinder (h = vyska_kryti+0.1, r=(prumer_rotoru1/2-sila_materialu), center = true, $fn=100);
            
 
        
        }
        
    }    