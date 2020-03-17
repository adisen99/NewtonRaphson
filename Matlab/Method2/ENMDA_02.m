% This is the MATLAB file to run that finds the solution and calls the 
% Fun, Funder files into the NewtonRoot function defined in the NewtonRoot.m file.

format short g
clc
xSolution = NewtonRoot(@Fun,@FunDer,2,0.001,4)

  