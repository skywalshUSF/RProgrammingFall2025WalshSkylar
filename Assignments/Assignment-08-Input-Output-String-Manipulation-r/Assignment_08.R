#Module #8 post for my LIS4370 blog. Welcome!

# Task 1 - Import Assignment 6 Data

# Place the Assignment 6 dataset (tab‑ or space‑delimited) on your computer and
# In R, read it into a data frame
x <- read.table("C:/RProgrammingFall2025WalshSkylar/Assignments/Assignment-08-Input-Output-String-Manipulation-r/Assignment 6 Dataset.txt", header = T, sep = ",")
x
# Load plyr and compute the mean of Grade by Sex
library(plyr)
gender_mean <- ddply(x,"Sex",transform, Grade.Average=mean(Grade))
gender_mean
# Write the grouped means to a text file
write.table(gender_mean, "gender_mean.txt",sep=",",row.names = F)

# Task 2 - Filter Names Containing "i"

# Convert the data (if not already) to a data frame (see above).
# Select rows where Name contains “i” or “I”
i_students <- subset(x,grepl("[iI]",x$Name))
i_students
# Extract just the names and write them to a CSV
write.csv(i_students$Name, file = "i_students.csv", row.names = F, quote = F)

# Task 3- Export Filtered Dataset

# Save the full filtered data frame to a CSV
write.csv(i_students, file = "i_students_full.csv", row.names = F)

# Confirm the files gender_mean.txt, i_students.csv, and i_students_full.csv
# exist in your working directory.

# choose files from working directory, read/scan and test output
gender_mean_test <- read.table("C:/RProgrammingFall2025WalshSkylar/gender_mean.txt", header = TRUE, stringsAsFactors = FALSE,sep = ",")
head(gender_mean_test)

i_students_test <- read.table("C:/RProgrammingFall2025WalshSkylar/i_students.csv", header = TRUE, stringsAsFactors = FALSE,sep = ",")
head(i_students_test)

i_students_full_test <- read.table("C:/RProgrammingFall2025WalshSkylar/i_students_full.csv", header = TRUE, stringsAsFactors = FALSE,sep = ",")
head(i_students_full_test)

# To begin data manipulation, the read.table() function will be used to import
# data from a file into a data frame, designated as 'x', where lines are records
# and fields are variables. The 'x' data frame can be used to group specific
# records. This 'x' data frame is then processed using the ddply() function from
# the plyr package, which allows for grouping and selection of rows or columns.
# The results are stored in a new object named 'y' that includes a new column
# named 'Grade.Average' that holds the mean of Grade grouped by Sex. The
# write.table() function is used to write data from a data frame into a text
# file and store it in the working directory. The subset() function allows the
# program to filter character data in strings with regular expressions using
# grepl(). All of the records in the 'i_students' data frame can be exported to
# a .csv file in the working directory using the write.csv() function.
