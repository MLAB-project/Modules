$fn=40; // model faces resolution.

//OBECNE PARAMETRY 
//----------------------------------------------------------------
//----------------------------------------------------------------
//WINDGAUGE02A_S02 - Parametry pro hlavni valec anemometru
S01_hloubka_zavitu=4;
S01_vyska=95; //80
S01_prumer_vnitrni=45;
S01_prumer_vnitrniB=30;
S01_prechod_vyska=45;
S01_prechod_delka=30;
S01_sila_materialu=1.3;
S01_vyska_horni_zavit=10;
S01_vyska_spodniho_zavitu=10;
S01_sila_drzaku_RJ11=3; //vyška drážky
S01_hrana_A_RJ11=12.3;
S01_hrana_B_RJ11=19;
S01_tolerance_zavit=1.5;

//Obecné parametry
prumer_osicky=5;
sterbina_na_osicku=0.5; //aby nepraskal a držel držák rotoru na hřídelce

//Rozmery modulu pro lozisko
senzor_delka=10.16*4;
senzor_sirka=10.16*3;
senzor_vyska_IO=2;
senzor_odstup_od_magnetu=2;

//Parametry loziska
lozisko_prumer_vnitrni=4.9;
lozisko_prumer_vnejsi=16.15;
lozisko_vyska=5*2;
lozisko_prekryv=1.5;

//Parametry magnetu
magnet_pocet=3;
magnet_prumer=6.3;
magnet_vyska=3;
magnet_zapusteni=2;
magnet_tolerance_prumeru=0.2;
magnet_vzdalenost = 9; // vzdalenost magnetu od stredu

R03_vyska_narezeni_hridelky=5;

//Parametry sroubu
prumer_sroubu=3.4;
prumer_hlavy_sroubu=6;
vyska_hlavy_sroubu=4;
vyska_matky=3;
sirka_matky=6.7;

sirka_matky_tol=0.175;
prumer_orechu=10;

//WINDGAUGE02A_R01 //pro lopatku
L01_hrana_drzaku_a=10;
L01_hrana_drzaku_b=3;
L01_delka_uchytu=25;
L01_prumer_lopatky=40;
L01_sila_materialu_lopatky=1.2;

//WINDGAUGE02A_D01 //uchyt velky
D01_material_pod_zavitem=5;
D01_material_za_zavitem=3;
D01_material_pred_zavitem=2;
D01_delka_tyce=60;
D01_sirka_tyce=10;

//WINDGAUGE02A_D02 //uchyt na sloup
D02_sila_materialu=4;
D02_vyska_uchytky=30;
D02_prumer_obruby=24; 

//27mm - 3/4 trubka
D02_delka_celeho_uchytu=60;
D02_dotahova_vzdalenost=1.5;
D02_prumer_uchytneho_sroubu=4.2;
//D02_sirka_matky=9.1; //pro M4
//D02_vyska_matky=3;
D02_sirka_matky= sirka_matky; //pro M3
D02_vyska_matky= vyska_matky;

//WINDGAUGE02A_R01 //rotor s prekritim statoru
R01_vyska_preryti_statoru=10;
R01_sila_materialu_pro_prekriti=1.3;
R01_mezera_mezi_statorem_rotorem=3;

//WINDGAUGE02A_R03 //drzak magnetu
R05_sirka_matky=10;
























