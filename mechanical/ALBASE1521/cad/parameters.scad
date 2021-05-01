maximum_printable_size = 150;

layer_thickness = 0.3;
global_clearance = 0.5;

platform_base_diameter = 400; // Průměr ukotvení válců spodní platformy
platform_base_thickness = 20;
platform_cylinder_medium_length = 250;  // délka pneumatického válce s pístem vysunutým do poloviny rozsahu
platform_base_cylinder_spacing = 38;    //rozestupy spodního a horního ukotvení válců.
platform_top_cylinder_spacing = 30;
platform_top_diameter = 150;   // Průměr horní základny (vdálenost od středu základny do středu kulového kloubu ke kterému je uchycen pneumatický válec)


// screw length step - minimum difference in length between two types of screws
basic_screw_length = 5;


//Screw diameter and nut for M10 [mm]
M10_screw_diameter = 10.4;
M10_head_height = 10;
M10_head_diameter = 16+0.5;
M10_nut_height = 10.5;
M10_nut_diameter = 25.5;
M10_nut_pocket = 22.3;

//Screw diameter for M8 [mm]
M8_screw_diameter = 8.6;
M8_head_height = 8;
M8_head_diameter = 13.5;
M8_nut_height = 7.5;
M8_nut_diameter = 14.4 + 0.5;
M8_nut_pocket = 13 + 0.5;

//Screw diameter and nut for M6 [mm]
M6_screw_diameter=6.5;
M6_head_diameter = 10+0.5;
M6_head_height = 6;
M6_nut_height = 4.9;
M6_nut_diameter = 11.8;
M6_nut_pocket = 10.4;
M6_square_nut_height = 3;
M6_square_nut_diameter = 10;

//Screw diameter and nut for M5 [mm]
M5_screw_diameter=5.5;
M5_head_height = 5;
M5_head_diameter = 13+0.5;
M5_nut_height = 4.5;
M5_nut_diameter = 9.4;
M5_nut_pocket = 8.4;

//Screw diameter and nut for M4 [mm]
M4_screw_diameter=4.5;
M4_screw_head_height = 4;
M4_nut_height = 3.2;
M4_nut_diameter = 8.4;
M4_nut_pocket = 7.5;

//Screw diameter and nut for M3 [mm]
M3_screw_diameter = 3.2;
M3_nut_height = 2.7;
M3_nut_diameter = 6.6;
M3_screw_head_height = 3;

//Screw diameter and nut for M2,5 [mm]
M2_5_screw_diameter = 2.7;
M2_5_nut_height = 2.3;
M2_5_nut_diameter = 6;
M2_5_nut_pocket = 5.5;

// kulove lozisko

bearing_efsm_08_h = 33+1;
bearing_efsm_08_m = 22;
bearing_efsm_08_db = 18;
bearing_efsm_08_ag = 10.5;
bearing_efsm_08_n = M4_screw_diameter;
bearing_efsm_08_a1 = 5.5;
bearing_efsm_08_d = 8.25;
bearing_efsm_08_B = 8; // ball height

bearing_efsm_10_h = 38+1;
bearing_efsm_10_m = 26;
bearing_efsm_10_db = 21.9;
bearing_efsm_10_ag = 12+0.2;
bearing_efsm_10_n = M5_screw_diameter;
bearing_efsm_10_a1 = 6.5;
bearing_efsm_10_d = 10.25;


bearing_efsm_12_width = 40+1;
bearing_efsm_12_h = bearing_efsm_12_width;
bearing_efsm_12_boltd = 28/2; // polovina vzdalenosti mezi srouby
bearing_efsm_12_m = bearing_efsm_12_boltd*2;
bearing_efsm_12_db = 25;
bearing_efsm_12_ag = 13;
bearing_efsm_12_a1 = 7;
bearing_efsm_12_n = M5_screw_diameter;
bearing_efsm_12_d = 12.15;
bearing_efsm_12_B = 10; // ball height
bearing_efsm_space = 1;

bearing_efsm_17_width = 54+1;
bearing_efsm_17_h = bearing_efsm_17_width;
bearing_efsm_17_boltd = 38/2; // polovina vzdalenosti mezi srouby
bearing_efsm_17_m = bearing_efsm_17_boltd*2;
bearing_efsm_17_db = 35;
bearing_efsm_17_ag = 18;
bearing_efsm_17_n = M6_screw_diameter;
bearing_efsm_17_a1 = 10;
bearing_efsm_17_B = 17; // ball height

//limcove lozisko
bearing_EFOM_10_L=26; //celkova sirka zakladny
bearing_EFOM_10_d1=10.3;//diametr otvoru real=10 mm
bearing_EFOM_10_dB=22;//diametr vystupku pro ulozeni lozika
bearing_EFOM_10_H=52;//celková delka zakladny
bearing_EFOM_10_J=36;// hole pitch
bearing_EFOM_10_A1=6.5;//vyska pouzdra
bearing_EFOM_10_Ag=12;//celkova vyska
bearing_EFOM_10_N1=5;//sirka otvoru pro sroub
bearing_EFOM_10_N2=8;//delka otvoru pro sroub
bearing_EFOM_10_m=36;//roztec der pro sroub
bearing_EFOM_10_h=9;//vyska lozika


608_bearing_outer_diameter = 22.3;
608_bearing_inner_diameter = 16;
608_bearing_thickness = 7.1;


// 20 KG servo parameters

servo_20kg_axis_offset = 9.375; // jak je osa mimo stredu
servo_20kg_body_x = 42;
servo_20kg_body_y = 21;
servo_20kg_body_z = 40;
servo_20kg_thread_x = 49/2;
servo_20kg_thread_y = 10/2;
servo_20kg_body_below = 10; // jak hluboko je tělo serva pod drzaky na srouby
servo_20kg_below = 25.8; // jak hluboko je páka serva pod drzaky na srouby

servo_20kg_bolt_d = 2.5+0.3;
servo_20kg_nut_d = 5+0.3;


//strain gauge
strain_gauge_width = 12.7;
strain_gauge_length = 75.1;
strain_gauge_screw_distance = 10;

//ALU profile
ALU_profile_width = 30.3;
ALU_profile_holder_wall_thickness = 3;
ALU_profile_groove_width = 8;

//pillow block bearing
//https://www.igus.eu/product/372
//Part no. KSTM-08
KSTM08_screws_distance = 33;         //m
KSTM08_screws_holes_diameter = 4.5;  //d2
KSTM08_flange_thickness = 6;         //h3
KSTM08_case_width = 9;               //C1
KSTM08_case_length = 47;             //a
KSTM08_ball_width = 12;              //B


//ložiska pro malý rotor
bearing_outer_diameter = 10.2;    // Rozměr B1 v nákresu s přídavkem na toleranci otvoru
bearing_thickness = 4;        // Rozměr B2 v nákresu
//bearing_shaft_length = 19.5;    // Rozměr B3 v nákresu, Originalni hodnota 19.5
bearing_shaft_length = 20;    // Rozměr B3 v nákresu
