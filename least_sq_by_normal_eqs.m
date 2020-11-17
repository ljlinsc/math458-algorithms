% Solves the least squares problem using normal equations.
% 
% @param {A} mxn, full column rank matrix
% @param {b} real vector in Rm
% @returns {x} solution vector in Rn
function [x] = least_sq_by_normal_eqs(A,b)
    disp('---Solving least squares by Normal Equations---');
    B = transpose(A) * A;
    y = transpose(A) * b;
    G = cholesky_factorization(B);
    z = forward_substitution(G,y);
    x = backward_substitution(transpose(G),z);
    disp('B');
    disp(B);
    disp('y');
    disp(y);
    disp('G');
    disp(G);
    disp('z');
    disp(z);
    disp('Solving least squares by Normal Equations Result:');
    disp(x);
end