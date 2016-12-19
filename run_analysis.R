## Coursera Getting and Cleaning Data
## Course Project
## 12/18/16

## Load necessary packages

library(data.table)
library(dplyr)
library(tidyr)

## Create directory called "Data" and download the Samsung Galaxy S smartphone data into directory

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

## Unzip the data

unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Read files and create data tables

filepath <- file.path("./data" , "UCI HAR Dataset")

## Read metadata
FeatureNames <- read.table(file.path(filepath, "features.txt"))
ActivityLabels <- read.table(file.path(filepath, "activity_labels.txt"))

## Read Training files
SubjectTrain <- read.table(file.path(filepath, "train", "subject_train.txt"))
ActivityTrain <- read.table(file.path(filepath, "train", "Y_train.txt"))
FeaturesTrain <- read.table(file.path(filepath, "train", "X_train.txt" ))

## Read Testing files
SubjectTest  <- read.table(file.path(filepath, "test" , "subject_test.txt" ))
ActivityTest  <- read.table(file.path(filepath, "test" , "Y_test.txt" ))
FeaturesTest  <- read.table(file.path(filepath, "test" , "X_test.txt" ))

## Part 1 - Merging the training and test datasets

## Combining the corresponding Train and Test sets
Subject <- rbind(SubjectTrain, SubjectTest)
Activity <- rbind(ActivityTrain, ActivityTest)
Features <- rbind(FeaturesTrain, FeaturesTest)

## Adding column names for Features
colnames(Features) <- t(FeatureNames[2])

## Labeling Activity and Subject column names
colnames(Activity) <- "Activity"
colnames(Subject) <- "Subject"

## Merging the data
CompleteData <- cbind(Features, Activity, Subject)

## Part 2 - Extract only the measurements on the mean and standard deviation for each measurement

ColumnsWithMeanOrSTD <- grep(".*Mean.*|.*Std.*", names(CompleteData), ignore.case=TRUE)

ColumnsToExtract <- c(ColumnsWithMeanOrSTD, 562, 563)

ExtractedData <- CompleteData[,ColumnsToExtract]

## Part 3 - Use descriptive activity names to name the activities in the data set

## Modifying Activity field to accept Activity names
ExtractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
        ExtractedData$Activity[ExtractedData$Activity == i] <- as.character(ActivityLabels[i,2])
}

## Changing to factor
ExtractedData$Activity <- as.factor(ExtractedData$Activity)

## Part 4 - Appropriately label the dataset with descriptive variable names

## Acc = Accelerometer
## Gyro = Gyroscope
## BodyBody = Body
## Mag = Magnitude
## f = Frequency
## t = Time

names(ExtractedData)<-gsub("Acc", "Accelerometer", names(ExtractedData))
names(ExtractedData)<-gsub("Gyro", "Gyroscope", names(ExtractedData))
names(ExtractedData)<-gsub("BodyBody", "Body", names(ExtractedData))
names(ExtractedData)<-gsub("Mag", "Magnitude", names(ExtractedData))
names(ExtractedData)<-gsub("^t", "Time", names(ExtractedData))
names(ExtractedData)<-gsub("^f", "Frequency", names(ExtractedData))
names(ExtractedData)<-gsub("tBody", "TimeBody", names(ExtractedData))
names(ExtractedData)<-gsub("-mean()", "Mean", names(ExtractedData), ignore.case = TRUE)
names(ExtractedData)<-gsub("-std()", "STD", names(ExtractedData), ignore.case = TRUE)
names(ExtractedData)<-gsub("-freq()", "Frequency", names(ExtractedData), ignore.case = TRUE)
names(ExtractedData)<-gsub("angle", "Angle", names(ExtractedData))
names(ExtractedData)<-gsub("gravity", "Gravity", names(ExtractedData))

## Part 5 - From the data set in step 4, create a second, independent tidy data set
## with the average of each variable for each activity and each subject

ExtractedData$Subject <- as.factor(ExtractedData$Subject)
ExtractedData <- data.table(ExtractedData)

TidyData <- aggregate(. ~Subject + Activity, ExtractedData, mean)
TidyData <- TidyData[order(TidyData$Subject,TidyData$Activity),]
write.table(TidyData, file = "TidyData.txt", row.names = FALSE)



