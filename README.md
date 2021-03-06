## Background

The data contained in this repository is based on the Human Activity Recognition Using Smartphones Dataset, and developed for the Course Project from Week 4 of the Coursera course "Getting and Cleaning Data".  The original data was provided by course instructors, with the instruction to make the dataset into a tidy dataset and perform some analysis.

### Section 1 - Contents of this repository
*    UCI\_HAR\_Dataset\_tidy\_averages.txt
  *  A text file resulting from the author's execution of this code, containing only the averages for each activity, per subject. (See Section 2 for viewing this data)
*    run\_analysis.R
  *  A script that will take the UCI HAR dataset and create a tidy dataset (see Section 3 for executing this code)
*    README&#46;md
  *  This Markdown file.
*    Codebook&#46;md
  *  A Markdown Codebook containing the Codebook for this project, including all the variables and summaries calculated, along with units, and any other relevant information.

### Section 2 - Viewing the already produced averages
To view the data as produced by the author:  
1. Download the UCI\_HAR\_Dataset\_tidy\_averages.txt into the current R working directory.  
2. Run the following code:  
```
    my_data <- read.table(file="tidy_averages.txt", header=TRUE, row.names = NULL, check.names = FALSE)  
    View(my_data)
```
###### Previous two lines of code adapated from David Hood's blog on this project: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

### Section 3 - Running this code for reproducability
To use the run\_analysis.R file to reproduce the author's dataset:  

1. Download the source file: **https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip**
2. Extract the Zip file contents into a folder on your local drive. For example, **C:\Users\%USERPROFILE%\Documents\Data Science**.  This would result in the extracted UCI Dataset being located at **C:\Users\%USERPROFILE%\Documents\Data Science\UCI HAR Dataset**.  
   For sake of clarity, this folder will be referred to as **%folder\_path%**, meaning the UCI dataset should be extracted to %**folder\_path%\UCI HAR Dataset**.  
3. Save **run\_analysis.R** to **%folder_path%**, so that "UCI HAR Dataset" is a subfolder of the location of run\_analysis.R.  
4. In R run, **setwd(%folder\_path%)**.  
5. In R, run **source("run\_analysis.R")**.  This will execute the script.  
6. One file will be created as a result of execution, in the current working directory (%folder\_path%):
      * UCI\_HAR\_Dataset\_tidy\_averages.txt - A second tidy version of the UCI HAR dataset, containing only the averages for each activity, per subject.  For more information on the dataset, see the Codebook.
	  * If outputting the non-averaged dataset is desired, the last line of code is commented out, which would write the larger dataset to a file (UCI\_HAR\_Dataset\_tidy\_dataset.txt)