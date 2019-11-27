//+
SetFactory("OpenCASCADE");
//+
Point(1) = {-1, -1, 0};
//+
Point(2) = {-1, 1, 0};
//+
Point(3) = {1, 1, 0};
//+
Point(4) = {1, -1, 0};

//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {1, 2};

//+
Circle(6) = {0, 0, 0, 0.03, 0, 2*Pi};
//+
Line Loop(1) = {2, 3, 4, 5};
//+
Line Loop(2) = {6};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 0.1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Physical Surface("potato_surface") = {5, 2, 3, 4};
//+
Physical Surface("front_face") = {7};
//+
Physical Surface("back_face") = {1};
//+
Physical Volume("potato_inside") = {1};
//+
Physical Surface("potato_center") = {6};
//+
Characteristic Length {1, 2, 3, 4, 5} = 0.02;

Mesh.ScalingFactor=0.01; 
