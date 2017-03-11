## Background  
The data contained in this repository is based on the Human Activity Recognition Using Smartphones Dataset, and developed for the Course Project from Week 4 of the Coursera course "Getting and Cleaning Data".  The original data was provided by course instructors, with the instruction to make the dataset into a tidy dataset and perform some analysis.  

### Section 1 - Transformations from Human Activity Recognition Using Smartphones Dataset to this dataset
UCI\_HAR\_Dataset\_tidy\_averages.txt is a tidy dataset derived from the Human Activity Recognition Using Smartphones Dataset according to the specifications of the Course Project assignment.  

For the purposes of this dataset, both the test set and train set of the original data were combined into one dataset, which was then transformed per the instructions in the Course Projet.  

Specific transformations on the original dataset include:  
1.  From the original "features" included in the Human Activity Recognition Using Smartphones Dataset, only time-domain measurements were extracted.  
2.  Specifically, the Fast Fourier Transform measurements were not included, as these were interpreted as transforms on the original data, not data itself.  
3.  Of the time-domain measurements that were extracted, only the mean and standard deviation measurements were extracted, per the instructions.  

### Section 2 - Data Dictionary for UCI\_HAR\_Dataset\_tidy\_averages.txt  
Please note the following:  

1.  All variable names except for subject and activity were taken as-is from the Human Activity Recognition Using Smartphones Dataset.
2.  If you do not use the instructions in the README&#46;md to read tidy\_averages into R, the variables names may be changed by check.names.
3.  Variables names from the Human Activity Recognition Using Smartphones Dataset were not modified for two reasons:
  * The author did not want to incorrectly interpret one of the original variables and mislabel the dataset as a result  
  * The code in run\_analysis is designed to not be specific to a certain list of columns in the Human Activity dataset. If the column orders changed in the underlying dataset, the code would not have to change as a result.  This was done intentionally.
4. Per the Course Project instructions, all of the varibles were averaged based on the subject and activity. So the tBodyAcc-mean()-X is actually the average of all the tBodyAcc-mean()-X measurements in the original dataset.  This is not explictly stated in the Data defintiions below.

