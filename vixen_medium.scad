include <stack_mount.scad>;
include <shoes.scad>;

difference() {
union(){
    cube([71,106,3]);
    translate([71/2,106/2-13,15/2])cube([28,40,15],center=true);
    translate([71/2,106/2-13,27])rotate([0,180,90])finder_foot(length=40,center=true);
}
    
translate([71/2,106/2+3,-1.5])mount_m4_small(center=true);
translate([71/2,106/2+3,-1.5])mount_m4_medium(center=true);
translate([71/2,106/2+3,-1.5])rotate([0,0,90])mount_m4_medium(center=true);
translate([71/2,106/2,-1.5])rotate([0,0,90])mount_m4_pb(center=true);
cube([100,25,40]);
translate([0,87,0])cube([100,100,20]);
cube([3,110,20]);
translate([68,0,0])cube([3,110,20]);

}

