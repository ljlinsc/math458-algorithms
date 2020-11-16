% Solves Ax=b using LU decomposition given a matrix and vector.
% 
% @param {A} nxn, real, nonsingular matrix
% @param {b} real vector in Rn
% @returns {x} solution vector in Rn
function [x] = solve_by_lu_decomposition(A,b)
    disp('---Solving Ax=b by LU Decomposition---');
    [L,U] = lu_decomposition(A);
    y = forward_substitution(L,b);
    x = backward_substitution(U,y);
    disp('Solving Ax=b by LU Decomposition Result:');
    disp(x);
end