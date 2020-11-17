% Performs the Gauss-Seidel method with successive over-relaxation (SOR) to
% iteratively find the solution to Ax=b.
% 
% @param {A} nxn, real, nonsingular matrix
% @param {b} real vector in Rn
% @param {x0} initial guess
% @param {w} relaxation parameter 1<w<2
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution vector in Rn
function [x] = gauss_seidel_sor_method(A,b,x0,w,atol)
    disp('---Solving Ax=b by Gauss-Seidel Method with SOR---');
    L = tril(A);
    D = diag(diag(A));
    M = (1-w)/w*D + L;
    disp('M=(1-w)/w*D + L');
    disp(M);
    xk = x0;
    rk = b - A*xk;
    xk1 = xk + M^(-1)*rk;
    disp('Iteration 0');
    disp(transpose(xk));
    disp('Iteration 1');
    disp(transpose(xk1));
    i = 2;
    while norm(xk1 - xk) >= atol
        xk = xk1;
        rk = b - A*xk;
        xk1 = xk + M^(-1)*rk; 
        fprintf('Iteration %d\n',i);
        disp(transpose(xk1));
        i = i+1;
    end
    x = xk1;
    disp('Solving Ax=b by Gauss-Seidel Method with SOR Result:');
    disp(x);
end