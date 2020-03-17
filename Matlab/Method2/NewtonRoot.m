% Main code that defines the algorithm of Newton-Raphson method to determine the root.
% Works great for MATLAB programs downloaded without access to the Mathtools.

function Xs = NewtonRoot(Fun,FunDer,Xest,Err,imax)
% NewtonRoot finds the root of Fun=0 near the point Xest using Newton's nethod.
% Input variables:
% Fun Name of a user-defined function that calculates Fun for a given x.
% FunDer Name of a user-defined function that calculates the derivative
% of Fun for a given x .
% Xest Initial estimate o f the solution.
% Err Maximum error.
% imax Maximum number of iterations
% Output variable:
% Xs Solution
for i = 1:imax

Xi = Xest - Fun(Xest)/FunDer(Xest);
    if abs((Xi - Xest)) <Err
    Xs = Xi;
    break
    end
Xest = Xi;
A(i)=Xi
end
if i== imax

fprintf('Solution was not cbtained in %i iterations. \n' ,imax)
Xs =( 'No answer ' );
end