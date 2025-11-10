#Module #12 post for my LIS4370 blog. Welcome!

# Load a library and dataset
library(corrplot)
data("mtcars")
myDF <- mtcars
head(myDF)

# Simple analysis and plot of mtcars dataset using corrplot package in r

# Load a library and dataset
library(corrplot)
data("mtcars")
myDF <- mtcars
head(myDF)

# use cor() to create correlation matrix of mtcars variables
corResults<-cor(myDF,method = "pearson")
corResults<-round(corResults,2)
corResults

# use corrplot() to plot & visualize the results on heatmap
corrplot(corResults,type="upper",order="hclust",tl.col="black",tl.srt=45)
