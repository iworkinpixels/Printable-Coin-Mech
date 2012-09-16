include <coins.scad>;
include <cradles.scad>;
include <mech_top.scad>;
include <mech_bottom.scad>;

/* These show the cradles at a full 90 degree rotation.  Will it let go of the coin before then?  No idea! */
//translate([-3.75,-25,0]) rotate([0,0,-90]) QuarterCradle(true);
//translate([-3.75,-25-(1*CRADLE_VDIST)-(1 * R_COINMAX),0]) rotate([0,0,-90]) NickelCradle(true);
//translate([-3.75,-25-(2*CRADLE_VDIST)-(2 * R_COINMAX),0]) rotate([0,0,-90]) PennyCradle(true);
//translate([-3.75,-25-(3*CRADLE_VDIST)-(3 * R_COINMAX),0]) rotate([0,0,-90]) DimeCradle(true);
//HorizontalChutes();

//translate([0,0,2-T_COINMAX]) MechTop();
translate([0,0,10.4-T_COINMAX]) MechBottom();
//translate([0,(-(0*CRADLE_VDIST)-(0 * R_COINMAX)),0]) QuarterCradle();
//translate([0,(-(1*CRADLE_VDIST)-(1 * R_COINMAX)),0]) NickelCradle();
//translate([0,(-(2*CRADLE_VDIST)-(2 * R_COINMAX)),0]) PennyCradle();
//translate([0,(-(3*CRADLE_VDIST)-(3 * R_COINMAX)),0]) DimeCradle();

//%translate([0,-70,0]) cube([145,245,150],center=true); // Replicator build volume