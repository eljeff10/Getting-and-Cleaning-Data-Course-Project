# Getting-and-Cleaning-Data-Course-Project

## Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How Scripts Work and are Connected

The run_analysis.R script works using the following steps:
1. Load necessary packages: data.table, dplyr, tidyr
2. Create directory called "Data" and download the Samsung Galaxy S smartphone data into directory
3. Unzip the data
4. Read files and create data tables
5. Read metadata
6. Read Training files
7. Read Testing files
8. Combining the corresponding Train and Test sets
9. Adding column names for Features
10. Labeling Activity and Subject column names
11. Merging the data
12. Extract only the measurements on the mean and standard deviation for each measurement
13. Modifying Activity field to accept Activity names
14. Appropriately label the dataset with descriptive variable names
15. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject

## Codebook
The Codebook.md file indicates all the variables and summaries calculated, along with units, and any other relevant information
