$fn=100;
//Univerzální model držáku ventilátoru
//Parametry ventilátoru
roztec_mezi_srouby=24.1;
vzdalenost_stredu_sroubu_od_okraje=3.1;

//Parametry úchytu ventilátoru
sirka_uchytu=10;

//Parametr šroubu uchytného u ventilátoru
vyska_hlavy_sroubu=5;
prumer_sroubu=3.2;

//Roztec der v ALbase
roztec=10.16;
prumer_otvoru=3.2;
sila_materialu=1.8;
vzdalenost_od_okraje=5;

pocet_der_x=2;
pocet_der_y=5;

difference(){
       
    union(){
        //spodní díl
            cube([roztec*(pocet_der_x-1)+2*vzdalenost_od_okraje,roztec*(pocet_der_y-1)+2*vzdalenost_od_okraje,sila_materialu],center=true);

        //uchyt na ventilátor
            translate([(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje, roztec_mezi_srouby/2-sirka_uchytu/2, sila_materialu/2]) 
                rotate([0, -90, 0])
                    cube([vzdalenost_stredu_sroubu_od_okraje+vyska_hlavy_sroubu+prumer_sroubu,sirka_uchytu,sila_materialu],center=false);

        //uchyt 2
            translate([(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje, -roztec_mezi_srouby/2-sirka_uchytu/2, sila_materialu/2]) 
                rotate([0, -90, 0])
                    cube([vzdalenost_stredu_sroubu_od_okraje+vyska_hlavy_sroubu+prumer_sroubu,sirka_uchytu,sila_materialu],center=false);


        //podpera  1  
            translate([0, roztec_mezi_srouby/2-sila_materialu/2, sila_materialu/2]) 
                rotate([-90, -90, 0])
                    linear_extrude (height = sila_materialu, convexity = 10)
                        polygon(points=[[0,0],[0, (pocet_der_x-1)*roztec/2+vzdalenost_od_okraje],[vyska_hlavy_sroubu,(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje],[0,0]]);  

        //podpera  2  
            translate([0, -roztec_mezi_srouby/2-sila_materialu/2, sila_materialu/2]) 
                rotate([-90, -90, 0])
                    linear_extrude (height = sila_materialu, convexity = 10)
                        polygon(points=[[0,0],[0, (pocet_der_x-1)*roztec/2+vzdalenost_od_okraje],[vyska_hlavy_sroubu,(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje],[0,0]]);     

    
            }

    //otvory na šrouby v držáku
        translate([(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje-sila_materialu/2, roztec_mezi_srouby/2, sila_materialu/2+vyska_hlavy_sroubu+vzdalenost_stredu_sroubu_od_okraje])
            rotate([0, -90, 0])
                cylinder(h=sila_materialu+0.2, r=prumer_sroubu/2, center=true);

        translate([(pocet_der_x-1)*roztec/2+vzdalenost_od_okraje-sila_materialu/2, -roztec_mezi_srouby/2, sila_materialu/2+vyska_hlavy_sroubu+vzdalenost_stredu_sroubu_od_okraje])
            rotate([0, -90, 0])
                cylinder(h=sila_materialu+0.2, r=prumer_sroubu/2, center=true);

    //otvory na šrouby ve spodní části
        translate([(pocet_der_x-1)*roztec/2, (pocet_der_y-1)*roztec/2, 0])
            cylinder(h=sila_materialu+0.2, r=prumer_otvoru/2, center=true);
    
        translate([-(pocet_der_x-1)*roztec/2, (pocet_der_y-1)*roztec/2, 0])
            cylinder(h=sila_materialu+0.2, r=prumer_otvoru/2, center=true);   
   
        translate([(pocet_der_x-1)*roztec/2, -(pocet_der_y-1)*roztec/2, 0])
            cylinder(h=sila_materialu+0.2, r=prumer_otvoru/2, center=true);
    
        translate([-(pocet_der_x-1)*roztec/2, -(pocet_der_y-1)*roztec/2, 0])
            cylinder(h=sila_materialu+0.2, r=prumer_otvoru/2, center=true);  
}