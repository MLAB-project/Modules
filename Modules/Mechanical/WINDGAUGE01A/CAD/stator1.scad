$fn=40; // model faces resolution.

prumer_rotoru1=50;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
vyska_matky=3;
sirka_matky=6;
prumer_orechu=10;
sila_materialu=3;
sila_materialu_vule=0.2;
hloubka_prekryti=2;

//lozisko
lozisko_prumer_vnitrni=5;
lozisko_prumer_vnejsi=16;
lozisko_vyska=5;
lozisko_prekryv=1.5;

//stator1
stator1_sila=2;

//stator1
sila_pod_loziskem=1;



//nastevní rotoru2
vyska_kryti=5;

//lopatka
hloubka_uchytu=20;
sila_uchytu=12;
vyska_uchytu=10;
tolerance_uchytu=0.1;










difference()
{
cylinder (h = stator1_sila, r=(lozisko_prumer_vnejsi+10+sirka_matky)/2, center = true, $fn=100);
    

//otvor pro hridel rotoru
translate([0,0,0])
cylinder (h = stator1_sila+0.1, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2, center = true, $fn=100);    
  
   
   
//otvor pro sroub 1
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])
cylinder (h = stator1_sila+0.1, r=prumer_sroubu/2, center = true, $fn=100);

//otvor pro sroub 2
    rotate(a=[0,0,120])
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])

cylinder (h = stator1_sila+0.1, r=prumer_sroubu/2, center = true, $fn=100);
   
   //otvor pro sroub 3
   rotate(a=[0,0,240]) 
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])

cylinder (h = stator1_sila+0.1, r=prumer_sroubu/2, center = true, $fn=100);
   


  

      
}






