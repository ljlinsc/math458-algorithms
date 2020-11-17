% Performs Housholder Transformations to yield the QR factorization of a
% matrix.
% 
% @param {A} mxn matrix
% @returns {Q} mxn, orthogonal matrix
% @returns {R} mxn, upper triangular matrix (R,0)
function [Q,R] = householder_transformation(A)
    disp('---Householder Transformation INCOMPLETE---');
    [m,n] = size(A);
    R = zeros(m);
    I = eye(m);
    P = eye(m);
    for j = 1:n
        R(j,j) = -1 * sign(A(1,j)) * norm(A(:,j));
        u = A(:,j) - R(j,j) * I(:,j);
        u = u / norm(u);
        P = (I - 2*u*transpose(u)) * P;
    end
    Q = transpose(P);
    disp('Householder Transformation Results????:');
    disp('Q');
    disp(Q);
    disp('R');
    disp(R);
end