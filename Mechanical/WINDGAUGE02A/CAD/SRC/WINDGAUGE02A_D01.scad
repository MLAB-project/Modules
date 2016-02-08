$fn=40; // model faces resolution.
include <../configuration.scad>

use <zavity.scad>

module WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu)
    {

difference()
        {
//translate([0,0,-(S01_vyska_na_elektroniku+S01_vyska_zavitu_na_nasroubovani_drzaku+2*S01_vyska_komponentu_na_lozisko)/2-10])
    
metric_thread (diameter=S01_prumer_zavitu-0.3, pitch=1, length=S01_vyska_komponentu_na_lozisko, internal=false, n_starts=6);

//otvory na ložisko
translate([0,0,lozisko_vyska/2])
 cylinder (h = lozisko_vyska+0.01, r=(lozisko_prumer_vnejsi+0.2)/2, center = true, $fn=100);
 
 translate([0,0,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv+0.2)/2, center = true, $fn=100);


//otvor na šroub 1
translate([-20,0,vyska_hlavy_sroubu/2])
 cylinder (h = vyska_hlavy_sroubu+0.01, r=(prumer_hlavy_sroubu+0.2)/2, center = true, $fn=100);
 
 translate([-20,0,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);

//otvor na šroub 2
translate([20,0,vyska_hlavy_sroubu/2])
 cylinder (h = vyska_hlavy_sroubu+0.01, r=(prumer_hlavy_sroubu+0.2)/2, center = true, $fn=100);
 
 translate([20,0,S01_vyska_komponentu_na_lozisko/2])           
  cylinder (h = S01_vyska_komponentu_na_lozisko+0.01, r=(prumer_sroubu)/2, center = true, $fn=100);

 }
    }
 


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
    

    
 WINDGAUGE02A_S03(S01_sila_materialu,S01_vyska_komponentu_na_lozisko,S01_prumer_zavitu,lozisko_vyska,lozisko_prumer_vnejsi,lozisko_prumer_vnitrni,lozisko_prekryv,vyska_matky,prumer_orechu,prumer_sroubu);   
