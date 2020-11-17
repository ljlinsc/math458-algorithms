# MATH 458 Algorithms
This repo contains MATLAB algorithms for USC MATH 458 Numerical Methods with creds to "A First Course in Numerical Methods." Step by step output is printed to the console.

## Algorithms

### Chapter 5
**Backward Substitution** on an upper triangular matrix and vector b using `backward_substitution(A,b)` <br />
**Forward Substitution** on a lower triangular matrix and vector b using `forward_substitution(A,b)` <br />
**Gaussian Elimination** given a matrix A and a vector b using `gaussian_elimination(A,b)` <br />
**LU Decomposition** given a matrix A using `lu_decomposition(A)` <br />
**Solving Ax=b using LU Decomposition** given a matrix A and a vector b using `solve_by_lu_decomposition(A,b)` <br />
**LDL^T Factorization** given a symmetric positive definite matrix A using `ldl_factorization(A)` <br />
**Cholesky Factorization** given a symmetric positive definite matrix A using `cholesky_factorization(A)` <br />

### Chapter 6
**Solving Least Squares using Normal Equations** given a full column rank matrix A and a vector b using `least_sq_by_normal_eqs(A,b)` <br />
