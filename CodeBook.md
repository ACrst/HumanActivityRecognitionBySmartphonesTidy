
##a code book that describes the variables, the data, and any transformations or work that you performed to clean up the #data called CodeBook.md

##Variables, Data, Transformations,Work performed to clean up the data and produce a tidy set:

##This code book summarizes the data fields in the resulting file of tidy data, 'tidy.txt'

## Identifiers:
## 1) subject- The ID of the test subject
## 2) activity- The physical activity performed when the measurements were taken

## Activity Labels:
## 1)WALKING (Value=1) The subject was walking during the test
## 2)WALKING_UPSTAIRS (Value=2) The subject was walking up a staircase during the test
## 3)WALKING_DOWNSTAIRS (Value=3) The subject was walking down a staircase during the test
## 4)SITTING (Value=4) The subject was sitting during the test
## 5)STANDING (Value=5) The subject was standing during the test
## 6)LAYING (Value=6) The subject was laying down during the test

## The dataset includes the following files which were used for this project:
=========================================
  
  ##- 'README.txt'
  
  ##- 'features_info.txt': Shows information about the variables used on the feature vector.
  
  ##- 'features.txt': List of all features.
  
  ##- 'activity_labels.txt': Links the class labels with their activity name.
  
  ##- 'train/X_train.txt': Training set.
  
##- 'train/y_train.txt': Training labels.

##- 'test/X_test.txt': Test set.

##- 'test/y_test.txt': Test labels.

##The following files are available for the train and test data. Their descriptions are equivalent. 

##- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window ##sample. Its range is from 1 to 30. 



## Some of the signals used for this test were:
## tBodyAcc-XYZ
## tGravityAcc-XYZ
## tBodyAccJerk-XYZ
## tBodyGyro-XYZ
## tBodyGyroJerk-XYZ
## tBodyAccMag
## tGravityAccMag
## tBodyAccJerkMag
## tBodyGyroMag
## tBodyGyroJerkMag
## fBodyAcc-XYZ
## fBodyAccJerk-XYZ
## fBodyGyro-XYZ
## fBodyAccMag
## fBodyAccJerkMag
## fBodyGyroMag
## fBodyGyroJerkMag 

##The set of variables that were estimated from these signals are: 

##mean(): Mean value
##std(): Standard deviation
##mad(): Median absolute deviation 
##max(): Largest value in array
##min(): Smallest value in array
##sma(): Signal magnitude area
##energy(): Energy measure. Sum of the squares divided by the number of values. 
##iqr(): Interquartile range 
##angle(): Angle between to vectors.

##Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() ##variable:

##gravityMean
##tBodyAccMean
##tBodyAccJerkMean
##tBodyGyroMean
##tBodyGyroJerkMean

##**Further details on how to implement the required task of obtaining tidy data for the given project can be ##  found on README.md