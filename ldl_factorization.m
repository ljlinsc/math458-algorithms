% Uses the LU decomposition to calculate the LDL^T factorization of a
% symmetric positive definite matrix.
% 
% @param {A} nxn, symmetric positive definite matrix
% @returns {L} nxn, real, lower triangular matrix
% @returns {D} nxn, real, diagonal matrix
function [L,D] = ldl_factorization(A)
    disp('---LDL^T Factorization---');
    [L,U] = lu_decomposition(A);
    D = U * (transpose(L))^(-1);
    disp('LDL Factorization Results:');
    disp(L);
    disp(D);
    disp(transpose(L));
end