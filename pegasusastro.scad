
module papbv2bottom() {
    union(){
        cube([70,110,3]);
        difference(){
            cube([26,3,18]);
            translate([5,5.,12.2]) rotate([90,0,0]) cylinder(h=30,r=1.6,center=true,$fn=18);
            translate([10,5.,12.2]) rotate([90,0,0]) cylinder(h=30,r=1.6,center=true,$fn=18);
        }
        
    }
}

module papbv2vertholes(){
    difference() {
        translate([0,0,0])cube([10,3.5,22]);
        translate([5,0,9])rotate([90,0,0]) 
            cylinder(h=30,r=1.75,center=true,$fn=18);
        translate([5,0,17]) 
        rotate([90,0,0]) 
            cylinder(h=30,r=1.75,center=true,$fn=18);}}

module papbv2top() {
    union(){
        translate([0,0,0])
            cube([60,108,3]);
        translate([0,0,0])
            cube([60,3.5,5]);
        translate([0,104.5,0])
            cube([60,3.5,5]);
        translate([1,104.5,3])        
            papbv2vertholes();
        translate([49,0,3])
            papbv2vertholes();
    }
}

//papbv2top();
