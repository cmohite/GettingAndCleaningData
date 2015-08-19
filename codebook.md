## Getting An Cleaning Data - CodeNook

Author - Chetan Mohite

### Description
This document contains information about the variables, the data, and the transformations used to clean up the data.

### Source Data & Data Set information
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been 
randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test 
data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational 
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each 
window, a vector of features was obtained by calculating variables from the time and frequency domain.

#Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Tranformation Details

# Test & Train Data is read into R from below files:
  
    R script Varibale       File
      x_test  <-        X_test.txt
      y_test  <-        Y_text.txt
      x_train <-        X_train.txt
      y_train <-        Y_train.txt
      subject_test <-   subject_test.txt 
      subject_train <-  subject_train.txt
      
# Fearures & activity labels details are read into R

      features <-     features.txt
      activity_labels <-  activity_labels.txt 

# Descriptive Column headers are assigned to test & train data loaded into R using features data loaded into R.

# Data for columns related to only required mesaurements - mean and std is extracted in separate data frames.

      x_test_mean_std
      x_train_mean_std 
      
# Subjects, Test & Train data merged into one data frame called merged.

# Subject & Activity columns of merged data frame are labelled as SubjectID and ActivityID respectively. 

# Average for each variable for each activity & subject is calculated and stored into avg_data data frame.

# Activity IDs in avg_data are replaced with activity labels loaded into R.

# avg_data is written into a text file called avg.txt.
