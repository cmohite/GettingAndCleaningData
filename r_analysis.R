#Read test data
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")

#Read train data
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")

#Read features 
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Read activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

#Assign labels to columns of test & train data sets
col_headers <- features[,2] 
names(x_test) <- col_headers 
names(x_train) <- col_headers

#Get columns relate to only measurements on mean and standard deviation 
mean_std <- grep("mean\\(\\)|std\\(\\)", col_headers)

#Extract test and train data for measurements that relate to mean and std
x_test_mean_std <- x_test[, mean_std]
x_train_mean_std <- x_train[, mean_std]

#Merge test & train data set
subjects <- rbind(subject_train, subject_test)
xs <- rbind(x_train_mean_std, x_test_mean_std)
ys <- rbind(y_train, y_test)
merged <- cbind(subjects,ys, xs)

#Label subject & activity column headers
names(merged)[1] <- "SubjectID"
names(merged)[2] <- "ActivityID"

#Average of each variable for each activity and each subject
avg_data <- aggregate(. ~ SubjectID + ActivityID, data=merged, FUN = mean)

# Replace Activity Ids with Activity Labels
avg_data$ActivityID <- factor(avg_data$ActivityID, labels=activity_labels[,2]) 

# Write Avergare values for each activity and each subject to file
write.table(avg_data, file="./avg.txt", sep="\t", row.names=FALSE)

