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
