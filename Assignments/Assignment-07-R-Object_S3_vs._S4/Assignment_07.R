#Module #7 post for my LIS4370 blog. Welcome!


# Task 1- Choose or Download Data
# Load an existing dataset (e.g., data("mtcars")) or download/create your own.
# Show the first few rows with head() and describe its structure with str().

# Load the "iris" dataset and store to an object called "iris_df"
data("iris")
iris_df <- iris

# Print the first six rows of the "iris_df" object
head(iris_df)

# Explore the structure of the "iris_df" object
str(iris_df)



# Task 2 - Test Generic Functions

# Pick one or more base generic functions (e.g., print(), summary(), plot()).
# Apply them to your dataset or an object derived from it.
# If a generic does *not* dispatch on your object, explain *why*
# (e.g., no method defined for that class).

# Use the class() function to determine an object's class
class(iris_df)

# Use the str() function to show variables and object types, and show the inner
# structure of an R object
str(iris_df)

# Use the summary() function to provide a concise summary of an R object, and
# display the object variable statistics
summary(iris_df)

# Use the length() function to return the length of an object
length(iris_df)



# Task 3 - Explore S3 vs. S4

# Create an S3 object example:
s3_obj <- list(computer = "PC", year = 1985, price = 350)

# Set the class of an object as an attribute
class(s3_obj) <- "computer_s3"
class(s3_obj)

# Use the print() function dispatch to display S3 object
print(s3_obj)

# Use the str() function dispatch to display the inner structure of the S3
# object.
str(s3_obj)

# Create an S4 class and object example:
setClass("computer_s4", slots = c(computer = "character", year = "numeric", price = "numeric"))

# Embody a new S4 object with the use of the new() function and assigning an
# initial value to a variable.
s4_obj <- new("computer_s4", computer = "Laptop", year = 2025, price = 2000)
class(s4_obj)

# Use the print() function dispatch to display S4 object
print(s4_obj)

# Use the str() function dispatch to display the inner structure of the S4
# object.
str(s4_obj)

# Discussion Questions

# On your blog, answer the following:

# How can you tell whether an object uses S3 or S4?
# (Which functions inspect its class system?)

# I can tell whether an object uses S3 or S4 class system object structure by
# calling functions and passing the object as an argument to get informative
# output about the object, its class, and structure. Some of the functions that
# inspect an object's class system are the class() function that displays the
# class name for S3 objects and formal class name for S4. Also, the str() function
# is helpful for inspecting an object's class system because it lists it in the
# output. The print() function will also list the object's type or class.

# How do you determine an object’s underlying type (e.g., integer vs. list)?

# I determined an object's underlying type by using the str() function, which
# lists the object's type in the output. If the object is an integer or a list
# type object, it will say so, otherwise, if the object is an S4 object, the str()
# function output will state that it's a formal class type and name the class.
# The print() function will also list the object's type or class.

# What is a generic function in R?

# A generic function is central to R's S3 OOP system, enabling a single
# function call to behave differently based on the class of the object.
# When called, R selects the specific method matching the object's class
# (or a default if none is found). In S3, this method dispatch uses the
# first argument's class. In contrast, R's S4 system allows for multiple
# dispatch, which considers the classes of several arguments.


# What are the principal differences between S3 and S4
# (e.g., method definition, formal class declarations)?

# The key differences between R's S3 and S4 object systems are their format and
# structure. S3 objects are informal; a simple list or vector becomes an S3
# object just by assigning a class attribute to it. In contrast, S4 objects are
# much more formal and structured: their classes must be defined beforehand
# using the setClass() function, which specifies the class name and its data
# slots. This means S4 requires formal class definitions before an object can be
# created, unlike the more flexible S3 system.








