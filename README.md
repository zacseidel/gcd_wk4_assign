# gcd_wk4_assign
Assignment for Getting and Cleaning Data course, Week 4


Here's an article describing [why wearable data is growing and matters](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/).

This assigment uses wearable data from a UC Irvine dataset.  Download link for the data for the Coursera project is [here]( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Descripton of the dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

This dataset was created with the following steps:

 - 0. Prepare the workspace
 - 1. Read in all the data
 - 2. Merge the data into one dataset
 - 3. Extract the measurements for mean and standard deviation
 - 4. Use descriptive activity names to name the activities in the dataset
 - 5. Appropriately label the datset with descriptive variable names
 - 6. From the dataset in step 5, create a second, independent tidy data set with the average for each activity and each subject.  - Create this dataset with write.table(row.names = FALSE)
 
 The variables are name with lables from the "features" file.  The activities are given as a factor variable with descriptive labels given in the dataset.  The individual values in this file are the means of the values, grouped by subject and activity, from the original dataset.
 

