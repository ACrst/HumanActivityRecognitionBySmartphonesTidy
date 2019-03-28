#Create one R script called run_analysis.R that does the following.
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.


library(data.table)
library(reshape2)


fileName<-"getSourceData.zip"
if(!file.exists("UCI HAR Dataset.zip")){
  fileSource="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  f<-download.file(fileSource,fileName)
  
}
if(!file.exists("UCI HAR Dataset.zip")){
  unzip(fileName)
}

#Read all data sets

 # featuresInfo<-read.table("UCI HAR Dataset/features_info.txt",header=FALSE)
  features<-read.table("UCI HAR Dataset/features.txt",header=FALSE)
  activities<-read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)
  Train.data<-read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
  Train.activities<-read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)
  Train.subjects<-read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
  Test.data<-read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
  Test.activities<-read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
  Test.subjects<-read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)

  data.data<-rbind(Train.data,Test.data)
  data.subjects<-rbind(Train.subjects,Test.subjects)
  data.activities<-rbind(Train.activities,Test.activities)
  
  ##Combining different columns to one table
  fulldata<-cbind(data.subjects,data.activities,data.data)

  ## Taking required features of mean and std
  requiredFeatures<-features[grep('-(mean|std)\\(\\)',features[,2]),2]
  fulldata<-fulldata[,c(1,2,requiredFeatures)]
  
  
  ##Descriptive variables
  fulldata[,2]<-activities[fulldata[,2],2]
  colnames(fulldata)<-c('subject','activity',gsub('\\-|\\(|\\)','',as.character(requiredFeatures)))
  
  #Data made of strings format
  fulldata[,2]<-as.character(fulldata[,2])
  
  #Combine subjects and activity along with mean
  final.melted<-melt(fulldata,id=c('subject','activity'))
  final.mean<-dcast(final.melted,subject+activity~variable,mean)

  # Write into a second, independent tidy data set with 
  # the average of each variable for each activity and each subject.
  
  write.table(final.mean,file=file.path("tidy.txt"),row.names = FALSE,quote=FALSE)