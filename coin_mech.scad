include <coins.scad>;
include <cradles.scad>;
include <mech_top.scad>;
include <mech_bottom.scad>;

/* These show the cradles at a 70 degree rotation.  Seems to be the point at which the cradle lets go.  I gave it a bumper to help it out. */
//translate([0.5,-20.5,0]) rotate([0,0,-70]) QuarterCradle();
//translate([0.5,-20.5-(1*CRADLE_VDIST)-(1 * R_COINMAX),0]) rotate([0,0,-70]) NickelCradle();
//translate([0.5,-20.5-(2*CRADLE_VDIST)-(2 * R_COINMAX),0]) rotate([0,0,-70]) PennyCradle();
//translate([0.5,-20.5-(3*CRADLE_VDIST)-(3 * R_COINMAX),0]) rotate([0,0,-70]) DimeCradle();
//HorizontalChutes();

translate([0,0,1-T_COINMAX]) MechTop();
//translate([0,0,10.4-T_COINMAX]) MechBottom();
//translate([0,(-(0*CRADLE_VDIST)-(0 * R_COINMAX)),0]) QuarterCradle();
//translate([0,(-(1*CRADLE_VDIST)-(1 * R_COINMAX)),0]) NickelCradle();
//translate([0,(-(2*CRADLE_VDIST)-(2 * R_COINMAX)),0]) PennyCradle();
//translate([0,(-(3*CRADLE_VDIST)-(3 * R_COINMAX)),0]) DimeCradle();

//%translate([0,-70,0]) cube([145,245,150],center=true); // Replicator build volume