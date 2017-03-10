## Developed for the Getting and Cleaning Data Course Project

### Section 1 - Contents of this Repository
*    UCI_HAR_Dataset_averages.txt
  *  A text file resulting from the author's execution of this code, containing only the averages for each activity, per subject. (See Section 2 for viewing this data)
*    run_analysis.R
  *  A script that will take the UCI HAR dataset and create a tidy dataset (see Section 3 for executing this code)
*    README.md
  *  This Markdown file.
*    Codebook.md
  *  A Markdown Codebook containing the Codebook for this project, including all the variables and summaries calculated, along with units, and any other relevant information.

### Section 2 - Viewing the already produced averages
To view the data as produced by the author:
1. Download the UCI_HAR_Dataset_averages.txt into the current R working directory.
2. Run the following code:
<code>my_data <- read.table("UCI_HAR_Dataset_averages.txt", header = TRUE)
View(my_data)</code>
###### Execution code adapated from David Hood's blog on this project: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

### Section 3 - Running this code for reproducability
To use the run_analysis.R file to reproduce the author's dataset:
1.    Download the source file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.    Extract the Zip file contents into a folder on your local drive. For example, **C:\Users\%USERPROFILE%\Documents\Data Science**.  This would result in the extracted UCI Dataset being located at **C:\Users\%USERPROFILE%\Documents\Data Science\UCI HAR Dataset**.
      For sake of clarity, this folder will be referred to as **%folder_path%**, meaning the UCI dataset should be extracted to %folder_path%\UCI HAR Dataset.
3.    Save run_analysis.R to **%folder_path%**, so that "UCI HAR Dataset" is a subfolder of the location of run_analysis.R.
4.    In R, **setwd(%folder_path%)**.
5.    Run source("run_analsys.R").  This will execute the script.
6.    Two files will result:
      UCI_HAR_Dataset_tidy.txt - A tidy version of the UCI HAR dataset, with the test & train data combined.  For more information on the dataset, see the Codebook.
      UCI_HAR_Dataset_averages.txt - A second tidy version of the UCI HAR dataset, containing only the averages for each activity, per subject.

