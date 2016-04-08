library(data.table)
library(plyr)


# 1. Merge training and test data sets

# Read the features files
x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")

## Read the subject files
subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

## Read the activity files
y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")

## Combine all the data frame
data <- rbind(cbind(subject_train, y_train, x_train), cbind(subject_test, y_test, x_test))


# 2. Extract only the measurements on the mean and standard deviation for each measurement

## Read feature names file
features <- read.table("features.txt", stringsAsFactors = FALSE)

## Selected features ID containing mean() or std() patterns
meanStdFeatures <- features[grep("mean\\(\\)|std\\(\\)", features$V2),]

## Extract only measurements on the mean and standard deviation
data <- data[, c(1, 2, meanStdFeatures$V1 + 2)]


# 3. Use descriptive activity names to name the activities in the data set

## Get the different activities names
activityLabels <- read.table("activity_labels.txt")

# Replace the activity values by the activity names
data[, 2] <- factor(data[, 2], levels = activityLabels$V1, labels = activityLabels$V2)


# 4. Appropriately label the data set with descriptive variable names

colLabels <- c("subject", "activity", meanStdFeatures$V2)
colLabels <- gsub("^t", "time", colLabels)
colLabels <- gsub("^f", "frequency", colLabels)
colLabels <- gsub("Acc", "Accelerometer", colLabels)
colLabels <- gsub("Gyro", "Gyrometer", colLabels)
colLabels <- gsub("Mag", "Magnitude", colLabels)
colLabels <- gsub("BodyBody", "Body", colLabels)
colLabels <- gsub("mean\\(\\)", "Mean", colLabels)
colLabels <- gsub("std\\(\\)", "STD", colLabels)
colLabels <- gsub("-", "", colLabels)
colnames(data) <- colLabels


# 5. Create a second, independent tidy data set with the average of each variable 
#    for each activity and each subject.
aggregatedData <- aggregate(data[, 3:ncol(data)], 
                            by = list(activity = data$activity, subject = data$subject),
                            mean)