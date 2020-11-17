% Performs the Gauss-Seidel method to iteratively find the solution to
% Ax=b.
% 
% @param {A} nxn, real, nonsingular matrix
% @param {b} real vector in Rn
% @param {x0} initial guess
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution vector in Rn
function [x] = gauss_seidel_method(A,b,x0,atol)
    disp('---Solving Ax=b by Gauss-Seidel Method---');
    L = tril(A);
    disp('M=L')
    disp(L);
    xk = x0;
    rk = b - A*xk;
    xk1 = xk + L^(-1)*rk;
    disp('Iteration 0');
    disp(transpose(xk));
    disp('Iteration 1');
    disp(transpose(xk1));
    i = 2;
    while norm(xk1 - xk) >= atol
        xk = xk1;
        rk = b - A*xk;
        xk1 = xk + L^(-1)*rk; 
        fprintf('Iteration %d\n',i);
        disp(transpose(xk1));
        i = i+1;
    end
    x = xk1;
    disp('Solving Ax=b by Gauss-Seidel Method Result:');
    disp(x);
end