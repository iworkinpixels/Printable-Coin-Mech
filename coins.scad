/**
 *  This file contains all the sizes of US currency that I want to use in my
 *  coin-operated soda machine.  If you want more coins, add 'em! I got my
 *	info from this website:
 *	http://www.usmin.gov/about_the_mint/?action=coin_specifications
 */


/* CONSTANTS, FOR YOUR CONVENIENCE! */
R_COINMAX = 26/2;  // So the biggest coin will fit through the mech
T_COINMAX = 3;		// So the thickest coin will fit through the mech

R_QUARTER = 24.26/2;
T_QUARTER = 1.75;

R_DIME = 17.91/2;
T_DIME = 1.35;

R_NICKEL = 21.21/2;
T_NICKEL = 1.95;

R_PENNY = 19.05/2;
T_PENNY = 1.55;

module Quarter() { cylinder(h=T_QUARTER,r=R_QUARTER,$fn=100,center=true); }
module Dime(){ cylinder(h=T_DIME,r=R_DIME,$fn=100,center=true); }
module Nickel(){ cylinder(h=T_NICKEL,r=R_NICKEL,$fn=100,center=true); }
module Penny(){ cylinder(h=T_PENNY,r=R_PENNY,$fn=100,center=true); }
