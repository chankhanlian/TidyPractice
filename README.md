# Introduction
The "Human Activity Data (tidy).txt" is a tidy data set based on data collected from the accelerometers from the Samsung Galaxy S smartphone.  The tidy data set contains average variable values for each subject and activity pair and was created using the run_analysis.R script.

# Files Included
Human Activity Data (tidy).txt - the cleaned data set  
codeBook.md - Code book for "Human Activity Data (tidy).txt" tidy data set with a description of the data variables  
run_analysis.R - R script used to transform the original data into the tidy data set 

# run_analysis.R   
The run_analysis.R script does the following:
1.  Downloads data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2.  Merges the training (X_train.txt, y_train.txt, subject_train.txt) and the test sets (X_test.txt, y_test.txt, subject_test.txt) to create one data set.  
3.  Retains the subject and activity columns and only the measurements on the mean and standard deviation (variables containing mean() or std()) for each measurement.  
4.  Uses descriptive activity names to name the activities in the data set. 
5.  Appropriately labels the data set with descriptive variable names.  
6.  From the data set in step 5, creates a second, independent tidy data (Human Activity Data (tidy).txt) set with the average of each variable for each activity and each subject.
