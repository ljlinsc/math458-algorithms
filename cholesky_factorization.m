% Uses the LDL^T factorization to get the Cholesky factorization of a
% symmetric positive definite matrix.
% 
% @param {A} nxn, symmetric positive definite matrix
% @returns {L} nxn, real, lower triangular matrix
% @returns {D} nxn, real, diagonal matrix
function G = cholesky_factorization(A)
    disp('---Cholesky Factorization---');
    [L,D] = ldl_factorization(A);
    n = size(D,1);
    G = L;
    for i = 1:n
        G(:,i) = G(:,i) .* sqrt(D(i,i));
    end
    disp('LDL Factorization Results:');
    disp(G);
    disp(transpose(G));
end