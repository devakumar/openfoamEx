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
Circle(17) = {0, 0, 0, 5, 0, 2*Pi};
//+
Line Loop(10) = {17};
//+
Line Loop(11) = {5, 2, 3, 4};
//+
Plane Surface(8) = {10, 11};

//+
Extrude {0, 0, 0.1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Extrude {0, 0, 0.1} {
  Surface{8}; Layers{1}; Recombine;
}
//+
Characteristic Length {1, 2, 3, 4, 5} = 0.02;
//+
Characteristic Length {6} = 0.2;

//+
Physical Surface("oven_boundary") = {15};
//+
Physical Surface("potato_surface") = {9, 10, 11, 12};
//+
Physical Surface("potato_center") = {13};
//+
Physical Volume("potato_volume") = {1};
//+
Physical Volume("oven_volume") = {2};


Mesh.ScalingFactor=0.005; 

