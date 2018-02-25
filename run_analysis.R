#### 
# run_analysis.R
# This R script will download the accelerometer data and transform it into a tidy data set.
# 1. Downloads data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 2. Merges the training (X_train.txt, y_train.txt, subject_train.txt) and the test sets (X_test.txt, y_test.txt, subject_test.txt) 
# to create one data set.
# 3. Retains the subject and activity columns and only the measurements on the mean and standard deviation (variables containing mean() 
# or std()) for each measurement.
# 4. Uses descriptive activity names to name the activities in the data set.
# 5. Appropriately labels the data set with descriptive variable names.
# 6. From the data set in step 5, creates a second, independent tidy data (Human Activity Data (tidy).txt) set with the average of 
# each variable for each activity and each subject.
###

#Load the dplyr library
library(dplyr)

#Download and unzip data set
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, "Dataset.zip")
unzip("Dataset.zip")
setwd("./UCI HAR Dataset")

#Read in the training data into x_train, y_train, subject_train
x_train<-read.table("./train/X_train.txt")
y_train<-read.table("./train/Y_train.txt")
subject_train<-read.table("./train/subject_train.txt")

#Read in the test data into x_test, y_test, subject_test
x_test<-read.table("./test/X_test.txt")
y_test<-read.table("./test/Y_test.txt")
subject_test<-read.table("./test/subject_test.txt")

#Combine the train data into single data frame called 'train_data' 
train_data<-cbind(subject_train, y_train, x_train)
#Combine test data into single data frame called 'test_data' 
test_data<-cbind(subject_test, y_test, x_test)
#Combine train and text data into single data frame called 'merged_data'
#The training data will be on top.
merged_data<-rbind(train_data, test_data)

#Add variable names to merged_data
#Read in the variable names from features.txt into columnNames data frame.
#Append two additional variable names for the subject and activity.
columnNames<-read.table("features.txt")
columnNames<-c("Subject", "Activity", as.character(columnNames[,2]))
colnames(merged_data)<-columnNames  

#Create a subset of merged_data that contains only the mean() and std() variables
#Also Keep the Subject and Activity columns (first two columns)
#The smaller data frame is called subset_data.
keepCols<-c(1, 2, grep("mean\\(\\)|std\\(\\)", columnNames))
subset_data<-merged_data[,keepCols]

#Replace the Activity column of subset_data with activity names instead of numbers.
#First read in activity descriptors into dataframe
#Use 'Activity' column of subset_data to index the activities dataframe
#And replace the 'Activity' column with the descripters
activities<-read.table("activity_labels.txt")
subset_data[,2]<-activities[subset_data[,2], 2]

#Add descriptive column headings for subset_data
columnNames<-colnames(subset_data)
columnNames<-sub("std", "stdDev", columnNames) #expand "std" to "stdDev"
columnNames<-sub("f", "frequency", columnNames) #expand "f" to "frequency"
columnNames<-sub("^t", "time", columnNames)  #expand "t" to "time
columnNames<-sub("Acc", "Acceleration", columnNames) #expand "Acc" to "Acceleration"
columnNames<-sub("BodyBody", "Body", columnNames)  #replace "BodyBody" with "Body"
columnNames<-sub("Gyro", "Gyroscope", columnNames) #expand "Gyro" to "Gyroscope"
columnNames<-sub("Mag", "Magnitude", columnNames)     #expand "Mag" to "Magnitude"

#Replace column names of subset_data with the expanded column headings
colnames(subset_data)<-columnNames

#Create a tidy data set by combining the observations (rows)
#first by Subject and then by Activity and then calculating the mean
#for each grouping.
tidy_data<-subset_data %>% 
    group_by(Subject, Activity) %>% 
    summarize_all(mean)

#Write the tidy_data data frame to the "Human Activity Data (tidy).txt"
write.table(tidy_data,"Human Activity Data (tidy).txt", row.names=FALSE)

