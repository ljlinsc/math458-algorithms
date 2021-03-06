# MATH 458 Algorithms
This repo contains MATLAB algorithms for USC MATH 458 Numerical Methods with creds to "A First Course in Numerical Methods." Step by step output is printed to the console.

## Algorithms

### Chapter 5
* **Backward Substitution** on an upper triangular matrix and vector b using `backward_substitution(A,b)`
* **Forward Substitution** on a lower triangular matrix and vector b using `forward_substitution(A,b)`
* **Gaussian Elimination** given a matrix A and a vector b using `gaussian_elimination(A,b)`
* **LU Decomposition** given a matrix A using `lu_decomposition(A)`
* **Solving Ax=b using LU Decomposition** given a matrix A and a vector b using `solve_by_lu_decomposition(A,b)`
* **LDL^T Factorization** given a symmetric positive definite matrix A using `ldl_factorization(A)`
* **Cholesky Factorization** given a symmetric positive definite matrix A using `cholesky_factorization(A)`

### Chapter 6
* **Solving Least Squares using Normal Equations** given a full column rank matrix A and a vector b using `least_sq_by_normal_eqs(A,b)`
* **Reduced Gram-Schmidt Orthogonalization** given a matrix A using `reduced_gram_schmidt_orthogonalization(A)`
* **Full Gram-Schmidt Orthogonalization** given a matrix A using `gram_schmidt_orthogonalization(A)`
* **Solving Least Squares using QR Decomposition** given a full column rank matrix A and a vector b using `least_sq_by_qr(A,b)`

### Chapter 7
* **Solving Ax=b with Jacobi Method** given a matrix A, vector b, initial guess x0, and absolute tolerance atol using `jacobi_method(A,b,x0,atol)`
* **Solving Ax=b with Gauss-Seidel Method** given a matrix A, vector b, initial guess x0, and absolute tolerance atol using `gauss_seidel_method(A,b,x0,atol)`
* **Solving Ax=b with Gauss-Seidel Method with Successive Over-Relaxation** given a matrix A, vector b, initial guess x0, relaxation parameter w, and absolute tolerance atol using `gauss_seidel_method(A,b,x0,w,atol)`
* **Solving Ax=b with the Method of Steepest Descent** given a matrix A, vector b, initial guess x0, and absolute tolerance atol using `method_of_steepest_descent(A,b,x0,atol)`
* **Solving Ax=b with the Conjugate Gradient Method** given a matrix A, vector b, initial guess x0, and absolute tolerance atol using `conjugate_gradient_method(A,b,x0,atol)`

### Chapter 8
* **Finding eigenvalues with the Power Method** given a matrix A, initial guess x0, and absolute tolerance atol using `power_method(A,x0,atol)`
* **Finding eigenvalues with Inverse Iteration using a shift alpha** given a matrix A, shift alpha, initial guess x0, and absolute value atol using `inverse_iteration(A,alpha,x0,atol)`
* **Finding eigenvalues with Rayleigh Quotient Iteration** given a matrix A, initial guess x0, and absolute tolerance atol using `rayleigh_quotient_iteration(A,x0,atol)`
