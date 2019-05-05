//$fn=40; // model faces resolution.

//COMMON PARAMETERS
//M3 x 12 Bolt
M3_nut_diameter=6.6;
M3_nut_height=2.7;
M3_bolt_diameter = 3.2;
M3_bolt_head_height = 3;
M3_bolt_length = 12;
//M5 Bolt
M5_bolt_diameter = 5.5;
M5_nut_height = 4.5;
M5_nut_diameter = 9.4;
//M6 Bolt
M6_bolt_diameter = 6.5;
M6_nut_height = 4.9;
M6_nut_diameter = 11.8;

//----------------------------------------------------------------
//----------------------------------------------------------------
//WINDGAUGE02A_S02 - Parametry pro hlavni valec anemometru
S01_hloubka_zavitu=4;
S01_vyska=110; //80
S01_prumer_vnitrni=50;
S01_sila_materialu=1.2;
S01_vyska_horni_zavit=10;
S01_vyska_spodniho_zavitu=10;
S01_sila_drzaku_RJ11=3; //vyška drážky
S01_hrana_A_RJ11=12.3;
S01_hrana_B_RJ11=19;
S01_tolerance_zavit=1.5;

//Rozměry ložiska se závity
//LO_spodni_prumer=22;
LO_spodni_prumer=17.2; //bez krytu
LO_vyska_bez_krytu=15;
LO_doraz_prumer=44.3;
LO_horni_prumer=7.7;
LO_vyska_spodni_doraz=5;
LO_vyska_horni_doraz=9;
LO_vyska_dorazu=0;





//Obecné parametry
prumer_osicky=5.1;



//Parametry loziska
lozisko_prumer_vnitrni=4.9;
lozisko_prumer_vnejsi=16.1;
lozisko_vyska=5;
lozisko_prekryv=1.5;

//Parametry magnetu
magnet_prumer=6.3;
magnet_vyska=5;
magnet_zapusteni=2;
magnet_tolerance_prumeru=0.2;

//Parametry sroubu
prumer_sroubu=3.4;
prumer_hlavy_sroubu=8.2;
vyska_hlavy_sroubu=4.3;
vyska_matky=3;
sirka_matky=6.7;

sirka_matky_tol=0.175;
prumer_orechu=10;

//WINDGAUGE02A_R01 //pro lopatku
L01_hrana_drzaku_a=10;
L01_hrana_drzaku_b=3;
L01_delka_uchytu=19;
L01_prumer_lopatky=40;
L01_sila_materialu_lopatky=0.9;

//WINDGAUGE02A_D02 Anemometer holder
//   | |   Top ring with Screw-thread
//  /   \  Body
// |_____| Base
D02_global_clearance = 0.5; // additional space where needed due to printer precision
D02_magnet_base_height = 4.5 + 1.5*D02_global_clearance; // HS-13 M5 magnet height without bolt
D02_magnet_diameter = 13; // HS-13 M5 magnet diameter
D02_wall_thickness = 5; // body wall thickness
D02_connector_spacing = 40; // main body cut-through for connectors
D02_base_diameter = 80; // diameter of holder base
D02_base_height = max(M6_nut_height + 1.5,
                      D02_magnet_base_height + M5_nut_height/2 + 1.5); // height of holder base
D02_body_height = 60 - D02_base_height; // height of body between base and top ring
D02_screw_diameter = S01_prumer_vnitrni - S01_tolerance_zavit; // scew-thread diameter based on stand S01
D02_thread_height = S01_vyska_spodniho_zavitu; // screw-thread height based on stand S01
D02_top_ring_inner_diameter = D02_screw_diameter - 6; // inner diameter of top ring
D02_top_ring_outer_diameter = D02_screw_diameter + 4; // outer diameter of top ring
D02_top_ring_height = D02_thread_height + 5; // height of top ring
// Following parameters are obsolete, maintained only for compatibility.
D01_material_pod_zavitem = D02_top_ring_height - D02_thread_height;
D01_material_za_zavitem = D02_screw_diameter - D02_top_ring_inner_diameter;
D01_material_pred_zavitem = D02_top_ring_outer_diameter - D02_screw_diameter;
D01_polomer_zakladny = D02_base_diameter/2;
D01_sila_setny_spodniho_drzaku=D02_wall_thickness;
D01_vyska_spodni_casti_drzaku = D02_body_height + D02_base_height;
D01_sirka_otvoru_pro_konektor = D02_connector_spacing;
D01_ucyhtna_matice_material_nad = D02_base_height - M6_nut_height;
D01_uchytna_matice_vyska = M6_nut_height;
D01_uchytna_matice_sirka = M6_nut_diameter;
D01_uchytny_sroub_prumer = M6_bolt_diameter;

