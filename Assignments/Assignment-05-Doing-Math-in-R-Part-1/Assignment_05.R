#Module #5 post for my LIS4370 blog. Welcome!

# Task 1- Create the matrices

# In R, define
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Task 2 - Inspect dimensions

# Verify whether each matrix is square
dim(A) # should be 10 x 10
dim(B) # 10 x 100 - not square

# Task 3 - Compute inverse and determinant

# Use solve() and det(); handle errors for non-square or singular matrices:

# For A
invA <- tryCatch(solve(A), error = function(e) print(e))
detA <- det(A)

# For B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) print(e))
detB <- tryCatch(det(B), error = function(e) print(e))

# Task 4 - Document your results

# R code is shown above for creating A and B, and for computing invA, detA,
# invB, and detB

# Output or error messages for each operation.

# A brief explanation:

# Why solve(A) and det(A) work.

# In my operation test, solve(A) did not work. Instead, I got an error message
# stating that the object 'invA' was not found. When I created the first matrix
# A, and applied the solve() function, the output turned out to be a message
# stating that system is exactly singular: U[6,6] = 0. This is because not all
# square matrices have an inverse matrix. If the determinant of the matrix is
# zero, which was the output for the determinant of matrix A (detA), then it
# will not have an inverse, and the matrix is said to be singular.

# Even though det(A) successfully printed out a value, the output of zero
# indicates that this matrix is not non-singular and there is no inverse
# solution in matrix A.

# Why operations on B fail (non‑square matrix).

# The operations fail to work on matrix B because it does not contain an equal
# amount of rows and columns on its dimensions. The dimensions of matrix B are
# 10:100, which is a non-square matrix that does not have any inverse solutions
# or estimated regression parameters. This means that neither variables ('invB'
# and 'detB') nor solve(B) and det(B) will generate a result.

# Any notes on numeric stability or performance.

# The notes that I have on numeric stability include what determinants are and
# how they can be used to find the inverse of a matrix. This helps to understand
# how to compute the most accurate results according to the appropriate use of
# matrix math, along with having proper runtime and syntax in computer programs
# without any errors to perform the requested operations correctly. This should
# be important to remember whenever we create a visual that describes a
# relationship between quantities that change at a constant rate, like a
# straight line plotted on a graph.






