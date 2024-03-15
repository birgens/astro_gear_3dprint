include <deep_sky_dad.scad>;
include <nutsnbolts/cyl_head_bolt.scad>
include <plug_holes.scad>

hole_distance = 26;
motor_size = 35;
shaft_radius = 2.5;

$fn=36;
//EAF_shell();

module M3_sink () {
    union(){
        translate([0,0,0])cylinder(h=3,r=4);
        hole_through(name="M3",l=10);
}}

eps=0.1;
module NEMA14(depth){
    translate([-motor_size/2,0,-motor_size/2])
        cube([motor_size+eps,depth,motor_size+eps]);
    
    // Kabler
    translate([0,(depth+25)/2,motor_size/2+5])
        cube([16,depth-25,10],center=true);
    translate([0,(depth+10)/2,motor_size/2+3])
        cube([22,depth-10,6],center=true);
    translate([0,(depth+4)/2,motor_size/2+2])
        cube([30,depth-4,4],center=true);
    
    // Utgang
    rotate([90,0,0])
        cylinder(h=10, r=13, center=true);
    
    // Fester motor
    translate([hole_distance/2,-1.5,hole_distance/2])rotate([90,0,0])
        M3_sink();
    translate([hole_distance/2,-1.5,-hole_distance/2])rotate([90,0,0])
        M3_sink();
    translate([-hole_distance/2,-1.5,hole_distance/2])rotate([90,0,0])
        M3_sink();
    translate([-hole_distance/2,-1.5,-hole_distance/2])rotate([90,0,0])
        M3_sink();}

//depth=50;    
//difference(){
//    EAF_shell(depth);
////    translate([EAF_width/2,3.5,EAF_height-4.5-34+6])NEMA14(depth);    
//    translate([EAF_width/2,3.5,EAF_height-4.5-34+6])NEMA14(depth);
//}

module focuser_back(depth){
    union(){
        difference(){
            EAF_back(depth);
            translate([2,2,3.5])cube([37,30,39]);
            translate([30,12,14.5])rotate([0,0,0])ethernet();        
            translate([30,0,34])rotate([0,0,0])12v();
            for(i=[5:7:15]){
                echo(i);
                translate([5+i,0,7])cube([1,3,30]);
            }
            }
        translate([15,0,0])cube([2,depth,6]);
        translate([11,0,0])cube([2,depth,6]);}}

module elektronikkfeste(){
    cube([28,44,2]);
        for(j=[10,23]){
            for(i=[10:2.5:30]){
                translate([j,i,0])cylinder(h=5,r=0.5);
            }}}

//translate([12,2,2])rotate([90,0,90])difference();

difference(){
    focuser_back(26);
    translate([13,2,3.5])rotate([90,0,90])elektronikkfeste();

}