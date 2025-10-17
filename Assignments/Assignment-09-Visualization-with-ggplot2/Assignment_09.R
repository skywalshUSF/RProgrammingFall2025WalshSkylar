#Module #9 post for my LIS4370 blog. Welcome!

# Choose one dataset from the Rdatasets collection. Load it into R with:
# data("DatasetName",package = "PackageName")
# head(DatasetName)
data("mtcars", package = "datasets")
head(mtcars)


# Task 1 - Base R Graphics
# Create at least two plots using base R functions.

# Scatter plot
plot(mtcars$mpg, main="Base R 'mtcars' data set scatter plot: mpg", xlab="wt", ylab="mpg", pch=19, col="darkblue")

# Histogram
hist(mtcars$mpg, main = "Base R 'mtcars histogram of miles per gallon", xlab = "mpg", col="lightblue", border="black")


# Task 2 - Lattice Graphics
# Use the lattice package to produce conditioned or multivariate plots
library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg ~ wt|factor(cyl), data = mtcars, main="Lattice: mpg vs. wt by number of cylinders")

# Box-and-whisker plot
bwplot(mpg ~ factor(cyl), data = mtcars, main = "Lattice: miles per gallon by cylinder")


# Task 3 - ggplot2
# Use ggplot2's grammar of graphics to create layered visuals.
library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color=factor(cyl))) + geom_point() + geom_smooth(method = "lm") + labs(title = "ggplot2: mpg vs. wt with trend by cyl")

# Faceted Histogram
ggplot(mtcars, aes(mpg)) + geom_histogram(binwidth = 1) + facet_wrap(~ cyl) + labs(title = "ggplot2: mpg distribution by cyl")








