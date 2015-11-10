$fn=40; // model faces resolution.

prumer_rotoru1=60;
vyska_rotoru1=5;
vyska_rotoru2=5;
prumer_sroubu=3.2;
prumer_hlavy_sroubu=6;
vyska_hlavy_sroubu=4;
vyska_matky=3;
sirka_matky=6;
prumer_orechu=10;
sila_materialu=2;
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
stator3_vzdalenost_od_steny=1; //definuje vzdalenost hlavy sroubu od steny statrou 4
stator3_vyska=60;
stator3_vyska_prekryti=5;

//uchyt pro anemometr
uchyt_prumer_sroubu=3.2;
roztec_sroubu=10.16;




vule1=1; //vůle mezi statorem a rotorem ze strany

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
  
cylinder (h = stator3_vyska, r=(prumer_rotoru1)/2, center = true, $fn=100); 
 
    translate([0,0,(stator3_vyska-lozisko_vyska-sila_pod_loziskem)/2])
    
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=(prumer_rotoru1-2*sila_materialu-2*vule1-stator3_sila_steny)/2, center = true, $fn=100);

cylinder (h = stator3_vyska+0.1, r=(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny)/2, center = true, $fn=100);
    
   
    
    
 translate([0,0,(stator3_vyska-stator3_vyska_prekryti)/2])    
difference()  
 {   
     
cylinder (h = stator3_vyska_prekryti+0.1, r=(prumer_rotoru1+0.1)/2, center = true, $fn=100); 
 
     
 cylinder (h = stator3_vyska_prekryti+0.1, r=(prumer_rotoru1-2*sila_materialu-2*vule1)/2, center = true, $fn=100);   
    
 }   
    
    
    
    
    
    






//otvory pro uchyceni stator 3
//otvor pro sroub 1
      translate([0,(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,0])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      translate([0,(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,2])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);

//otvor pro sroub 2
      translate([0,-(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,0])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      translate([0,-(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,2])
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);


}


//dno stator3

translate([0,0,-(stator3_vyska-stator3_sila_steny)/2])

difference()
{
cylinder (h = stator3_sila_steny, r=(prumer_rotoru1)/2, center = true, $fn=100);
    
//otvory pro uchyceni stator 3
//otvor pro sroub 1
         translate([0,(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,0])
  cylinder (h = stator3_sila_steny+0.1, r=prumer_sroubu/2, center = true, $fn=100);

      

//otvor pro sroub 2
      translate([0,-(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-prumer_hlavy_sroubu-2*stator3_vzdalenost_od_steny)/2,0])
 cylinder (h = stator3_sila_steny+0.1, r=prumer_sroubu/2, center = true, $fn=100);
    
//srouby pro uchycení anemometru
     translate([roztec_sroubu/2,roztec_sroubu/2,0])
 cylinder (h = stator3_sila_steny+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
    
      translate([-roztec_sroubu/2,roztec_sroubu/2,0])
 cylinder (h = stator3_sila_steny+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);  

    translate([roztec_sroubu/2,-roztec_sroubu/2,0])
 cylinder (h = stator3_sila_steny+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
 
     translate([-roztec_sroubu/2,-roztec_sroubu/2,0])
 cylinder (h = stator3_sila_steny+0.1, r=uchyt_prumer_sroubu/2, center = true, $fn=100);
    
}