| variable                    | R-class | Data definition                                                                                                                       |
|-----------------------------|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| subject                     | int     | Numeric designator of the volunteer performing the activities in the Human Activity Recognition Using Smartphones Dataset experiments |
| activity                    | Factor  | Descriptive term descibing which of the six acitivites were being performed by the subject when the measurements were taken           |
| tBodyAcc-mean()-X           | numeric | Mean of the time-domain signal of body acceleration from the acceleroemter in the X direction                                         |
| tBodyAcc-mean()-Y           | numeric | Mean of the time-domain signal of body acceleration from the acceleroemter in the Y direction                                         |
| tBodyAcc-mean()-Z           | numeric | Mean of the time-domain signal of body acceleration from the acceleroemter in the Z direction                                         |
| tBodyAcc-std()-X            | numeric | Standard deviation of the time-domain signal of body acceleration from the acceleroemter in the X direction                           |
| tBodyAcc-std()-Y            | numeric | Standard deviation of the time-domain signal of body acceleration from the acceleroemter in the Y direction                           |
| tBodyAcc-std()-Z            | numeric | Standard deviation of the time-domain signal of body acceleration from the acceleroemter in the Z direction                           |
| tGravityAcc-mean()-X        | numeric | Mean of the time-domain signal of gravity acceleration from the acceleroemter in the X direction                                      |
| tGravityAcc-mean()-Y        | numeric | Mean of the time-domain signal of gravity acceleration from the acceleroemter in the Y direction                                      |
| tGravityAcc-mean()-Z        | numeric | Mean of the time-domain signal of gravity acceleration from the acceleroemter in the Z direction                                      |
| tGravityAcc-std()-X         | numeric | Standard deviation of the time-domain signal of gravity acceleration from the acceleroemter in the X direction                        |
| tGravityAcc-std()-Y         | numeric | Standard deviation of the time-domain signal of gravity acceleration from the acceleroemter in the Y direction                        |
| tGravityAcc-std()-Z         | numeric | Standard deviation of the time-domain signal of gravity acceleration from the acceleroemter in the Z direction                        |
| tBodyAccJerk-mean()-X       | numeric | Mean of the time-domain signal of jerk of the body from the acceleroemter in the X direction                                          |
| tBodyAccJerk-mean()-Y       | numeric | Mean of the time-domain signal of jerk of the body from the acceleroemter in the Y direction                                          |
| tBodyAccJerk-mean()-Z       | numeric | Mean of the time-domain signal of jerk of the body from the acceleroemter in the Z direction                                          |
| tBodyAccJerk-std()-X        | numeric | Standard deviation of the time-domain signal of jerk of the body from the acceleroemter in the X direction                            |
| tBodyAccJerk-std()-Y        | numeric | Standard deviation of the time-domain signal of jerk of the body from the acceleroemter in the Y direction                            |
| tBodyAccJerk-std()-Z        | numeric | Standard deviation of the time-domain signal of jerk of the body from the acceleroemter in the Z direction                            |
| tBodyGyro-mean()-X          | numeric | Mean of the time-domain signal from the gyroscope in the X direction                                                                  |
| tBodyGyro-mean()-Y          | numeric | Mean of the time-domain signal from the gyroscope in the Y direction                                                                  |
| tBodyGyro-mean()-Z          | numeric | Mean of the time-domain signal from the gyroscope in the Z direction                                                                  |
| tBodyGyro-std()-X           | numeric | Standard deviation of the time-domain signal from the gyroscope in the X direction                                                    |
| tBodyGyro-std()-Y           | numeric | Standard deviation of the time-domain signal from the gyroscope in the Y direction                                                    |
| tBodyGyro-std()-Z           | numeric | Standard deviation of the time-domain signal from the gyroscope in the Z direction                                                    |
| tBodyGyroJerk-mean()-X      | numeric | Mean of the time-domain signal of jerk of the body from the gyroscope in the X direction                                              |
| tBodyGyroJerk-mean()-Y      | numeric | Mean of the time-domain signal of jerk of the body from the gyroscope in the Y direction                                              |
| tBodyGyroJerk-mean()-Z      | numeric | Mean of the time-domain signal of jerk of the body from the gyroscope in the Z direction                                              |
| tBodyGyroJerk-std()-X       | numeric | Standard deviation of the time-domain signal of jerk of the body from the gyroscope in the X direction                                |
| tBodyGyroJerk-std()-Y       | numeric | Standard deviation of the time-domain signal of jerk of the body from the gyroscope in the Y direction                                |
| tBodyGyroJerk-std()-Z       | numeric | Standard deviation of the time-domain signal of jerk of the body from the gyroscope in the Z direction                                |
| tBodyAccMag-mean()          | numeric | Mean of the magnitude of the three-dimensional Body Acceleration signals calculated using the Euclidean norm                          |
| tBodyAccMag-std()           | numeric | Standard deviation of the magnitude of the three-dimensional Body Acceleration signals calculated using the Euclidean norm            |
| tGravityAccMag-mean()       | numeric | Mean of the magnitude of the three-dimensional Gravity Acceleration signals calculated using the Euclidean norm                       |
| tGravityAccMag-std()        | numeric | Standard deviation of the magnitude of the three-dimensional Gravity Acceleration signals calculated using the Euclidean norm         |
| tBodyAccJerkMag-mean()      | numeric | Mean of the magnitude of the three-dimensional Jerk Acceleration signals calculated using the Euclidean norm                          |
| tBodyAccJerkMag-std()       | numeric | Standard deviation of the magnitude of the three-dimensional Jerk Acceleration signals calculated using the Euclidean norm            |
| tBodyGyroMag-mean()         | numeric | Mean of the magnitude of the three-dimensional gyroscope signals calculated using the Euclidean norm                                  |
| tBodyGyroMag-std()          | numeric | Standard deviation of the magnitude of the three-dimensional gyroscope signals calculated using the Euclidean norm                    |
| tBodyGyroJerkMag-mean()     | numeric | Mean of the magnitude of the three-dimensional jerk of the body signals from the gyroscope calculated using the Euclidean norm        |
| tBodyGyroJerkMag-std()      | numeric | Standard deviation of the magnitude of the 3D jerk of the body signals from the gyroscope calculated using the Euclidean norm         |
###### Code for Markdown table derived from http://www.tablesgenerator.com/markdown_tables
