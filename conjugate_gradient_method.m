% Performs the Conjugate Gradient method to iteratively find the solution
% to Ax=b where A is symmetric positive definite and large.
% 
% @param {A} nxn, symmetric positive definite matrix
% @param {b} real vector in Rn
% @param {x0} initial guess
% @param {atol} absolute tolerance for when to stop iterating
% @returns {x} solution vector in Rn
function [x] = conjugate_gradient_method(A,b,x0,atol)
    disp('---Solving Ax=b by the Conjugate Gradient Method---');
    xk = x0;
    rk = b - A*xk;
    deltak = transpose(rk)*rk;
    bdelta = transpose(b)*b;
    pk = rk;
    disp('Iteration 0');
    disp(transpose(xk)); 
    i = 1;
    while deltak > atol^2*bdelta
        sk = A*pk;
        alphak = deltak / (transpose(pk)*sk);
        xk = xk + alphak*pk;
        rk = rk - alphak*sk;
        deltak1 = transpose(rk)*rk;
        pk = rk + deltak1/deltak*pk;
        deltak = deltak1;
        i = i+1;
        fprintf('Iteration %d: alphak=%d\n',i,alphak);
        disp(transpose(xk));
    end
    x = xk;
    disp('Solving Ax=b by the Conjugate Gradient Method Result:');
    disp(x);
end