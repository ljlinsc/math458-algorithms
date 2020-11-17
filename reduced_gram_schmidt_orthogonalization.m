% Performs the reduced Gram-Schmidt process to yield the QR decomposition 
% of a matrix.
% 
% @param {A} mxn matrix
% @returns {Q} mxn, orthogonal matrix
% @returns {R} mxn, upper triangular matrix (R,0)
function [Q,R] = reduced_gram_schmidt_orthogonalization(A)
    disp('---Reduced Gram-Schmidt Orthogonalization---');
    [m,n] = size(A);
    Q = zeros(m,n);
    R = zeros(m,n);
    Q(:,1) = A(:,1);
    R(1,1) = norm(Q(:,1));
    Q(:,1) = Q(:,1) / R(1,1);
    for j = 2:n
        Q(:,j) = A(:,j);
        for i = 1:j-1
            R(i,j) = dot(Q(:,i),A(:,j));
            Q(:,j) = Q(:,j) - R(i,j) * Q(:,i);
        end
        R(j,j) = norm(Q(:,j));
        Q(:,j) = Q(:,j) / R(j,j);
    end
    disp('Reduced Gram-Schmidt Orthogonalization Results:');
    disp('Q');
    disp(Q);
    disp('R');
    disp(R);
end