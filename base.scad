// Centrifugal Puzzle Box - Base Model

module cpbBase(radius, width, thickness, clearance){
    difference(){
        // Main Body
        cylinder(h=width, r=radius);
        // Entrance Hole
        translate([0,0,thickness]) 
            cylinder(h=width, r=radius-4*thickness);
        // Container Hole
        translate([0,0,thickness]) 
            cylinder(h=width-5*thickness, r=radius-thickness);
        // Pin Holes
        translate([0,0,width - 2*thickness]) 
            rotate([90,0,0])
                cylinder(h=2*radius-2*thickness, r=thickness, center=true);
        translate([0,0,width - 2*thickness]) 
            rotate([0,90,0])
                cylinder(h=2*radius-2*thickness, r=thickness, center=true);
    }
}




// Main Model
radius = 40;
width = 20;
thickness = 2;

clearance = 0.5;

cpbBase(radius, width, thickness, clearance);