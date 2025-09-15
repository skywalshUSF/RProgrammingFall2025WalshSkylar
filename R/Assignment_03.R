# Task 1. Define and Inspect Your Data

# In R, create vectors (correcting any syntax issues):
Name <- c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
ABC_poll <- c(4,62,51,21,2,14,15)
CBS_poll <- c(12,75,43,19,1,21,19)

# Combine into a data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# Use str() and head() to inspect your data frame.
str(df_polls)
head(df_polls)


# Task 2. Compute Summary Statistics

# Compute the mean, median, and range for each poll:

# Here is the mean, median, and range for the ABC polls
mean(df_polls$ABC_poll)
median(df_polls$ABC_poll)
range(df_polls$ABC_poll)

# Here is the mean, median, and range for the CBS polls
mean(df_polls$CBS_poll)
median(df_polls$CBS_poll)
range(df_polls$CBS_poll)

# Add a column for the difference between CBS and ABC:
df_polls$Diff<-df_polls$CBS_poll-df_polls$ABC_poll

# Here is a bar chart that shows the difference or discrepancies
library(ggplot2)

ggplot(df_polls,aes(x=Name,y=Diff,color=Diff,fill=Diff))+
  geom_bar(stat="identity")+
  ggtitle("Difference between CBS poll and ABC poll")


# Task 3. Discuss and Reflect

# On your blog, write 2-3 paragraphs addressing:

  # Key patterns you observe (e.g., which candidate shows the largest discrepancies).

# I was able to observe multiple key patterns. Both ABC and CBS polls show that Donald had the highest values in the polls, whereas Carly had the lowest values in the polls. The mean of ABC polls, 24.14286, and the mean of the CBS polls, 27.14286, indicates that both mean values are close to each other and are somewhat similar. The median of ABC polls, 15, and the median of the CBS polls, 19, indicates that both median values are close to each other and are somewhat similar, but a difference of 4 could be significant. The range of ABC polls, from 2-62, and the range of the CBS polls, from 1-75, are somewhat similar. Donald had the largest discrepancies with a difference of 13 between the ABC_poll and the CBS_poll.

  # Impact of using made‑up data—what limitations does this introduce

# The impact of using made-up data is significant. When making up numbers, the data can influence believers that it can be true. There could be a Fox News poll online that shows Donald getting the highest value. There are some limitations to this though. The data constantly changes in a poll before the final result, and the numbers may not accurately represent the polls if the data was not retrieved at a later time after it has been fully gathered.

  # How you might collect or validate real poll data in a true analysis.

# I might collect or validate real poll data in a true analysis by showing data from side-by-side instead of only showing differences. Showing data from side-by-side gives a better graphical representation of the actual numbers that are viewed and provides an easier comparison. It also helps to have a large sample size and to verify that the data from any particular source is accurate.

# Include your R code (in a code chunk) and the generated plot.

library(tidyverse)
longData<-df_polls|>
  select(Name,
         ABC_poll,
         CBS_poll) |>
  pivot_longer(cols=c("ABC_poll","CBS_poll"),names_to = "Poll")

df_polls$Name<-as.factor(df_polls$Name)

ggplot(longData, aes(x=Name,y=value,colour=Poll,fill=Poll))+
  geom_bar(stat = "identity",position = "dodge")+
  geom_text(aes(label=value),vjust=-0.5,hjust=0.5)+
  ggtitle("ABC vs. CBS Poll Data by Candidate")
