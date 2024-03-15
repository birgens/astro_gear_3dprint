include <rpi4_case.scad>;
include <pegasusastro.scad>;
include <raspberrypi.scad>;
include <shoes.scad>;

difference(){
union(){
    rotate([0,-90,0])papbv2top();
    translate([3,92.5,58])
    rotate([0,90,0])
    rotate([0,0,-90]) 
    difference(){
        rpi4_case();
        topSelector();
}}
translate([-3,69.0,54.7])
    rotate([-90,0,0])rotate([0,90,0])
    rpi4bholes();
}

//difference(){
//intersection(){ // bottom of case
//  rpi4_case();
//  topSelector();
//}
//  cube([85,60,5]);
//}
//
//translate([78,10,14])rotate(90)finder_shoe(35);