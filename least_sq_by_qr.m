% Solves the least squares problem using QR decomposition.
% 
% @param {A} mxn, full column rank matrix
% @param {b} real vector in Rm
% @returns {x} solution vector in Rn
function [x] = least_sq_by_qr(A,b)
    disp('---Solving least squares by QR Decomposition---');
    n = size(A,2);
    [Q,T] = qr(A);
    R = T(1:n,1:n);
    c = transpose(Q) * b;
    x = backward_substitution(R,c);
    disp('Q');
    disp(Q);
    disp('(R,0)');
    disp(T);
    disp('c=transpose(Q)*b');
    disp(c);
    disp('Solving least squares by QR Decomposition Result:');
    disp(x);
end