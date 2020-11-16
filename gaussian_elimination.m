% Performs the gaussian elimination algorithm on a given matrix and vector
% by transforming the matrix into upper triangular form and applying the
% backward substitution algorithm.
% 
% @param {A} nxn, real, nonsingular matrix
% @param {b} real vector in Rn
% @returns {x} solution vector in Rn
function [x] = gaussian_elimination(A,b)
    disp('---Gaussian Elimination---');
    n = size(A,1);
    for j = 1:n-1
        for i = j+1:n
            l = A(i,j) / A(j,j);
            A(i,:) = A(i,:) - l * A(j,:);
            b(i) = b(i) - l * b(j);
        end
        fprintf('Gaussian Elimination Iteration %d\n',j);
        disp(A);
    end
    x = backward_substitution(A,b);
    disp('Gaussian Elimination Result:');
    disp(x);
end