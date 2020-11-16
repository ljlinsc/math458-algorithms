% Performs the forward substitution algorithm on a given lower triangular
% matrix and returns the solution.
% 
% @param {A} nxn, real, nonsingular, lower triangular matrix
% @param {b} real vector in Rn
% @returns {x} solution vector in Rn
function [x] = forward_substitution(A,b)
    disp('---Forward Substitution---');
    n = size(A,1);
    x = zeros(n,1);
    x(1) = b(1) / A(1,1);
    for i = 1:n
        x(i) = (b(i) - A(i,1:i-1) * x(1:i-1)) / A(i,i);
    end
    disp('Forward Substitution Result:');
    disp(x);
end