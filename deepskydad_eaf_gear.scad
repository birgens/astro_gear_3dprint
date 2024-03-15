include <nutsnbolts/cyl_head_bolt.scad>;

//worm(modul=5, tooth_number=10, thread_starts=5, length=0, bore=10, pressure_angle=20, lead_angle=10, together_built=true);
/*
Calculates a worm wheel set. The worm wheel is an ordinary spur gear without globoidgeometry.
modul = Height of the screw head above the partial cylinder or the tooth head above the pitch circle
tooth_number = Number of wheel teeth
thread_starts = Number of gears (teeth) of the screw
width = tooth_width
length = Length of the Worm
worm_bore = Diameter of the Center Hole of the Worm
gear_bore = Diameter of the Center Hole of the Spur Gear
pressure_angle = Pressure Angle, Standard = 20° according to DIN 867. Should not exceed 45°.
lead_angle = Pitch angle of the worm corresponds to 90 ° bevel angle. Positive slope angle = clockwise.
optimized = Holes for material / weight savings
together_built =  Components assembled for construction or apart for 3D printing */

module gear(teeth, step, height=0.2) {
    angle = 360/(teeth*2);
    radius = (step/2) / sin(angle/2);
    apothem = (step/2) / tan(angle/2);
    
    module circles() {
        for (i = [1:teeth])
            rotate(i * angle * 2) translate([radius,0,0]) circle(step/2);
    }
    
    linear_extrude(height) difference() {
        union() {
            circle(apothem);
            circles();
        }
        rotate(angle) circles();
    }
}

function profile(x)=1.5*sin(x);
function r(theta)=15+profile(34*theta);
points=[for (i = [0 : 1 : 360]) r(i)*[cos(i),sin(i) ]];
    echo(points);
linear_extrude(50){polygon(points);}

v=[1,0,0];


$fn=36;
fix_screws = "M3";
inner_radius=2.5;
teeth=34;
step=1.5;
outer_radius=(step/2)/sin(360/(teeth*4));
echo(outer_radius);
//16.5
difference(){
    union(){
        translate([0,0,6/2])cylinder(h=8,r=outer_radius+step,center=true);
        translate([0,0,6])gear(teeth, step,height=8);
}
cylinder(h=50,r=2.5,center=true);

translate([-outer_radius/2,0,3])rotate([0,90,0])
    nutcatch_sidecut(name=fix_screws,
                     l=50.0, clk=0.1, 
                     clh=0.1,clsl=0.1);
translate([inner_radius+outer_radius/2,0,3])rotate([0,90,0])
    nutcatch_sidecut(name=fix_screws,
                     l=50.0, clk=0.1, 
                     clh=0.1,clsl=0.1);
translate([25,0,3])rotate([0,90,0])hole_through(name=fix_screws);

}
