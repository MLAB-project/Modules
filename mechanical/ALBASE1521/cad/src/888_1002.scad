include <../Parameters.scad>

// zde připravené rozměry na počítání rozestupů

spacing_cable_clamp = 10; //odsazeni jednotlivych modulu
thickness = 10; //celkova tloustka /2
width=15;

cables_quantity = 8 ;//počet kabelů
clamp_quantity = 3;//počet svazků
wires =  [[2,8,5],[5,20],[10,10]];//rozložení a jejich velikosti
pomocna= [[0,1,2],[3,4],[5,6]];

function add(v, i = 0, result = 0) = i < len(v) ? add(v, i + 1, result + v[i]) : result; //metoda na počítání prků po dimenzích

function sumv(v,i,s=0) = (i==s ? v[i] : v[i] + sumv(v,i-1,s));

module cable_clam_a(){

    list=[for(x=[0:len(wires)-1]) add(wires[x])];
    list2=[for(i=[0:cables_quantity])for(u=[0:len(wires[i])-1]) wires[i][u]];
    list3=[for(x=[0:clamp_quantity-1])x==0?len(wires[x])-1:len(wires[x])];
    list4=[for(x=[0:clamp_quantity-1])x==0?0:len(wires[x-1])];
    list5=[for(i=[0:clamp_quantity])i==0?0:(sumv(list2,sumv(list3,i-1,0),0))];

    total_length=add(list)+((M3_screw_diameter)*clamp_quantity*2)+spacing_cable_clamp*clamp_quantity-0.508;

    //difference() {

echo(list5);

    translate([0,-width/2 , 0]){
        cube([total_length,width,thickness]);
    }

    //otvory pro připevnění k desce ALBASE
    translate([4.746,0,0]){
        color([1,0,0])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
    }
    translate([total_length-(4.746),0,0]){
        color([1,0,0])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
    }
//zde posun?
    translate([4.786+M3_screw_diameter*2+2, 0, 0]) {


        for(i=[0:clamp_quantity-1]){

            translate([list5[i]+i*10,0,0]){


                for(u=[0:len(wires[i])-1]){

                    //cislo=sumv(list4,i==clamp_quantity-1?i+1:i,0);
                    cislo2=sumv(list4,i,0);

                    translate([(sumv(list2,pomocna[i][u],cislo2)-wires[i][u]/2),-width/2,thickness]){
                        rotate([-90,0,0]) color([0,1,0])  cylinder(h=width,d=wires[i][u],$fn=50);
                        echo("pokus",sumv(list2,pomocna[i][u],cislo2));
                        //fialova
                        if(u==0){
                            //-(M3_screw_diameter/2+wires[i][u]/2+1)
                            translate([-(M3_screw_diameter/2+wires[i][u]/2+1),width/2,-thickness])
                            color([1,0,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
                        }
                        //bila
                        if(u+1==len(wires[i])){
                            //M3_screw_diameter/2+wires[i][u]/2+1
                            translate([M3_screw_diameter/2+wires[i][u]/2+1,width/2,-thickness])
                            color([1,1,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50,center=false);
                        }
                    }
                }
            }
        }
    }
//    }
}
cable_clam_a();
