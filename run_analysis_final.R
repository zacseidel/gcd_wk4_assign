
#Steps completed in this file
#0. Prepare the workspace
#1. Read in all the data
#2. Merge the data into one dataset
#3. Extract the measurements for mean and standard deviation
#4. Use descriptive activity names to name the activities in the dataset
#5. Appropriately label the datset with descriptive variable names
#6. From the dataset in step 5, create a second, independent tidy data set with the average for each activity and each subject.  Create this dataset with write.table(row.names = FALSE)


#0. Prepare the workspace
#remove previous files
rm(list = ls())
#load relevant libraries
require(tidyverse)
require(plyr)

#1. Read in all the data
#read in the test data
subject_test <- read.table("data/test/subject_test.txt")
x_test <- read.table("data/test/X_test.txt")
y_test <- read.table("data/test/Y_test.txt")

#read in the training data
subject_train <- read.table("data/train/subject_train.txt")
x_train <- read.table("data/train/X_train.txt")
y_train <- read.table("data/train/Y_train.txt")

# read in the activity labels
labs <- read.table("data/activity_labels.txt")

#read in the column labels
features <- read.table("data/features.txt", stringsAsFactors = FALSE)


#2. Merge the data into one dataset and add descriptive names
colnames(x_train) <- features$V2
colnames(x_test) <- features$V2

df_train <- cbind(subject_train, y_train, x_train)
df_test <- cbind(subject_test, y_test, x_test)

df_1 <- rbind(df_train, df_test)
colnames(df_1)[1:2]<-c("Subject", "Activity")


#3. Extract the measurements for mean and standard deviation <- <- <- 
mean_feat <-grep("mean", colnames(df_1))
std_feat <- grep("std", colnames(df_1))

mean_std_feat <- sort(c(mean_feat, std_feat))

df_2 <- df_1[,c(1, 2, mean_std_feat)]


#4. Use descriptive activity names to name the activities in the dataset
levels <- labs$V1
labels <- labs$V2

df_2$Activity <- factor(df_2$Activity, levels = levels, labels = labels, ordered = TRUE)


#5. From the dataset in step 4, create a second, independent tidy data set with the average for each activity and each subject.  Create this dataset with write.table(row.names = FALSE)
df_subj_act_means <- df_2 %>% 
  group_by(Subject, Activity) %>% 
  summarise_all(mean)

write.table(df_subj_act_means, "final_output_dataset.txt", row.names = FALSE)

