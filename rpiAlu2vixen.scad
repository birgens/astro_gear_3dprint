include <stack_mount.scad>;
include <shoes.scad>;

difference(){
union(){
    cube([50,60,3]);
    translate([50/2,20,5/2+3])cube([28,40,5],center=true);
    translate([50/2,20,20])rotate([0,180,90])finder_foot(length=40,center=true);
    
    for(i=[6:4:44]){
    translate([i,0,-1.5])cube([1.5,60,6]);
    translate([i,0,-1.5])cube([1.5,60,6]);
    };
}
for(i=[15:5:35]){
translate([i,30,6])rotate([90,0,0])cylinder(h=60,r=1,center=true);
}}

