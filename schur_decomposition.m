% Performs the Schur decomposition of a matrix to get the form A=QRQ^T.
% @param {A} nxn matrix with real eigenvalues and a basis of eigenvectors
% @returns {Q} nxn orthogonal matrix
% @returns {R} nxn upper triangular matrix
function [Q,R] = schur_decomposition(A)
    disp('---Schur Decomposition---');
    
    n = size(A,1);
    I = eye(n);
    xk = x0;
    lambda = transpose(xk)*A*xk;
    disp('Iteration 0');
    disp(lambda);
    
    y = solve_by_lu_decomposition(A-lambda*I,xk);
    xk1 = y/norm(y);
    lambda = transpose(xk1)*A*xk1;
    disp('Iteration 1');
    disp(transpose(xk1));
    disp(lambda);
    
    k = 2;
    while norm(abs(xk1) - abs(xk)) >= atol
        xk = xk1;
        y = solve_by_lu_decomposition(A-lambda*I,xk1);
        xk1 = y/norm(y);
        lambda = transpose(xk1)*A*xk1;
        fprintf('Iteration %d',k);
        disp(transpose(xk1));
        disp(lambda);
        k = k+1;
    end
    
    x = xk1;
    disp('Solving Ax=lambdax by Rayleigh Quotient Iteration Result:');
    disp(x);
    disp(lambda);
end