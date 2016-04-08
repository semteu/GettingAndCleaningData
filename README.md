# Getting and cleaning data project

The purpose of this project is to get, clean and create a tidy set of wearable computing data where the original one is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## 1. Files submitted in this repository:
* README.md: file you are reading right now. It gives a short explanation of the other file contained in the repository and explains the analysis script.
* CodeBook.md: codebook that describes variables of the tidy dataset constructed.
* run_analysis.R: script that performs the analysis and the transformations.
* tidy1.txt: The first tidy data set constructed by *run_analysis.R* script


## 2. run_analysis.R 
### 2.1. goals
1. Merges the training and the test data sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The be usable, *run_analysis.R* must be run in the root data folder (UCI HAR Dataset) extracted from the zip https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The "UCI HAR Dataset" must be set as the working directory the script and must contain the following files and folders:
- activity_labels.txt
- features.txt
- test/
- test/subject_test.txt
- test/X\_test.txt
- test/y\_test.txt
- train/subject\_train.txt
- train/X\_train.txt
- train/y\_train.txt

### 2.2. description
The different steps of processing are :

* Step 1: 
  * Read all the feature data files : X\_train.txt and X\_test.txt
  * Read all the subject data files : subject\_train.txt and subject\_test.txt
  * Read all the activity data files : y\_train.txt and y\_test.txt
  * Combine all the data frame obtained from reading

* Step 2
  * Read the feature names from features.txt and filter it in order to only have features that names contained "mean()" and "std()". This is done to identify the variables which represent the measurements on the mean and standard deviation.
  * A new data frame is derived and only includes subject, activities and the previous selected features.
  
* Step 3
  * Read the activity labels from activity_labels.txt .
  * Replace the numbers by the corresponding activity labels.

* Step 4
  * Make the columns names that begin with "subject" and "activity" followed by the list of selected features names.
  * Editing variable names by replacing abbreviations by the whole words, removing all non-alphanumeric characters.
  
* Step 5:
  * Create a new data frame by find the mean for all measurements aggregated by activity and subject. This is done by `aggregate` function.
