% Performs the LU decomposition algorithm given a matrix.
% 
% @param {A} nxn, real, nonsingular matrix
% @returns {L} nxn, real, lower triangular matrix
% @returns {U} nxn, real, upper triangular matrix
function [L,U] = lu_decomposition(A)
    disp('---LU Decomposition---');
    n = size(A,1);
    L = eye(n);
    U = A;
    for j = 1:n-1
        M = eye(n);
        for i = j+1:n
            l = U(i,j) / U(j,j);
            M(i,j) = -1 * l;
            U(i,:) = U(i,:) - l * U(j,:);
        end
        L = L * M^(-1);
        fprintf('LU Decomposition Iteration %d\n',j);
        disp('M');
        disp(M);
        disp('L');
        disp(L);
        disp('U');
        disp(U);
    end
    disp('LU Decomposition Results:');
    disp(L);
    disp(U);
end