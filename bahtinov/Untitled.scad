$fn=90;
h_mask = 3;
R_tube = 174/2 + 0.35;
R_outer = R_tube + 3;
h_rim = 15;

linear_extrude(h_mask)import("mask_120ed_v1.svg",center=true);

difference() {
    cylinder(h_rim,R_outer,R_outer);
    translate([0,0,h_mask])cylinder(h_rim+h_mask+.1,R_tube,R_tube);
    cylinder(h_mask+.1,R_tube-1,R_tube-1);

}