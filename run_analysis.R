library(reshape2)

## Read the UCI HAR Dataset files
activity_labels <- read.table(file="UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names = c("code","activity"))
feature_list <- read.table(file="UCI HAR Dataset/features.txt", header=FALSE)
dataset_test <- read.table(file="UCI HAR Dataset/test/X_test.txt", header=FALSE)
dataset_train <- read.table(file="UCI HAR Dataset/train/X_train.txt", header=FALSE)
labels_test <- read.table(file="UCI HAR Dataset/test/y_test.txt", header=FALSE)
labels_train <- read.table(file="UCI HAR Dataset/train/y_train.txt", header=FALSE)
subjects_test <- read.table(file="UCI HAR Dataset/test/subject_test.txt", header=FALSE)
subjects_train <- read.table(file="UCI HAR Dataset/train/subject_train.txt", header=FALSE)

## 1. Merges the training and the test sets to create one data set.
## Use rbind to merge the train and test datasets
UCI_HAR_data <- rbind(dataset_test,dataset_train)
rm(dataset_test,dataset_train)
UCI_HAR_labels <- rbind(labels_test,labels_train)
rm(labels_test,labels_train)
UCI_HAR_subjects <- rbind(subjects_test, subjects_train)
rm(subjects_test, subjects_train)

## Give colnames to the labels and subject dataframes
colnames(UCI_HAR_subjects) <- c("subject")
colnames(UCI_HAR_labels) <- c("activity")

## Apply the feature_list to the variable names of the 'data'
## 4. Appropriately labels the data set with descriptive variable names.
colnames(UCI_HAR_data) <- feature_list$V2
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## Use grep on the column names to acheive this
UCI_HAR_data <- UCI_HAR_data[,grep("^t.*(mean\\(\\)|std\\(\\))",names(UCI_HAR_data))]

## Use cbind to merge the separate data frames into one master frame
UCI_HAR_master_df <- cbind(UCI_HAR_subjects, UCI_HAR_labels, UCI_HAR_data)
## Clean up the old frames
rm(UCI_HAR_data, UCI_HAR_labels, UCI_HAR_subjects)

## 3. Uses descriptive activity names to name the activities in the data set
## Use the data in the activity table to swap the numeric designations for activities with the descriptive
UCI_HAR_master_df$activity <- factor(UCI_HAR_master_df$activity, levels = activity_labels$code, labels = activity_labels$activity)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Use melt code from Reshaping Data Frames lesson
UCI_HAR_melt <- melt(UCI_HAR_master_df, id=c("subject", "activity"), measure.vars = names(UCI_HAR_master_df[,c(-1,-2)]))
UCI_HAR_averages_dataset <- dcast(UCI_HAR_melt, subject + activity ~ variable, mean)
write.table(UCI_HAR_averages_dataset,file="tidy_averages.txt", row.names = FALSE)
