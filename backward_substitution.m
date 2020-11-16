% Performs the backward substitution algorithm on a given upper triangular
% matrix and returns the solution.
% 
% @param {A} nxn, real, nonsingular, upper triangular matrix
% @param {b} real vector in Rn
% @returns {x} solution vector in Rn
function [x] = backward_substitution(A,b)
    disp('---Backward Substitution---');
    n = size(A,1);
    x = zeros(n,1);
    x(n) = b(n) / A(n,n);
    for i = n-1:-1:1
        x(i) = (b(i) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
    end
    disp('Backward Substitution Result:');
    disp(x);
end