include <../parameters.scad>

spacing_cable_clamp = 15; //odsazeni jednotlivych modulu
width=15;
thickness_set=5;//nastavení minimální tlouštky

cables_quantity = 4 ;//počet kabelů
clamp_quantity = 2;//počet svazků
wires =  [[10,10],[10,10]];//rozložení a jejich velikosti
pomocna= [[0,1],[2,3]];//indexace kabelů... nahradit funkcí
adjusment=5;//připůsobení dély...-> automatizace??

function add(v, i = 0, result = 0) = i < len(v) ? add(v, i + 1, result + v[i]) : result; //metoda na počítání prvků po dimenzích
function maximum(a, i = 0) = (i < len(a) - 1) ? max(a[i], maximum(a, i +1)) : a[i]; //metoda co vrátí maximum z 2D pole
function sumv(v,i,s=0) = (i==s ? v[i] : v[i] + sumv(v,i-1,s));//metoda která sečte hodnoty pole od/do
function decimal_number(i) = i%10==0?i:i + (10 - i % 10);//metoda vrací číslo, které je násobkem 10

module cable_clam_a(){

    list=[for(x=[0:len(wires)-1]) add(wires[x])];// list s celkovými delkami jednolivých sekcí
    list2=[for(i=[0:cables_quantity])for(u=[0:len(wires[i])-1]) wires[i][u]];// převedení 2D listu do 1D listu
    list3=[for(x=[0:clamp_quantity-1])x==0?len(wires[x])-1:len(wires[x])];//momocný list s počtem vodičů v jednolivých sekcích (list3->list4)
    list4=[for(x=[0:clamp_quantity-1])x==0?0:len(wires[x-1])];//list s počtem vodičů v jednolivých sekcích
    list5=[for(i=[0:clamp_quantity])i==0?0:(sumv(list2,sumv(list3,i-1,0),0))];//list s posuny jednotlivých sekcí
    thickness= maximum(list2)/2+thickness_set;

    total_length=add(list)+((M3_screw_diameter)*clamp_quantity*2)+spacing_cable_clamp*(clamp_quantity-1)+adjusment;//minimální délka dle rozměrů otvorů
    final_length=decimal_number(ceil(total_length)) + 4.746*2;//skutečná délka
    echo("celková délka výtisku=",final_length);

    difference() {

        //kvádr
        translate([0,-width/2 , 0]){
            cube([final_length,width,thickness]);
        }

        //otvory pro připevnění k desce ALBASE
        translate([4.746,0,0]){
            color([1,0,0])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
        }
        translate([final_length-4.746,0,0]){
            color([1,0,0])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
        }

        translate([4.746+M3_screw_diameter*2+2, 0, 0]) {

            for(i=[0:clamp_quantity-1]){
                translate([list5[i]+i*spacing_cable_clamp,0,0]){
                    for(u=[0:len(wires[i])-1]){
                        cislo2=sumv(list4,i,0);

                        translate([(sumv(list2,pomocna[i][u],cislo2)-wires[i][u]/2),-width/2,thickness]){
                            rotate([-90,0,0]) color([0,1,0])  cylinder(h=width,d=wires[i][u],$fn=50);

                            //fialova otvory
                            if(u==0){
                                translate([-(M3_screw_diameter/2+wires[i][u]/2+1),width/2,-thickness]){
                                    color([1,0,1])cylinder(h=1.5*M3_screw_head_height,d=M3_nut_diameter,$fn=6);
                                    color([1,0,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
                                }
                            }

                            //bila
                            if(u+1==len(wires[i])){
                                translate([M3_screw_diameter/2+wires[i][u]/2+1,width/2,-thickness]){
                                    color([1,1,1])cylinder(h=1.5*M3_screw_head_height,d=M3_nut_diameter,$fn=6);
                                    color([1,1,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50,center=false);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
cable_clam_a();


module cable_clam_b(){

    list=[for(x=[0:len(wires)-1]) add(wires[x])];// list s celkovými delkami jednolivých sekcí
    list2=[for(i=[0:cables_quantity])for(u=[0:len(wires[i])-1]) wires[i][u]];// převedení 2D listu do 1D listu
    list3=[for(x=[0:clamp_quantity-1])x==0?len(wires[x])-1:len(wires[x])];//momocný list s počtem vodičů v jednolivých sekcích (list3->list4)
    list4=[for(x=[0:clamp_quantity-1])x==0?0:len(wires[x-1])];//list s počtem vodičů v jednolivých sekcích
    list5=[for(i=[0:clamp_quantity])i==0?0:(sumv(list2,sumv(list3,i-1,0),0))];//list s posuny jednotlivých sekcí

    translate([4.746+M3_screw_diameter*2+2, 0, 0]) {

        for(i=[0:clamp_quantity-1]){
            thickness2=maximum(wires[i])/2+thickness_set;
            translate([list5[i]+i*spacing_cable_clamp,10,0]){
                difference(){
                    translate([-(M3_nut_diameter),0,0]){
                        cube([list[i]+M3_nut_diameter*2,width,thickness2]);
                    }

                    for(u=[0:len(wires[i])-1]){
                        cislo2=sumv(list4,i,0);

                        translate([(sumv(list2,pomocna[i][u],cislo2)-wires[i][u]/2),0,thickness2]){
                            rotate([-90,0,0]) color([0,1,0])  cylinder(h=width,d=wires[i][u],$fn=50);
                            //otvory pro pripojeni jednotlivých modulu
                            if(u==0){
                                translate([-(M3_screw_diameter/2+wires[i][u]/2+1),width/2,-thickness2]){
                                //    color([1,0,1])cylinder(h=M3_screw_head_height,d=M3_nut_diameter,$fn=6);
                                    color([1,0,1])cylinder(h=thickness2,d=M3_screw_diameter,$fn=50);
                                }
                            }
                            if(u+1==len(wires[i])){
                                translate([M3_screw_diameter/2+wires[i][u]/2+1,width/2,-thickness2]){
                            //        #color([1,1,1])cylinder(h=M3_screw_head_height,d=M3_nut_diameter,$fn=6);
                                    color([1,1,1])cylinder(h=thickness2,d=M3_screw_diameter,$fn=50, center=false);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

cable_clam_b();
