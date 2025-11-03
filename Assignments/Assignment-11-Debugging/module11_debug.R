#Module #11 post for my LIS4370 blog. Welcome!

# Below is a function intended to flag rows of a numeric matrix x that are
# outliers in every column according to the Tukey rule.
# It contains a deliberate bug:

tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

# Task 1 - Reproduce the Error

# In R, create a test matrix and run the function:
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)

# Capture the exact error message you see.

tukey_multiple(test_mat)

# Task 2 - Diagnose the Bug
#traceback()
#debug(tukey_multiple)
#tukey_multiple(test_mat)

# Screenshot of process/output

# Reflect on why using && inside the loop causes the failure.
# (Recall that && only returns a single TRUE/FALSE for the first element,
# whereas you need element‑wise comparison.)

# & is vectorized and && is not. && only treats a vector as a scalar object and
# only evaluates the first element and && will evaluate all elements in vectors.

# Task 3 - Fix the Code

# Edit the function so that the logical operation is applied element‑wise.
# Specifically, replace the buggy line with the correct operator.

# Corrected inside the loop:
# outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])

corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

# Task 4 - Validate Your Fix

# Re‑run your corrected function on test_mat and verify it returns a
# logical vector of length 10 without error:
corrected_tukey(test_mat)

#traceback()
#debug(tukey_multiple)
#tukey_multiple(test_mat)

# Screenshot of process/output

# remove the faulty function & Fix the Code

# Edit the function so that tukey.outlier() is removed.
corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & x[, j]
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}

# Re‑run your corrected function on test_mat and verify it returns a
# logical vector of length 10 without error:
corrected_tukey(test_mat)
