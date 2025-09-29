#Module #6 post for my LIS4370 blog. Welcome!

# Task 1- Matrix Addition & Subtraction

#In R, define:
# Create a matrix using the matrix() function for objects A and B.
# Both A and B will each contain a matrix that holds two rows and two columns.
# Having four elements in all, in two columns, implies two rows:
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

#Then:
#Compute A + B and display the result.
# m1 is a defined object that will perform addition on two separate matrix objects:
m1 <- A + B
# Here is what the matrix looks like:
m1
# Each element in matrix A is added to the corresponding element in matrix B.
# The result is a new matrix of the same dimensions as the original matrices,
# but different values.

#Compute A - B and display the result.
# m2 is a defined object that will perform subtraction on two separate matrix
# objects:
m2 <- A - B
# Here is what the matrix looks like:
m2
# Each element in matrix A is subtracted by the element in the same row and
# column of matrix B. The result is a new matrix of the same dimensions as the
# original matrices, but different values.

# Task 2- Create a Diagonal Matrix
# The diag() function creates a diagonal square matrix.
#Use diag() to build a 4×4 matrix with diagonal entries 4, 1, 2, 3:
D <- diag(c(4, 1, 2, 3))
# Here is the result
D
# The diag() function helped me construct a diagonal matrix and add matrix values
# diagonally. Since the argument inside of the diag() function was a vector, and
# because the first cell of a matrix starts on the top left, the order in which
# the values of the vector will be displayed is from top left to bottom right.

# Task 3- Construct a Custom 5×5 Matrix
#Generate this matrix:
#  [,1] [,2] [,3] [,4] [,5]
#[1,]    3    1    1    1    1
#[2,]    2    3    0    0    0
#[3,]    2    0    3    0    0
#[4,]    2    0    0    3    0
#[5,]    2    0    0    0    3
#Hint: combine diag() with cbind() or matrix().
# Define a matrix for the first row and column elements
C <- matrix(cbind(c(1, 2, 2, 2, 2),c(1, 0, 0, 0, 0),c(1, 0, 0, 0, 0),c(1, 0, 0, 0, 0),c(1, 0, 0, 0, 0)), nrow = 5)
C
# The matrix() function was able to take a set of five vectors and combine them
# into a single vector as a data argument. I then specified the number of rows to
# be five to define the dimensions of the first matrix.

# Define a second to add to the first matrix.
D <- diag(c(2,3,3,3,3))
D
# With my first matrix created, a diagonal matrix can now be created. The
# values that are within the vector argument of diag() in matrix D depended on
# the row and column numbers from matrix C.


# Add the two matrices together
result <- C + D
result

# Once both matrix C and matrix D have had the same dimensions, I was able to
# define an object called result add the two matrices using the + operator. This
# will add a cell position in one matrix to its corresponding cell position in the
# other matrix.




