// Centrifugal Puzzle Box - Lid Model

module cpbLid(radius, thickness, clearance){
    difference(){
        cylinder(h=4*thickness, r=radius-4*thickness-clearance);
        cylinder(h=4*thickness, r=radius-7*thickness);
        translate([0,radius-4*thickness,2*thickness]) 
            rotate([90,0,0]) 
                cylinder(h=4*thickness, r=thickness, center=true);
        translate([0,-radius+4*thickness,2*thickness]) 
            rotate([90,0,0]) 
                cylinder(h=4*thickness, r=thickness, center=true);
        translate([-radius+4*thickness,0,2*thickness]) 
            rotate([0,90,0]) 
                cylinder(h=4*thickness, r=thickness, center=true);
        translate([radius-4*thickness,0,2*thickness]) 
            rotate([0,90,0]) 
                cylinder(h=4*thickness, r=thickness, center=true);
    }
    translate([0,0,4*thickness]) 
        cylinder(h=thickness, r=radius);
    translate([0,0,8*thickness]) 
        sphere(r=4*thickness);
}




// Main Model
radius = 40;
width = 20;
thickness = 2;

clearance = 0.5;

cpbLid(radius, thickness, clearance);