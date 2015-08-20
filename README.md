# GettingAndCleaningData - Course Project (Peer Assessment)

This repository hosts R script, code-book & output of the script for Course Project of Data Science's Getting And Cleaning Data module. 

The dataset being used is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#Script Files

run_analysis.R - This R script file does the following:

* Reads Subjects, Test & Train Data into R from below files:

  - x_test <- X_test.txt 
  - y_test <- Y_text.txt 
  - x_train <- X_train.txt 
  - y_train <- Y_train.txt 
  - subject_test <- subject_test.txt 
  - subject_train <- subject_train.txt

* Reads Fearures & activity labels details into R

   - features <- features.txt 
   - activity_labels <- activity_labels.txt

* Assigns descriptive Column headers to test & train data loaded into R using features data.

* Extracts data for columns related to only required mesaurements - mean and std in separate data frames.

     x_test_mean_std & x_train_mean_std

* Merges Subjects, Test & Train data into one data frame called merged.

* Labels Subject & Activity columns of merged data frame as SubjectID and ActivityID respectively.

* Calculates Average for each variable for each activity & subject and stores into avg_data data frame.

* Replace Activity IDs in avg_data  with activity labels loaded into R.

* Writes avg_data into a text file called avg.txt.

#Running the script

- Change current directory to directory where run_analysis.R script exists. 
- Download the data set. The files should be stored to "data/UCI HAR Dataset" difrectory under your working directory (directory where .R script exists).
- Run Rscript run_analysis.R.
- The tidy dataset should get created in the current directory as avg.txt.
