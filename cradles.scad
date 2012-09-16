CRADLE_VDIST = 26.5;  // Distance that the cradles have to be between each other

module CradleBase() {
	translate([-2,-2,0-(T_COINMAX/2)]) {
		difference(){
			cylinder(h=T_COINMAX,r=R_COINMAX+5,$fn=100,center=true);

			// Cut the hole for the pin.
			rotate([0,0,125]) translate([0,2+R_COINMAX,0]) cylinder(h=T_COINMAX+5,r=1.5,$fn=100,center=true);

			// Cut off the top and the bottom.
			translate([0,R_COINMAX,0]) cube([R_COINMAX*4,R_COINMAX*2,T_COINMAX+2],center=true);
			translate([0,0-(R_COINMAX*2),0]) cube([R_COINMAX*2,R_COINMAX*2,T_COINMAX+2],center=true);

			// Remove some more material from the bottom of the cradle.
			translate([4,6-(R_COINMAX*2),0]) cube([R_COINMAX*2,R_COINMAX*2,T_COINMAX+2],center=true);

			// Clip off the top corners
			translate([-18,0,0]) rotate([0,0,45]) cube([16,12,2*T_COINMAX-2],center=true);
			translate([22,0,0]) rotate([0,0,-45]) cube([16,12,2*T_COINMAX-2],center=true);

			// Clip off the bottom corner.
			translate([-8,-13,0]) rotate([0,0,45]) cube([10,6,2*T_COINMAX-2],center=true);
		}
	}
}

module CoinPin() {
	translate([0,0,T_COINMAX]) cylinder(h=T_COINMAX*2.25,r=2,$fn=100,center=true);
}

module QuarterCradle(just_pins=false){
	union(){
		if(!just_pins) CradleBase();
		//%translate([0,0,(T_QUARTER/2)]) Quarter();  // Quarter stuck in cradle
		//%translate([4,4.5,(T_QUARTER/2)]) Quarter();  // Quarter rolling off the pin
		//%translate([0,(5-R_NICKEL),(T_NICKEL/2)]) Nickel(); // Nickel falling through cradle
		translate([(-2.25-R_NICKEL),(4-R_NICKEL),0]) CoinPin();
		translate([(2.25+R_NICKEL),(4-R_NICKEL),0]) CoinPin();
	}
}

module NickelCradle(just_pins=false){
	union(){
		if(!just_pins) CradleBase();
		//%translate([0,0,(T_NICKEL/2)]) Nickel();  // Nickel stuck in cradle
		//%translate([4,4.5,(T_NICKEL/2)]) Nickel();  // Nickel rolling off the pin
		//%translate([0,(5-R_PENNY),(T_PENNY/2)]) Penny();  // Penny falling through cradle
		translate([(-2.25-R_PENNY),(4-R_PENNY),0]) CoinPin();
		translate([(2.25+R_PENNY),(4-R_PENNY),0]) CoinPin();
	}
}

module PennyCradle(just_pins=false){
	union(){
		if(!just_pins) CradleBase();
		//%translate([0,0,(T_PENNY/2)]) Penny(); // Penny stuck in cradle
		//%translate([4,4.5,(T_QUARTER/2)]) Penny();  // Penny rolling off the pin
		//%translate([0,(5-R_DIME),(T_DIME/2)]) Dime();  // Dime falling through cradle
		translate([(-2.25-R_DIME),(4-R_DIME),0]) CoinPin();
		translate([(2.25+R_DIME),(4-R_DIME),0]) CoinPin();
	}
}

module DimeCradle(just_pins=false){
	union(){
		if(!just_pins) CradleBase();
		//%translate([0,0,(T_DIME/2)]) Dime();  // Dime stuck in cradle
		//%translate([4,4.5,(T_QUARTER/2)]) Dime();  // Dime rolling off the pin
		translate([(-1-R_DIME),(4-R_DIME),0]) CoinPin();
		translate([(1+R_DIME),(4-R_DIME),0]) CoinPin();
	}
}

/**
 * These modules are here to cut holes into the sides the coin mech.
 */
module CradleNegative() {
	translate([-14.25,-10.75,T_COINMAX*2+1]) {
		difference(){
			cylinder(r=2*R_COINMAX+4.5,h=2*T_COINMAX+1,$fn=100,center=true);
			difference(){
				cylinder(r=2*R_COINMAX-4,h=3*T_COINMAX+2,$fn=100,center=true);
				difference(){
					cylinder(r=R_COINMAX-2,h=3*T_COINMAX+2,$fn=100,center=true);
				}
			}
			translate([0,2*R_COINMAX-3,0]) cube([5*R_COINMAX,2*R_COINMAX+4.5,3*T_COINMAX+3],center=true);
			translate([9.75-(2*R_COINMAX),0,0]) cube([2*R_COINMAX+4.5,5*R_COINMAX,4*T_COINMAX+4],center=true);
		}
	}
}

module CradleHole() {
	translate([-14.25,-10.75,T_COINMAX*2+1]) {
		difference() {
			cylinder(r=2*R_COINMAX+6.5,h=3*T_COINMAX+1,$fn=100,center=true);
			translate([0,2*R_COINMAX+1,0]) cube([5*R_COINMAX,2*R_COINMAX+4.5,3*T_COINMAX+3],center=true);
			translate([-15,-3*R_COINMAX-2,0]) rotate([0,0,-70]) cube([4*R_COINMAX,4*R_COINMAX+4.5,3*T_COINMAX+3],center=true);
		}
	}
}