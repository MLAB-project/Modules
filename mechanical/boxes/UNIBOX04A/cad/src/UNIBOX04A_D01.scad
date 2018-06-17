include <../configuration.scad>


//PLBASE ZAKLADNI
//------------------------------------------------------------

UNIBOX04A_D01();

module UNIBOX04A_D01(){

difference () {

translate([-(rozmer_x/2-zakulaceni_hrany),-(rozmer_y/2-zakulaceni_hrany),0]) 
minkowski()
    {
	cube([rozmer_x-2*zakulaceni_hrany,rozmer_y-2*zakulaceni_hrany,sila]);         
        cylinder(r=zakulaceni_hrany,h=0.1);
    }
  
//odecet otvory

translate([roztec_srouby_x/2,roztec_srouby_y/2,0])      
    cylinder(sila*5, d=prumer_sroubu, center=true);   
  
translate([-roztec_srouby_x/2,roztec_srouby_y/2,0])      
    cylinder(sila*5, d=prumer_sroubu, center=true);    

translate([-roztec_srouby_x/2,-roztec_srouby_y/2,0])      
    cylinder(sila*5, d=prumer_sroubu, center=true);

translate([roztec_srouby_x/2,-roztec_srouby_y/2,0])      
    cylinder(sila*5, d=prumer_sroubu, center=true);

}
}

