wall_height=20;
wall_length=20;
wall_width=20;

window_height=5;
window_length=1;
window_width=5;

door_height=12;
door_length=15;
door_width=5;

bush_size=1;



difference(){

cube([wall_height,wall_width,wall_length]);

translate([10,10,10]) cube([18,18,38], center=true);

rotate(a=90) translate([3,0,9]) cube([window_width,window_length,window_height]);

rotate(a=90) translate([13,0,0]) cube([door_width,door_height,door_height]);

}

translate([-1,12,0]) sphere(bush_size);
translate([-1,10,0]) sphere(bush_size);
translate([-1,8,0]) sphere(bush_size);
translate([-1,6,0]) sphere(bush_size);
translate([-1,4,0]) sphere(bush_size);
translate([-1,2,0]) sphere(bush_size);
translate([-1,0,0]) sphere(bush_size);
translate([-5,0,0]) sphere(bush_size);
translate([-5,2,0]) sphere(bush_size);
translate([-5,4,0]) sphere(bush_size);
translate([-5,6,0]) sphere(bush_size);
translate([-5,8,0]) sphere(bush_size);
translate([-9,0,0]) sphere(bush_size);
translate([-9,2,0]) sphere(bush_size);
translate([-9,4,0]) sphere(bush_size);
translate([-9,6,0]) sphere(bush_size);
translate([-13,0,0]) sphere(bush_size);
translate([-13,2,0]) sphere(bush_size);
translate([-13,4,0]) sphere(bush_size);
translate([-17,0,0]) sphere(bush_size);
translate([-17,2,0]) sphere(bush_size);
translate([-21,0,0]) sphere(bush_size);


translate([10,10,20]) polyhedron(
  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], // the four points at base
           [0,0,10]  ],                                 // the apex point 
  triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],          // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );


