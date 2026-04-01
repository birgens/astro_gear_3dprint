include <BOSL2/std.scad>
include <BOSL2/threading.scad>

eps = 0.15;
$fn = 360/3;
//difference(){
//    linear_extrude(3)circle(28/2-0.1);
//    linear_extrude(4)circle(21/2);
//    translate([0,0,1.5])linear_extrude(3)circle(25/2+0.12);
// 
//    linear_extrude(2.6)difference() {
//    circle(28/2); //14
//    circle(13.6); // 13.5
//    }
//    
//    linear_extrude(2.2)difference() {
//    circle(28/2); //14
//    circle(13.2); // 13.5
//    }
//    
//    linear_extrude(1.8)difference() {
//    circle(28/2);
//    circle(13); //13
//}
//};
//


//translate([35,0,0])difference(){
//    linear_extrude(1.6)circle(14-0.1);
//    linear_extrude(2)circle(21/2);
//    translate([0,0,0.8])linear_extrude(4)circle(25/2+eps);
//};
//
//rotate_extrude()
//polygon([
//[25/2+0.12,0],[25/2+0.12,2.5],[12,3],[12,3.8],
//[26/2+0.,3.8],
//[26/2+0,1.5],
//,[28/2-0.1,0]
//]);

rotate_extrude()
polygon([
[25/2+0.12,0],[25/2+0.12,2.5],[12,3],[12,4.],
[28/2-0.2,4.]
,[28/2-0.2,0]
]);

translate([0,0,2])
difference(){
    threaded_rod(d=28.3, l=0.75*3, pitch=0.75);
    cylinder(h=4,r=25/2+0.12,center=true);
}

translate([26/2,0,3.8])cube(1.5,center=true);

translate([-26/2,0,3.8])cube(1.5,center=true);
