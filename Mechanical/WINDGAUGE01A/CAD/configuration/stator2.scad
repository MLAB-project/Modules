$fn=40; // model faces resolution.
//include <configuration.scad>


module stator2(lozisko_vyska,sila_pod_loziskem,prumer_rotoru1,sila_materialu,vule1,stator3_sila_steny,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,
prumer_sroubu,
lozisko_vyska,vzdalenost_der_x,vzdalenost_der_y,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_rotoru1,stator3_vzdalenost_od_steny)


{
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
 
      translate([(vzdalenost_der_x/2),-vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

     translate([(vzdalenost_der_x/2),-vzdalenost_der_y/2,(lozisko_vyska+sila_pod_loziskem-vyska_hlavy_sroubu)/2])

cylinder (h = vyska_hlavy_sroubu+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);



     //otvor pro sroub 2
   rotate(a=[0,0,0]) 
      translate([(-vzdalenost_der_x/2),-vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

 translate([(-vzdalenost_der_x/2),-vzdalenost_der_y/2,(lozisko_vyska+sila_pod_loziskem-vyska_hlavy_sroubu)/2])

cylinder (h = vyska_hlavy_sroubu+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);




    //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(vzdalenost_der_x/2),vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100); 

 translate([(vzdalenost_der_x/2),vzdalenost_der_y/2,(lozisko_vyska+sila_pod_loziskem-vyska_hlavy_sroubu)/2])

cylinder (h = vyska_hlavy_sroubu+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);


   //otvor pro sroub 1
   rotate(a=[0,0,0]) 
      translate([(-vzdalenost_der_x/2),vzdalenost_der_y/2,0])

cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=prumer_sroubu/2, center = true, $fn=100);

 translate([(-vzdalenost_der_x/2),vzdalenost_der_y/2,(lozisko_vyska+sila_pod_loziskem-vyska_hlavy_sroubu)/2])

cylinder (h = vyska_hlavy_sroubu+0.1, r=prumer_hlavy_sroubu/2, center = true, $fn=100);






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

}




