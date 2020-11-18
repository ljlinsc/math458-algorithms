% Power method for computing the dominant eigenpair of a matrix A.
% 
% @param {A} nxn matrix that only has real eigenvalues and has a basis
% consisting of eigenvectors
% @param {x0} initial guess
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution dominant eigenvector
% @returns {lambda} solution dominant eigenvalue
function [x,lambda] = power_method(A,x0,atol)
    disp('---Solving Ax=lambdax by the Power Method---');
    xk = x0;
    disp('Iteration 0');
    disp(transpose(xk));
    xk1 = A*xk;
    xk1 = xk1/norm(xk1);
    lambdak = transpose(xk1)*A*xk1;
    disp('Iteration 1');
    disp(transpose(xk1));
    disp(lambdak);
    k = 2;
    while norm(abs(xk1) - abs(xk)) >= atol
        xk = xk1;
        xk1 = A*xk;
        xk1 = xk1/norm(xk1);
        lambdak = transpose(xk1)*A*xk1;
        fprintf('Iteration %d\n',k);
        disp(transpose(xk1));
        disp(lambdak);
        k = k+1;
    end
    x = xk1;
    lambda = lambdak;
    disp('Solving Ax=lambdax by the Power Method Result:');
    disp(x);
    disp(lambda);
end