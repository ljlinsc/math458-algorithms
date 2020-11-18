% Performs Rayleigh Quotient Iteration to approximate the dominant
% eigenvector and eigenvalue of A.
% 
% @param {A} nxn matrix that only has real eigenvalues and has a basis
% consisting of eigenvectors
% @param {x0} initial guess with unit length
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution dominant eigenvector
% @returns {lambda} solution dominant eigenvalue
function [x,lambda] = rayleigh_quotient_iteration(A,x0,atol)
    disp('---Solving Ax=lambdax by Rayleigh Quotient Iteration---');
    
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