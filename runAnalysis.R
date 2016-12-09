setwd("C:/Users/elapavul/Desktop/personal/Analytics/Online course/Data Science/Data-cleaning/Week-4/Project/UCI HAR Dataset")
library(dplyr)
#reading& making Tidy Activity list for future purpose
activitylabels<-read.csv("activity_labels.txt",sep="",header=FALSE)
names(activitylabels)= c("no","activityName")
#reading & making Tidy features list for future purpose
features<- read.csv("features.txt", sep="", header=FALSE)
names(features)= c("no","variableName")
x<-features$variableName


# Making Tidy Trainset Data 
trainset<-read.csv("./train/X_train.txt", sep="", header=FALSE)
names(trainset)=x
trainlabelset<- read.csv("./train/y_train.txt", header=FALSE,sep="")
names(trainlabelset)="no"
Subjecttrain<- read.csv("./train/subject_train.txt", header=FALSE,sep="")
names(Subjecttrain)="PersonID"
SUBTRAIN<-cbind(Subjecttrain,trainlabelset)
SUBTRAIN_ACCT<-merge(activitylabels,SUBTRAIN, by.x="no",by.y="no")
final_trainset<- cbind(SUBTRAIN_ACCT,trainset)

# Making Tidy Test set Data 
testset<-read.csv("./test/X_test.txt", sep="", header=FALSE)
names(testset)=x
testlabelset<- read.csv("./test/y_test.txt", header=FALSE,sep="")
names(testlabelset)="no"
Subjecttest<- read.csv("./test/subject_test.txt", header=FALSE,sep="")
names(Subjecttest)="PersonID"
SUBTEST<-cbind(Subjecttest,testlabelset)
SUBTEST_ACCT<-merge(activitylabels,SUBTEST, by.x="no",by.y="no")
final_testset<- cbind(SUBTEST_ACCT,testset)

# Merging the Tidy Train and Test sets 
final_train_test_set<- rbind(final_trainset,final_testset)

# collecting  the only mean and std fields from the merged set of Train and Test data

FinalDataSet <-final_train_test_set[grepl("PersonID|activityName|std|mean", names(final_train_test_set), ignore.case = TRUE) ]
names(FinalDataSet) <- gsub("\\(\\)|-", "", names(FinalDataSet))
# library(dplyr), else will get error
TidyDataSet<-group_by(FinalDataSet,activityName,PersonID)%>% summarise_each(funs(mean))







