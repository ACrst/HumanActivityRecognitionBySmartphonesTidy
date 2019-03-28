# HumanActivityRecognitionBySmartphonesTidy
Human Activity Recognition By Smartphones TidyData Course Project



##Steps to work on this project:
## Run source("run_analysis.R") . This will generate the tidy independent data file in your 
## working directory.

#README.md in the repo with your scripts. 
#This repo explains how all of the scripts work and how they are connected.
# In order to execute the required functionality, the R script 'run_analysis.R' does the following:
# 1. Download the dataset is present in the working directory, if it does not exist already
# 2. Load the activity and features data files
# 3. Load the training and testing datasets while keeping only the required columns of mean and standard deviation 
# 4. Load the subject and activity data for each dataset and merge the columns of the dataset
# 5. Merge the two dataset with subject and activity columns
# 6. Convert the subject and activity columns into factors and melt them to existing dataset
# 7. Merges the average(mean) of each variable for every subject-activity pair form a clean dataset
# 8. Writes the contents of the merged dataset into an independent tidy data set

##Dependencies:
## This project requires R packages data.table and reshape2.Once installed, the dependencies will be loaded 
## automatically 