gmshtoFoam .msh
goto boundary edit front and back to empty
change initial condition in 0/T
checkMesh
renumberMesh -overwrite
laplaceSolve
