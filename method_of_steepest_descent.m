% Performs the Method of Steepest Descent to iteratively find the solution
% to Ax=b.
% 
% @param {A} nxn, real, nonsingular matrix
% @param {b} real vector in Rn
% @param {x0} initial guess
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution vector in Rn
function [x] = method_of_steepest_descent(A,b,x0,atol)
    disp('---Solving Ax=b by the Method of Steepest Descent---');
    xk = x0;
    rk = b - A*xk;
    alphak = (transpose(rk)*rk) / (transpose(rk)*A*rk);
    xk1 = xk + alphak*rk;
    disp('Iteration 0');
    disp(transpose(xk));
    fprintf('Iteration 1: alphak=%d\n',alphak);
    disp(transpose(xk1));   
    i = 2;
    while norm(xk1 - xk) >= atol
        xk = xk1;
        rk = b - A*xk;
        alphak = (transpose(rk)*rk) / (transpose(rk)*A*rk);
        xk1 = xk + alphak*rk;
        fprintf('Iteration %d: alphak=%d\n',i,alphak);
        disp(transpose(xk1));
        i = i+1;
    end
    x = xk1;
    disp('Solving Ax=b by the Method of Steepest Descent Result:');
    disp(x);
end