$fn=40; // model faces resolution.
//include <../configuration.scad>

module stator3(stator3_vyska,prumer_rotoru1,lozisko_vyska,sila_pod_loziskem,sila_materialu,vule1,stator3_sila_steny,
stator3_vyska_prekryti,prumer_hlavy_sroubu,stator3_vzdalenost_od_steny,lozisko_vyska,prumer_sroubu,roztec_sroubu,uchyt_prumer_sroubu,vyska_stator4,kabel_prumer)
{
difference()
{
  
cylinder (h = stator3_vyska, r=(prumer_rotoru1)/2, center = true, $fn=100); 
 
    translate([0,0,(stator3_vyska-lozisko_vyska-sila_pod_loziskem)/2])
    
cylinder (h = lozisko_vyska+sila_pod_loziskem+0.1, r=(prumer_rotoru1-2*sila_materialu-2*vule1-stator3_sila_steny)/2, center = true, $fn=100);

cylinder (h = stator3_vyska+0.1, r=(prumer_rotoru1-2*sila_materialu-2*vule1-2*stator3_sila_steny-1)/2, center = true, $fn=100);
    
   
    
    
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
    
    //dira na kabel
        
 cylinder (h = vyska_stator4+0.1, r=(kabel_prumer/2+0.1), center = true, $fn=100);
}
}
