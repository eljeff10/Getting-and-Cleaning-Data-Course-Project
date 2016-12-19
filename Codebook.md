Codebook for Tidy Data
======================

Data Source
-----------

Original data:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
Original description of dataset:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Original Data Description
-------------------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

For each record it is provided:
===============================

-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

Tidy Dataset Variables
----------------------

\[1\] "Subject"  
 \[2\] "Activity"  
 \[3\] "TimeBodyAccelerometerMean()-X"  
 \[4\] "TimeBodyAccelerometerMean()-Y"  
 \[5\] "TimeBodyAccelerometerMean()-Z"  
 \[6\] "TimeBodyAccelerometerSTD()-X"  
 \[7\] "TimeBodyAccelerometerSTD()-Y"  
 \[8\] "TimeBodyAccelerometerSTD()-Z"  
 \[9\] "TimeGravityAccelerometerMean()-X"  
\[10\] "TimeGravityAccelerometerMean()-Y"  
\[11\] "TimeGravityAccelerometerMean()-Z"  
\[12\] "TimeGravityAccelerometerSTD()-X"  
\[13\] "TimeGravityAccelerometerSTD()-Y"  
\[14\] "TimeGravityAccelerometerSTD()-Z"  
\[15\] "TimeBodyAccelerometerJerkMean()-X"  
\[16\] "TimeBodyAccelerometerJerkMean()-Y"  
\[17\] "TimeBodyAccelerometerJerkMean()-Z"  
\[18\] "TimeBodyAccelerometerJerkSTD()-X"  
\[19\] "TimeBodyAccelerometerJerkSTD()-Y"  
\[20\] "TimeBodyAccelerometerJerkSTD()-Z"  
\[21\] "TimeBodyGyroscopeMean()-X"  
\[22\] "TimeBodyGyroscopeMean()-Y"  
\[23\] "TimeBodyGyroscopeMean()-Z"  
\[24\] "TimeBodyGyroscopeSTD()-X"  
\[25\] "TimeBodyGyroscopeSTD()-Y"  
\[26\] "TimeBodyGyroscopeSTD()-Z"  
\[27\] "TimeBodyGyroscopeJerkMean()-X"  
\[28\] "TimeBodyGyroscopeJerkMean()-Y"  
\[29\] "TimeBodyGyroscopeJerkMean()-Z"  
\[30\] "TimeBodyGyroscopeJerkSTD()-X"  
\[31\] "TimeBodyGyroscopeJerkSTD()-Y"  
\[32\] "TimeBodyGyroscopeJerkSTD()-Z"  
\[33\] "TimeBodyAccelerometerMagnitudeMean()"  
\[34\] "TimeBodyAccelerometerMagnitudeSTD()"  
\[35\] "TimeGravityAccelerometerMagnitudeMean()"  
\[36\] "TimeGravityAccelerometerMagnitudeSTD()"  
\[37\] "TimeBodyAccelerometerJerkMagnitudeMean()"  
\[38\] "TimeBodyAccelerometerJerkMagnitudeSTD()"  
\[39\] "TimeBodyGyroscopeMagnitudeMean()"  
\[40\] "TimeBodyGyroscopeMagnitudeSTD()"  
\[41\] "TimeBodyGyroscopeJerkMagnitudeMean()"  
\[42\] "TimeBodyGyroscopeJerkMagnitudeSTD()"  
\[43\] "FrequencyBodyAccelerometerMean()-X"  
\[44\] "FrequencyBodyAccelerometerMean()-Y"  
\[45\] "FrequencyBodyAccelerometerMean()-Z"  
\[46\] "FrequencyBodyAccelerometerSTD()-X"  
\[47\] "FrequencyBodyAccelerometerSTD()-Y"  
\[48\] "FrequencyBodyAccelerometerSTD()-Z"  
\[49\] "FrequencyBodyAccelerometerMeanFreq()-X"  
\[50\] "FrequencyBodyAccelerometerMeanFreq()-Y"  
\[51\] "FrequencyBodyAccelerometerMeanFreq()-Z"  
\[52\] "FrequencyBodyAccelerometerJerkMean()-X"  
\[53\] "FrequencyBodyAccelerometerJerkMean()-Y"  
\[54\] "FrequencyBodyAccelerometerJerkMean()-Z"  
\[55\] "FrequencyBodyAccelerometerJerkSTD()-X"  
\[56\] "FrequencyBodyAccelerometerJerkSTD()-Y"  
\[57\] "FrequencyBodyAccelerometerJerkSTD()-Z"  
\[58\] "FrequencyBodyAccelerometerJerkMeanFreq()-X"  
\[59\] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"  
\[60\] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"  
\[61\] "FrequencyBodyGyroscopeMean()-X"  
\[62\] "FrequencyBodyGyroscopeMean()-Y"  
\[63\] "FrequencyBodyGyroscopeMean()-Z"  
\[64\] "FrequencyBodyGyroscopeSTD()-X"  
\[65\] "FrequencyBodyGyroscopeSTD()-Y"  
\[66\] "FrequencyBodyGyroscopeSTD()-Z"  
\[67\] "FrequencyBodyGyroscopeMeanFreq()-X"  
\[68\] "FrequencyBodyGyroscopeMeanFreq()-Y"  
\[69\] "FrequencyBodyGyroscopeMeanFreq()-Z"  
\[70\] "FrequencyBodyAccelerometerMagnitudeMean()"  
\[71\] "FrequencyBodyAccelerometerMagnitudeSTD()"  
\[72\] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"  
\[73\] "FrequencyBodyAccelerometerJerkMagnitudeMean()"  
\[74\] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"  
\[75\] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" \[76\]
"FrequencyBodyGyroscopeMagnitudeMean()"  
\[77\] "FrequencyBodyGyroscopeMagnitudeSTD()"  
\[78\] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"  
\[79\] "FrequencyBodyGyroscopeJerkMagnitudeMean()"  
\[80\] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"  
\[81\] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"  
\[82\] "Angle(TimeBodyAccelerometerMean,Gravity)"  
\[83\] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)" \[84\]
"Angle(TimeBodyGyroscopeMean,GravityMean)"  
\[85\] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"  
\[86\] "Angle(X,GravityMean)"  
\[87\] "Angle(Y,GravityMean)"  
\[88\] "Angle(Z,GravityMean)"

Data Transformations
--------------------

The original dataset included the following files: \* 'README.txt' \*
'features\_info.txt': Shows information about the variables used on the
feature vector. \* 'features.txt': List of all features. \*
'activity\_labels.txt': Links the class labels with their activity name.
\* 'train/X\_train.txt': Training set. \* 'train/y\_train.txt': Training
labels. \* 'test/X\_test.txt': Test set. \* 'test/y\_test.txt': Test
labels.

These data sets were transformed using the following steps: 1. Merged
the training and the test sets to create one data set. 2. Extracted only
the measurements on the mean and standard deviation for each
measurement. 3. Used descriptive activity names to name the activities
in the data set 4. Appropriately labeled the data set with descriptive
variable names, as follows: \* Acc = Accelerometer \* Gyro = Gyroscope
\* BodyBody = Body \* Mag = Magnitude \* f = Frequency \* t = Time 5.
From the data set in step 4, created a second, independent tidy data set
with the average of each variable for each activity and each subject.

Tidy Data Set Description
-------------------------

The new Tidy Data Set includes the average of each activity and subject.
With 30 subjects and 6 activities, there are thus 180 records across 88
variables.
