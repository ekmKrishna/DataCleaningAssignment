## GettingandCleaningData Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.You will be required to submit:

a tidy data set as described below
a link to a Github repository with your script for performing the analysis
codeBook.md that describes the variables, the data, and any work that you performed to clean up the data
README.md that explains how all of the scripts work and how they are connected.
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

### Code explanations
Complete data set was saved in the given path of my local PC

setwd("C:/Users/elapavul/Desktop/personal/Analytics/Online course/Data Science/Data-cleaning/Week-4/Project/UCI HAR Dataset")

Reading& making Tidy Activity list for future purpose. Activity names were read to the variable called activity labels and column names were assigned

activitylabels<-read.csv("activity_labels.txt",sep="",header=FALSE)
names(activitylabels)= c("no","activityName")

reading & making Tidy features list for future purpose. Variable names of the complete data set read from features file  and stored in to  features DF,
column names were assigned to the same DF for  better understanding. All 561 variable were stored in variable "x" as factor.

features<- read.csv("features.txt", sep="", header=FALSE)
names(features)= c("no","variableName")
x<-features$variableName


The first data set from X_train.txt was read to the DF trainset and labeled the all columns from the factor X.
Training lables were read to the DF trainlabelset and labeled the column with "no" (number). Merged the trainlabelset and activitylabels
to get the activity name for each observation. Subject_train.txt was read to capture the all subject ids for train data and named the column as PersonID.
Finally merged the all Subjecttrain, second column of trainActset which activity name and trainset to get the final Train set data.


trainset<-read.csv("./train/X_train.txt", sep="", header=FALSE)

names(trainset)=x

trainlabelset<- read.csv("./train/y_train.txt", header=FALSE,sep="")
names(trainlabelset)="no"
trainActset<-merge(trainlabelset,activitylabels,  by.x="no",by.y="no")
Subjecttrain<- read.csv("./train/subject_train.txt", header=FALSE,sep="")
names(Subjecttrain)="PersonID"
final_trainset<- cbind(Subjecttrain,trainActset[2],trainset)

The test data set from X_test.txt was read to the DF testset and labeled the all columns from the factor X.
Testing labels were read to the DF testlabelset and labeled the column with "no" (number). Merged the testlabelset and activitylabels
to get the activity name for each observation. Subject_test.txt was read to capture the  all subject ids for test data and named the column as PersonID.
finally merged the all Subjecttest, second column of testActset which is activity name and testset to get the final Test set data.


testset<-read.csv("./test/X_test.txt", sep="", header=FALSE)
names(testset)=x
testlabelset<- read.csv("./test/y_test.txt", header=FALSE,sep="")
names(testlabelset)="no"
testActset<-merge(testlabelset,activitylabels,  by.x="no",by.y="no")
Subjecttest<- read.csv("./test/subject_test.txt", header=FALSE,sep="")
names(Subjecttest)="PersonID"
final_testset<- cbind(Subjecttest,testActset[2],testset)

All rows of final_trainset and final_testset were merged  to get the final data set

final_train_test_set<- rbind(final_trainset,final_testset)

As per the requirement collected the only mean and std fields from the merged set of final_train_test_set. However I have noticed that there few fields 
with meanFreq() and same were considered, which caused to get 86 columns of mean/std.

FinalDataSet <-final_train_test_set[grepl("PersonID|activityName|std|mean", names(final_train_test_set), ignore.case = TRUE) ]

Final data set was grouped by activityName,PersonID (subject) and calculated the average for all 86 rows as mentioned above.
TidyDataSet<-group_by(FinalDataSet,activityName,PersonID)%>% summarise_each(funs(mean))

Finally got the tiday data set as 40 Rows and 88 Columns.