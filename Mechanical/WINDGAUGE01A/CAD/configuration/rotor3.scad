$fn=40; // model faces resolution.
//include <configuration.scad>





//dutinka pro upevneni rotoru
module rotor3 (sila_pod_loziskem,delka_hridele,lozisko_prumer_vnitrni,lozisko_prekryv)
{
difference()
{


//dotahovací kroužek
translate([0,0,0])
cylinder (h = sila_pod_loziskem+delka_hridele+2, r=(lozisko_prumer_vnitrni+2*lozisko_prekryv)/2, center = true, $fn=100);    
  
cylinder (h = sila_pod_loziskem+delka_hridele+2+0.1, r=((lozisko_prumer_vnitrni+0.2)/2), center = true, $fn=100);     
   
      
}
}


module rotor4 (vyska_pod_magnetem,magnet_zapusteni,magnet_prumer,vyska_hlavy_sroubu,prumer_hlavy_sroubu,prumer_sroubu)
{
difference()
{


//segment pro sroub a magnet
translate([0,0,0])
cylinder (h = vyska_pod_magnetem+magnet_zapusteni, r=(magnet_prumer+2)/2, center = true, $fn=100);    
  
//otvor pro magnet    
translate([0,0,vyska_pod_magnetem/2+0.1])    
cylinder (h = magnet_zapusteni, r=((magnet_prumer+0.2)/2), center = true, $fn=100);     
   
//zapusteni uchytného sroubu   
translate([0,0,(vyska_pod_magnetem-vyska_hlavy_sroubu-1)/2+0.1])    
cylinder (h = vyska_hlavy_sroubu+1, r=((prumer_hlavy_sroubu+0.2)/2), center = true, $fn=100); 

//otvor pro sroub
cylinder (h = vyska_pod_magnetem+magnet_zapusteni+0.1, r=(prumer_sroubu)/2, center = true, $fn=100);     
}
}


