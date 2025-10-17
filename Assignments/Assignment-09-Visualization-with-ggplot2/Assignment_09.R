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


# Discussion
# On your blog, embed your three visualizations (one from each system) and address:


# How does the syntax and workflow differ between base, lattice, and ggplot2?

# For base graphics, the workflow is incremental. You start with a highly
# advanced plotting function called plot() to create the base plot, and then use
# separate arguments like main, xlab, and ylab to add additional elements that
# will be contained inside the plot. The syntax in base graphics is function
# based, meaning it uses many separate, simple functions, such as plot() and
# hist(). Plot parameters are passed directly as arguments within these
# functions. For the lattice library, the workflow is indicative. You specify
# all the plot components within a single function call. This library also uses
# a highly advanced function called xyplot(). The syntax in lattice is based on
# a variety of formulas. The main functions, like xyplot() and bwplot(), use a
# formula to define the variables of a y variable predicted by an x variable.
# In ggplot2, the workflow is more integrated. You build the plot in layers,
# assign it to an object, and then add, remove, or modify layers. This
# integration makes it easier to create complex plots and saves elements that
# are used multiple times. The syntax in ggplot2 is simply conditional because
# parameters are passed as arguments, and the variables used in this library are
# often paired with function arguments for customization.


# Which system gave you the most control or produced the most
# “publication-quality” output with minimal code?

# After comparing the workflow and syntax of the three R graphics systems, I
# found that ggplot2 offered the most control and produced publication-quality
# output efficiently. Its layered structure allowed for extra control over every
# plot element, from modifying layers and scales to setting labels. By adding new
# layers via concatenation, I was able to build useful plots, as shown in my
# task 3 code.


# Any challenges or surprises you encountered when switching between systems?

# When switching between R graphics systems, I have encountered both challenges
# and surprises. When switching to or from Base Graphics, I couldn't undo a plot.
# Once I start a plot, I cannot go back to modify an earlier element. Also, I was
# surprised to see how simple and fast it was to create a scatter plot with the
# plot() function. When switching to or from lattice, I found myself needing to
# know less common Base graphics syntax, like the | for given, which made
# comprehending the xyplot() function a bit more difficult. I was, however,
# surprised at how efficient and concise lattice’s formula syntax can be when I
# go to do a simple conditional plot. Finally, switching to or from ggplot2
# challenged my thinking because of how it handles aesthetic mappings with the
# aes() function, which differs from how I am used to understanding standard R
# evaluation in Base Graphics. I was surprised at how the legend in my ggplot2
# scatter plot with smoothing automatically appeared in the visual without even
# needing a legend argument.









