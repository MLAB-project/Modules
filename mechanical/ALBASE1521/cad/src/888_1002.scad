include <../Parameters.scad>

// zde připravené rozměry na počítání rozestupů
clamp_screw = 3.5;
spacing_wires = 2; //rozestup mezi vodici
spacing_nut = 2; //odsazeni der od okraje pro pripojeni pritlacne desky
spacing_cable_clamp = 1; //odsazeni jednotlivych modulu
thickness = 10; //celkova tloustka /2
width=15;

cables_quantity = 10 ;//počet kabelů
clamp_quantity = 3;//počet svazků
wires = [[3,6,2,2,2,2],[5,10,5],[10,10]];//rozložení a jejich velikosti
pomocna= [[0,1,2,3,4,5],[6,7,8],[9,10]];

function add(v, i = 0, result = 0) = i < len(v) ? add(v, i + 1, result + v[i]) : result; //metoda na počítání prků po dimenzích

function sumv(v,i,s=0) = (i==s ? v[i] : v[i] + sumv(v,i-1,s));

module cable_clam_a(){

    list=[for(x=[0:len(wires)-1]) add(wires[x])];
    list2=[for(i=[0:cables_quantity])for(u=[0:len(wires[i])-1]) wires[i][u]];
    list3=[for(x=[0:clamp_quantity-1])x==0?len(wires[x])-1:len(wires[x])];

    total_length=add(list)+((M3_screw_diameter+spacing_nut)*clamp_quantity*2)+spacing_wires*cables_quantity+10-0.508;
    echo("total length",total_length);

    //difference(){

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

    for(i=[0:clamp_quantity-1]){

        translate([sumv(list2,sumv(list3,i,0),0)+M3_screw_diameter*2,-width/2,thickness]){

            //fialove
            translate([-M3_screw_diameter*4,width/2,0]){
                color([1,0,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
            }

            for(u=[0:len(wires[i])-1]){

                cislo=sumv(list3,i==0?0:i-1,0)+1;

                translate([( sumv(list2,pomocna[i][u],((cislo*(i==0?0:1)))) -wires[i][u]/2)-len(wires[i]),-width/2,thickness]){
                    rotate([-90,0,0]) color([0,1,0])  cylinder(h=width,d=wires[i][u],$fn=100);
                    echo("cislo",cislo);
                    echo("pomocna",pomocna[i][u]);
//                    echo(sumv(list2,pomocna[i][u],cislo-1)-wires[i][u]/2);
                    //bila
                    if(u+1==len(wires[i])){
                        translate([M3_screw_diameter,width/2,0])
                        color([1,1,1])cylinder(h=thickness,d=M3_screw_diameter,$fn=50);
                    }
                }
            }
        }
    }
}
cable_clam_a();
