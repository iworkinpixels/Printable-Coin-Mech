module MechBottomBlank(){
	translate([1.5*R_COINMAX,-63,-2.5*T_COINMAX-3]) cube([6*R_COINMAX,210,2*T_COINMAX+2],center=true);
}

module MechBottom(){
	difference(){
		MechBottomBlank();
		translate([0,0,-2*T_COINMAX-2.5]) VertChute();
		translate([0,0,-2*T_COINMAX-2]) HorizontalChutes();
		translate([0,(-(0*CRADLE_VDIST)-(0 * R_COINMAX)),-13]) {
			CradleHole();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(1*CRADLE_VDIST)-(1 * R_COINMAX)),-13]) {
			CradleHole();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(2*CRADLE_VDIST)-(2 * R_COINMAX)),-13]) {
			CradleHole();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
		translate([0,(-(3*CRADLE_VDIST)-(3 * R_COINMAX)),-13]) {
			CradleHole();
			translate([-14.25,-10.75,T_COINMAX*2+1]) cylinder(h=T_COINMAX*11,r=2,$fn=100,center=true);
		}
	}
}