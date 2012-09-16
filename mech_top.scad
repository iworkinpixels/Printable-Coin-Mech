module HorizontalChutes(){
	translate([35,CRADLE_VDIST+15,T_COINMAX]) rotate([0,0,30]) cube([70,2*R_QUARTER+1,T_COINMAX+1],center=true);

	difference(){
		union() { // Coin chutes.
			translate([35,-1.5-(1*(CRADLE_VDIST)),T_COINMAX-1]) rotate([0,0,-10]) cube([70,2*R_QUARTER+1,T_COINMAX+1],center=true);
			translate([35,-15-(2*(CRADLE_VDIST)),T_COINMAX-1]) rotate([0,0,-10]) cube([70,2*R_NICKEL+1,T_COINMAX+1],center=true);
			translate([35,-28-(3*(CRADLE_VDIST)),T_COINMAX-1]) rotate([0,0,-10]) cube([70,2*R_PENNY+1,T_COINMAX+1],center=true);
			translate([35,-41-(4*(CRADLE_VDIST)),T_COINMAX-1]) rotate([0,0,-10]) cube([70,2*R_DIME+1,T_COINMAX+1],center=true);
		}
		translate([-12,-12,0]){ // Clip off the end of the coin chutes so they don't cut into the cradle area.
			translate([0,(-(0*CRADLE_VDIST)-(0 * R_COINMAX)),0.5]) rotate([0,0,60]) cube([3*R_COINMAX+4.5,3*R_COINMAX+4.5,3*T_COINMAX],center=true);
			translate([0,(-(1*CRADLE_VDIST)-(1 * R_COINMAX)),0.5]) rotate([0,0,60]) cube([3*R_COINMAX+4.5,3*R_COINMAX+4.5,3*T_COINMAX],center=true);
			translate([0,(-(2*CRADLE_VDIST)-(2 * R_COINMAX)),0.5])  rotate([0,0,60]) cube([3*R_COINMAX+4.5,3*R_COINMAX+4.5,3*T_COINMAX],center=true);
			translate([0,(-(3*CRADLE_VDIST)-(3 * R_COINMAX)),0.5])  rotate([0,0,60]) cube([3*R_COINMAX+4.5,3*R_COINMAX+4.5,3*T_COINMAX],center=true);
		}
	}
}

module VertChute(){
	translate([0,-60,T_COINMAX/2+1.5]) cube([2*R_COINMAX,250,T_COINMAX+1],center=true);
}

module MechTopBlank(){
	translate([1.5*R_COINMAX,-63,2.5*T_COINMAX]) cube([6*R_COINMAX,210,2*T_COINMAX],center=true);
}

module MechTop(){
	difference(){
		MechTopBlank();
		translate([0,0,-2*T_COINMAX-2.4]) VertChute();
		translate([0,0,-2*T_COINMAX-2.4]) HorizontalChutes();

		translate([0,(-(0*CRADLE_VDIST)-(0 * R_COINMAX)),-1]) {
			CradleNegative();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(1*CRADLE_VDIST)-(1 * R_COINMAX)),-1]) {
			CradleNegative();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(2*CRADLE_VDIST)-(2 * R_COINMAX)),-1]) {
			CradleNegative();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(3*CRADLE_VDIST)-(3 * R_COINMAX)),-1]) {
			CradleNegative();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
	}
}
