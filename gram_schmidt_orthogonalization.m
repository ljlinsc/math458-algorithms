% Performs the Gram-Schmidt process to yield the QR decomposition of a
% matrix.
% 
% @param {A} mxn matrix
% @returns {Q} mxm, orthogonal matrix
% @returns {R} mxn, upper triangular matrix (R,0)
function [Q,R] = gram_schmidt_orthogonalization(A)
    disp('---Gram-Schmidt Orthogonalization---');
    [m,n] = size(A);
    Q = zeros(m);
    [Q_tilde,R_tilde] = reduced_gram_schmidt_orthogonalization(A);
    R = R_tilde;
    Q(1:m,1:n) = Q_tilde;
    
    % Form the null space of transpose(A)
    A_null = zeros(m,m-n);
    AT_reduced = rref(transpose(A)) * -1;
    A_null(1:n,1:m-n) = AT_reduced(1:n,n+1:m);
    A_null(n+1:m,1:m-n) = eye(m-n);
    
    % Calculate remaining columns
    for j = 1:m-n
        Q(:,j+n) = A_null(:,j) / norm(A_null(:,j));
    end
    
    disp('Gram-Schmidt Orthogonalization Results:');
    disp('Q');
    disp(Q);
    disp('R');
    disp(R);
end