% Performs Inverse Iteration to approximate the dominant eigenvector and
% eigenvalue of A
% 
% @param {A} nxn matrix that only has real eigenvalues and has a basis
% consisting of eigenvectors
% @param {alpha} shift
% @param {x0} initial guess
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution dominant eigenvector
% @returns {lambda} solution dominant eigenvalue
function [x,lambda] = inverse_iteration(A,alpha,x0,atol)
    disp('---Solving Ax=lambdax by Inverse Iteration---');
    n = size(A,1);
    B = A - alpha*eye(n);
    [L,U] = lu_decomposition(B);
    xk = x0;
    disp('Iteration 0');
    disp(transpose(xk));
    
    z = forward_substitution(L,xk);
    y = backward_substitution(U,z);
    xk1 = y/norm(y);
    lambdak = transpose(xk1)*A*xk1;
    disp('Iteration 1');
    disp(transpose(xk1));
    disp(lambdak);
    
    k = 2;
    while norm(abs(xk1) - abs(xk)) >= atol
        xk = xk1;
        z = forward_substitution(L,xk);
        y = backward_substitution(U,z);
        xk1 = y/norm(y);
        lambdak = transpose(xk1)*A*xk1;
        fprintf('Iteration %d',k);
        disp(transpose(xk1));
        disp(lambdak);
        k = k+1;
    end
    
    x = xk1;
    lambda = lambdak;
    disp('Solving Ax=lambdax by Inverse Iteration Result:');
    disp(x);
    disp(lambda);
end