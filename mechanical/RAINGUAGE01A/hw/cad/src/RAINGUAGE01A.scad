$fn = 50;
CLEAR = 0.1;
2CLEAR = 0.2;

funnel_out = 150;
funnel_wall = 2;
funnel_height = 75;
funnel_transition = 5;
funnel_pipe_length = 2;
funnel_pipe_wall = 0.4;
funnel_pipe_in_d = 1;

funnel_out_x = funnel_out;
funnel_out_y = funnel_out;

translate([0,0,funnel_pipe_length+funnel_transition]) difference(){
    hull(){
        cylinder(1, 10/2, 10/2);
        translate([0,0,50]) cube([funnel_out_x, funnel_out_y, 1], center=true);
    }
    hull(){
        translate([0,0,-0.1]) cylinder(1.2, 8/2, 8/2);
        translate([0,0,50]) cube([funnel_out_y-funnel_wall, funnel_out_y-funnel_wall, 1.1], center=true);
    }
}
translate([0,0,funnel_pipe_length]) difference(){
    cylinder(funnel_transition, funnel_pipe_in_d/2+funnel_pipe_wall, 10/2);
    translate([0,0,-CLEAR]) cylinder(funnel_transition+2CLEAR, funnel_pipe_in_d/2, 8/2);
}
difference(){
    cylinder(funnel_pipe_length, funnel_pipe_in_d/2+funnel_pipe_wall, funnel_pipe_in_d/2+funnel_pipe_wall);
    translate([0,0,-CLEAR]) cylinder(funnel_pipe_length+2CLEAR, funnel_pipe_in_d/2, funnel_pipe_in_d/2);
}





// http://www.tme.eu/cz/Document/5744426ad4cea8b50c8f3e2cb0c9de26/EE-SX3081.pdf


sensor_width = 14 + 0.5;
sensor_lenght = 10 + 3;
sensor_thicknes = 5+0.5;

sensor_wall_border = 1;
sensor_wall_leg = 2;

sensor_leg_lenght = 20;
sensor_leg_width = 8;

translate([0,0,0]) rotate([0,180,0]){
    
    difference(){
        union(){
            translate([-sensor_lenght-sensor_wall_leg, -sensor_lenght/2-2*sensor_wall_border, 0]) cube([sensor_lenght+2*sensor_wall_border, sensor_lenght+4*sensor_wall_border, sensor_thicknes+2*sensor_wall_border]);
            translate([-sensor_wall_leg, -sensor_leg_width/2, 0]) cube([sensor_wall_leg, sensor_leg_width, sensor_leg_lenght]);
        }
        translate([-sensor_lenght-sensor_wall_leg-CLEAR, -sensor_width/2, sensor_wall_border]) cube([sensor_lenght+CLEAR, sensor_width, sensor_thicknes]); 
        translate([-sensor_lenght-sensor_wall_leg-CLEAR, -10/2, 0-CLEAR]) cube([sensor_lenght-sensor_wall_border+CLEAR, 10, sensor_thicknes+2*sensor_wall_border+2CLEAR]);  
        translate([-sensor_wall_leg-sensor_wall_border+CLEAR, -2/2 - 10.5/2, sensor_wall_border]) cube([3+2CLEAR, 2, sensor_thicknes]);   
        translate([-sensor_wall_leg-sensor_wall_border+CLEAR, -2/2 + 10.5/2, sensor_wall_border]) cube([3+2CLEAR, 2, sensor_thicknes]);  
    }
    
    
}