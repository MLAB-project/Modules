$fn=40; // model faces resolution.
//include <configuration.scad>


module stator1(stator1_sila,lozisko_prumer_vnejsi,sirka_matky,lozisko_prumer_vnitrni,lozisko_prekryv,prumer_sroubu)
{
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
}






