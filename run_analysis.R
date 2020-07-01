### Getting and Cleaning Data Course Project

library(dplyr)

# Download the data for the project:
zipFilename <- "UCI HAR Dataset.zip"

# Checking if folder exists:
if (!file.exists(zipFilename)){
  zipFolderURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(zipFolderURL, zipFilename, method="curl")
  
}

foldername <- "UCI HAR Dataset"
if (!file.exists(foldername)){
  unzip(zipFilename)
}

# Read raw data:
setwd("./UCI HAR Dataset")

features <- read.table("features.txt", col.names = c("ID","functions"))
activities <- read.table("activity_labels.txt", col.names = c("activity_ID","activity"))

# test data
test_set <- read.table(file.path("test", "X_test.txt"), col.names = features$functions)
test_lables <- read.table(file.path("test", "Y_test.txt"), col.names = "activity")
test_subjects <- read.table(file.path("test", "subject_test.txt"), col.names = "subject")

# train data
train_set <- read.table(file.path("train", "X_train.txt"), col.names = features$functions)
train_lables <- read.table(file.path("train", "Y_train.txt"), col.names = "activity")
train_subjects <- read.table(file.path("train", "subject_train.txt"), col.names = "subject")


#######################################################################################################
## Step 1 -- Merges the training and the test sets to create one data set.
#######################################################################################################

train_set <- cbind(train_subjects, train_lables, train_set)
test_set <- cbind(test_subjects, test_lables, test_set)
merge_dataset <- rbind(train_set, test_set)


#######################################################################################################
## Step 2 -- Extracts only the measurements on the mean and standard deviation for each measurement.
#######################################################################################################

tidy_data <- select(merge_dataset, subject, activity, contains("mean"), contains("std"))


#######################################################################################################
## Step 3 -- Uses descriptive activity names to name the activities in the data set.
#######################################################################################################

tidy_data$activity <- factor(tidy_data$activity, levels = activities$activity_ID, 
                             labels = activities$activity)


#######################################################################################################
## Step 4 -- Appropriately labels the data set with descriptive variable names.
#######################################################################################################

names(tidy_data) <- gsub("[.]", "", names(tidy_data))
names(tidy_data) <- gsub("tBody", "TimeBody", names(tidy_data))
names(tidy_data) <- gsub("Freq", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("^t", "Time", names(tidy_data))
names(tidy_data) <- gsub("^f", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("^a", "A", names(tidy_data))
names(tidy_data) <- gsub("^s", "S", names(tidy_data))
names(tidy_data) <- gsub("BodyBody", "Body", names(tidy_data))
names(tidy_data) <- gsub("mean", "Mean", names(tidy_data))
names(tidy_data) <- gsub("std", "STD", names(tidy_data))
names(tidy_data) <- gsub("X", "-X", names(tidy_data))
names(tidy_data) <- gsub("Y", "-Y", names(tidy_data))
names(tidy_data) <- gsub("Z", "-Z", names(tidy_data))
names(tidy_data) <- gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data) <- gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data) <- gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data) <- gsub("gravity", "Gravity", names(tidy_data))

str(tidy_data)

#######################################################################################################
## Step 5 -- From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.
#######################################################################################################

tidyDataset <- tidy_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(mean)

write.table(tidyDataset, "tidyDataset.txt", row.name=FALSE)

summary(tidyDataset)
