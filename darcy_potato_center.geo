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
Line Loop(1) = {2, 3, 4, 5};
//+
Plane Surface(1) = {1};
//+
Extrude {0, 0, 0.1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
//+
Physical Surface("potato_surface") = {2, 5, 4, 3};
//+
Physical Surface("front_face") = {6};
//+
Physical Surface("back_face") = {1};
//+
Physical Volume("potato_inside") = {1};
Characteristic Length {1, 2, 3, 4} = 0.02;
//+
//+
//+
Sphere(2) = {0, 0, 0.05, 0.05, -Pi/2, Pi/2, 2*Pi};
Characteristic Length {9, 10} = 0.01;
//+
Physical Surface("potato_center") = {7};