// Following parameters are actually used in D01 model.
//WINDGAUGE02A_D02 //uchyt na sloup
D02_sila_materialu=6;
D02_vyska_uchytky=40;
D02_prumer_obruby=27; // 3/4 trubka
D02_delka_celeho_uchytu=60;
D02_dotahova_vzdalenost=1.5;
D02_prumer_uchytneho_sroubu=4.2;
D02_sirka_matky=9.1; //pro M4
D02_vyska_matky=3;


//WINDGAUGE02A_R01 //rotor s prekritim statoru
R01_vyska_prekryti_statoru=10;
R01_sila_materialu_pro_prekriti=1.3;
R01_mezera_mezi_statorem_rotorem=3;

//WINDGAUGE02A_R03 //drzak magnetu
R05_sirka_matky=10;



R03_prumer_zavitu=40;
R04_zavit_vyska=5;
R02_zavit_vyska=10;
R01_zavit_vyska=5;
R03_mezera_mezi_statorem_rotorem=3;

R02_delka_kridla=45;
R02_vzdalenost_der=25;

R02_delka_vyrovnnavaci_tyce=35;
R02_hrana_drzaku=14;
R02_sila_materialu_pod_tyci=5;
R02_sila_materialu_kridla=1.2;
R02_sila_materialu_kridla_tolerance=0.3;

R05_vyska_kridla=100;
R05_delka_kridla=100;


//S04
 I2CDIFF01A_sirka_kon=16.5; //sirka konektoru
 I2CDIFF01A_vyska_kon=13.5; //vyska konektoru
 I2CDIFF01A_sirka_mod_otvory=4; //kolik modul zabira der
 I2CDIFF01A_vyska_PCB=2; //vyska mezi albase a konektorem
S04_sila_materialu=2;

//WINDGAUGE03A_R03 // Venturi tube
R03_wide_D = 36; // Venturi wide tube inner diameter
R03_narrow_D = R03_wide_D/2; // Venturi narrow tube inner diameter
R03_global_clearance = 0.5; // additional space where needed due to printer precision
R03_PCB_top_rim = 5; // vertical distance from top of tube to top of PCB
R03_PCB_height = 41; // height of PCB casing - if changed check casing
R03_PCB_width = 14; // width of PCB casing - if changed check casing
R03_PCB_depth = 3.7; // depth of PCB casing - if changed check casing
R03_PCB_connector_overlay = 2.5; // additional depth of PCB casing on connectors side - if changed check casing
R03_PCB_elevation = 2; // additional elevation of PCB for waterproofing
R03_air_tube_diameter = 2; // air tubes diameter
R03_sensor_offset = 2.2;  // SDP33 distance from PCB border to sensor
R03_sensor_pitch = 4.3;  // SDP33 distance between sensors
R03_sensor_diameter = 3.5;  // SDP33 sensor diameter
R03_sensor_depth = 2.5;  // SDP33 sensor depth
R03_slip_ring_offset = 0; // slip-ring offset from tube center
R03_venturi_tube_height = 150;  // Venturi tube height (limited by max print size)
R03_wall_thickness = 3; // Venturi tube wall thickness
R03_sealing_ring_thickness = 1.5; // sealing ring size
R03_fin_width = 0.8; // width of vertical stabilizator
R03_fin_length = 150; // length of vertical stabilizator
R03_fin_height = 150; // height of vertical stabilizator
R03_fin_holder_width = M3_bolt_head_height + M3_bolt_length + M3_nut_height;
R03_fin_holder_height = M3_nut_diameter + 2*R03_wall_thickness;
R03_fin_holder_depth = R03_wide_D/2 + R03_fin_holder_height;
R03_balance_shelf_width = 20; // width of shelf for balance weights
R03_balance_shelf_height = 10; // height of shelf for balance weights
