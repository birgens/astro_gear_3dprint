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

module powerbox_screw_hole() {
    cylinder(h=30,r=2,center=true,$fn=18);}

module powerbox_horisontal_holes(){
    rotate([90,0,0])
    union(){
        translate([16,0,0]) powerbox_screw_hole();
        translate([0,0,0]) powerbox_screw_hole();
    }
}

module powerbox_vertical_holes(){
    rotate([90,-90,0])union(){
        translate([8,0,0]) powerbox_screw_hole();
        translate([0,0,0]) powerbox_screw_hole();
    }
}

module powerbox_holes(){
    union(){
        // Screw holes
        translate([13,0,12.6]) powerbox_vertical_holes();
        translate([12+16+15+1,0,12.6]) powerbox_horisontal_holes();
        translate([71-12+1,100,12.6]) powerbox_vertical_holes();
        translate([12,100,12.6]) powerbox_horisontal_holes();
        // Ext hole
        translate([13+14,0,18]) cube([20,15,20],center=true);

    }
}

//powerbox_holes();

module powerbox_enclosure(){
    difference(){
        cube([58,100.7 + 2*3,25.3 + 2*4+1]); // The outer dimensions
        translate([0,3,4])cube([71,100.7+0.4,25.3+0.4]); // PBox dimensions
        translate([-7,0,0])powerbox_holes();
    };
}
//powerbox_enclosure();