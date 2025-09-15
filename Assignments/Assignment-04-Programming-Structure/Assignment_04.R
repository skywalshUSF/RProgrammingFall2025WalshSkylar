#Module #4 post for my LIS4370 blog. Welcome!

#Task 1 - Data Preparation and Cleaning

#Define each vector in R, converting categorical strings to numeric codes
#(bad=1,good=0) (low=0,high=1) and handling NA's appropriately:

Frequency<-c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BloodPressure<-c(103,87,32,42,59,109,78,205,135,176)
FirstAssess<-c(1,1,1,1,0,0,0,0,NA,1) ##(bad=1,good=0)
SecondAssess<-c(0,0,1,1,0,0,1,1,1,1) ##(low=0,high=1)
FinalDecision<-c(0,1,0,1,0,1,0,1,1,1) ##(low=0,high=1)

df_hosp<-data.frame(Frequency,BloodPressure,FirstAssess,SecondAssess,FinalDecision,stringsAsFactors = FALSE)

#Inspect and handle NA's
summary(df_hosp)
df_hosp<-na.omit(df_hosp)

#Task 2 - Generate Basic Visualizations

# A. Side-by-Side Boxplots
boxplot(BloodPressure~FirstAssess,data = df_hosp,names = c("Good","Bad"),ylab = "Blood Pressure",main = "BP by First MD Assessment")
boxplot(BloodPressure~SecondAssess,data = df_hosp,names = c("Low","High"),ylab = "Blood Pressure",main = "BP by Second MD Assessment")
boxplot(BloodPressure~FinalDecision,data = df_hosp,names = c("Low","High"),ylab = "Blood Pressure",main = "BP by Final Decision")

# B. Histograms
# Visualize overall distributions of Frequency and Blood Pressure
hist(df_hosp$Frequency,breaks = seq(0,1,by=0.1),xlab = "Visit Frequency",main = "Histogram of Visit Frequency")
hist(df_hosp$BloodPressure,breaks = 8,xlab = "Blood Pressure",main = "Histogram of Blood Pressure")

#Task 3 - Interpretation and Discussion
# 2-3 paragraphs addressing:
# How blood pressure varies with each Doctor's assessment and the final decision:

# For the first boxplot chart, the BP by first MD Assessment, the maximum looks
# to be around 200 for good and 175 for bad. This is strange because a patient
# with good blood pressure should not have readings higher than 150. The minimums
# are around 60 for good and 30 for bad. This is also strange because I do not
# know if it is possible for humans to have a blood pressure of 30. The median
# seems about the same at 90-95. I also think the data may be misrepresented here
# because both extreme high and low blood pressure should be in the bad category
# and not the good category.

# For the second boxplot chart, the BP by second MD Assessment, this chart shows
# a better representation of the low blood pressure with a more reasonable range
# between 60-110. However, the high blood pressure range seems to be problematic
# because it also includes values that are in the low blood pressure range. Overall,
# the high blood pressure range seems too large, ranging from around 20-200.

# For the third boxplot, the BP by Final Decision, this seems to be the chart
# that best represents the data. The low blood pressure seems reasonable with the
# exception of some outliers. The grey area for the low blood pressure seems to
# best represent the range of low blood pressure from 50-100, and the grey area
# for the high blood pressure best represents the range of high blood pressure
# from 90-175.

# Any notable patterns or outliers in the histograms:

# After reviewing the output from the histograms, a notable pattern that I found
# in the data was in the histogram of blood pressure that shows the pattern
# between the domain of blood pressure and the range of frequency. The pattern I
# noticed is that patients who had a low blood pressure of 50 and a high blood
# pressure of 110 had a higher frequency. The extreme outliers with a high blood
# pressure of 175 and over 200 were displayed as well.

# Potential clinical implications or limitations of this made up data:

# A potential clinical implication/limitation of this made up data is that the
# extreme blood pressure measurements in the histogram of blood pressure may not
# be entirely accurate. Extreme high blood pressures can be caused by certain
# reactions or behaviors, however, the blood pressure outliers may seem too high
# for a patient who has good blood pressure.

# How handling of NA values affected your analysis:

# Handling NA values affected my analysis. NA values would reduce or alter the
# analysis because it would exclude patient data. If an NA is removed, it would
# turn into zero. It is strange to remove NA's this way because zero can mean
# both high or low. Having a value of zero for a patient would cause a patient
# to be placed in a good blood pressure when really they do not, or be placed
# in a bad blood pressure when really they have a good reading. This is probably
# what caused the data to become made up.






