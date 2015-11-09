$fn=40; // model faces resolution.

prumer_rotoru1=60;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
prumer_hlavy_sroubu=6;
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

//stator2
sila_pod_loziskem=1;

//stator3
stator3_sila_steny=2;
stator3_vzdalenost_od_steny=2; //definuje vzdalenost hlavy sroubu od steny statrou 4

vule1=2; //vůle mezi statorem a rotorem ze strany

//nastevní rotoru2
vyska_kryti=5;

//lopatka
hloubka_uchytu=20;
sila_uchytu=12;
vyska_uchytu=10;
tolerance_uchytu=0.1;

//parametry uchytu senzoru
roztec_der=10.16;
vzdalenost_der_x=2*roztec_der;
vzdalenost_der_y=1*roztec_der;









difference()
{
cylinder (h = lozisko_vyska+sila_pod_loziskem, r=(prumer_rotoru1-2*sila_materialu-2*vule1-stator3_sila_steny)/2, center = true, $fn=100);
    

//otvor pro lozisko
translate([0,0,sila_pod_loziskem])
cylinder (h = lozisko_vyska+0.1, r=(lozisko_prumer_vnejsi+0.1)/2, center = true, $fn=100);    
  
//otvor pro hridel rotoru
translate([0,0,0])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+2)/2, center = true, $fn=100);      
   
//otvor pro sroub 1
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

//otvor pro sroub 2
    rotate(a=[0,0,120])
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);
   
   //otvor pro sroub 3
   rotate(a=[0,0,240]) 
      translate([(lozisko_prumer_vnejsi+prumer_sroubu+5)/2,0,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);
 
//otvory pro uchyceni senzoru 
   //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(vzdalenost_der_x/2),-vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

     //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(-vzdalenost_der_x/2),-vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

    //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(vzdalenost_der_x/2),vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100); 

   //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(-vzdalenost_der_x/2),vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);








//otvory pro uchyceni stator 3
//otvor pro sroub 1
      translate([0,(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,0])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=3, center = true, $fn=100);


}






