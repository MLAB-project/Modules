$fn = 100;


module LCD_frontPanel(){
	WIDTH = 7; // pocet der na zakl desku. Def je 7
	FOOT_X_SHIFT = 0; // posun v ose X, tzn. vysunutí ven, nebo dovnitř. 0 je v rovine s kratsi hranou zakl. desky ASBASE1115
	DISPLAY_Z_SHIFT = 2; // mezera, která vznikne mezi "nohou" a spodní hranou PCB
	FOOT_THICK = 7; // síla spodní "nohy" (toho, v cem jsou srouby)
	BHEAD_HEIGHT = 2.5; // vyska hlavicky sroubu
	BHEAD_DIAMETER = 6; // vyska hlavicky sroubu
	BOLT_DIAMETER = 3.2; // vyska hlavicky sroubu
	NUT_HEIGHT = 2.1; // vyska matky
	NUT_DIAMETER = 6; // vyska matky
	CLEAR = 0.1;
	
	BOX_HEIGHT = 45;
	BOX_WIDTH = 80;
	BOX_THICKENESS = 1;
	
	difference(){
	union(){
		translate([-BOX_WIDTH/2, 8-BOX_THICKENESS, -18-FOOT_THICK]) cube([BOX_WIDTH,BOX_THICKENESS,BOX_HEIGHT]);
		translate([0, 4 +FOOT_X_SHIFT, 0+DISPLAY_Z_SHIFT/2]) cube([80,8,36+DISPLAY_Z_SHIFT], center=true);
		translate([0, 4 +FOOT_X_SHIFT/2, (-36-FOOT_THICK)/2]) cube([80,8+FOOT_X_SHIFT,FOOT_THICK], center=true);
		translate([+75/2, 0, +31/2+DISPLAY_Z_SHIFT]) rotate([90,0,0]) cylinder(FOOT_THICK, 2.3/2, 2.3/2);
		translate([+75/2, 0, -31/2+DISPLAY_Z_SHIFT]) rotate([90,0,0]) cylinder(FOOT_THICK, 2.3/2, 2.3/2);
		translate([-75/2, 0, +31/2+DISPLAY_Z_SHIFT]) rotate([90,0,0]) cylinder(FOOT_THICK, 2.3/2, 2.3/2);
		translate([-75/2, 0, -31/2+DISPLAY_Z_SHIFT]) rotate([90,0,0]) cylinder(FOOT_THICK, 2.3/2, 2.3/2);
		hull(){
			translate([-40+10.16/2, -0.8, (-36)/2-FOOT_THICK]) cylinder(FOOT_THICK, 10.16/2, 10.16/2);
			translate([+40-10.16/2, -0.8, (-36)/2-FOOT_THICK]) cylinder(FOOT_THICK, 10.16/2, 10.16/2);
		}
		/*#hull(){
			translate([-5.08 + (-WIDTH/2+1)*10.16, -0.8, (-36)/2-FOOT_THICK]) cylinder(FOOT_THICK, 10.16/2, 10.16/2);
			translate([-5.08 + (-WIDTH/2+5)*10.16, -0.8, (-36)/2-FOOT_THICK]) cylinder(FOOT_THICK, 10.16/2, 10.16/2);
		}*/
	}
	union(){
		translate([0, 4 + FOOT_X_SHIFT, +DISPLAY_Z_SHIFT]) cube([72,8,25.3], center=true);
		translate([-5, FOOT_X_SHIFT, 36/2-4+DISPLAY_Z_SHIFT]) cube([41,4,4]);
		for (x=[1:WIDTH]){
			translate([-5.08 + (-WIDTH/2+x)*10.16, -0.8, (-36)/2-FOOT_THICK]) cylinder(12, BOLT_DIAMETER/2, BOLT_DIAMETER/2);
			translate([-5.08 + (-WIDTH/2+x)*10.16, -0.8, (-36)/2-BHEAD_HEIGHT]) cylinder(3+10, BHEAD_DIAMETER/2, BHEAD_DIAMETER/2);
			translate([-5.08 + (-WIDTH/2+x)*10.16, -0.8, (-36)/2-FOOT_THICK]) cylinder(NUT_HEIGHT, NUT_DIAMETER/2, NUT_DIAMETER/2, $fn=6);
		
		}
	}
	}
}


LCD_frontPanel();