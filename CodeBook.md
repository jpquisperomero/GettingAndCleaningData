CODE BOOK
=========

Human Activity Recognition Using Smartphones - Tidy Dataset
==================================================================

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This code book modifies and updates the available code books in the original data.

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the research team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. These two data sets have been now unified into only one data set as a result of the run_analysis.R script execution on the available data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. In the new data set presented, only the measurements on the mean and standard deviation have been retained for each activity and for each subject. Then the averages of these measurements have been calculated and shown in the tidy data set. 


For each record on the new tidy data set it is provided:
========================================================

- ActivityID: Numeric, from 1 to 6. This column indicates the ID of the activity performed by the subject.
- ActivityLabel: String. One of the six activities performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
- SubjectID: Numeric, from 1 to 30. This column containes an identifier of the subject who carried out the experiment.
- The averages on the time and frequency domain measurements of the mean and the standard deviation of the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration, for each activity and for each subject.
- The averages on the time and frequency domain measurements of the mean and the standard deviation of the triaxial angular velocity from the gyroscope, for each activity and for each subject.

Here is the complete structure of the data set:

1 - ActivityID
2 - ActivityLabel
3 - SubjectID
4 - TimeBodyAcceleration-Mean-X-Axis
5 - TimeBodyAcceleration-Mean-Y-Axis
6 - TimeBodyAcceleration-Mean-Z-Axis
7 - TimeBodyAcceleration-StandardDeviation-X-Axis
8 - TimeBodyAcceleration-StandardDeviation-Y-Axis
9 - TimeBodyAcceleration-StandardDeviation-Z-Axis
10 - TimeGravityAcceleration-Mean-X-Axis
11 - TimeGravityAcceleration-Mean-Y-Axis
12 - TimeGravityAcceleration-Mean-Z-Axis
13 - TimeGravityAcceleration-StandardDeviation-X-Axis
14 - TimeGravityAcceleration-StandardDeviation-Y-Axis
15 - TimeGravityAcceleration-StandardDeviation-Z-Axis
16 - TimeBodyAccelerationJerk-Mean-X-Axis
17 - TimeBodyAccelerationJerk-Mean-Y-Axis
18 - TimeBodyAccelerationJerk-Mean-Z-Axis
19 - TimeBodyAccelerationJerk-StandardDeviation-X-Axis
20 - TimeBodyAccelerationJerk-StandardDeviation-Y-Axis
21 - TimeBodyAccelerationJerk-StandardDeviation-Z-Axis
22 - TimeBodyAngularVelocity-Mean-X-Axis
23 - TimeBodyAngularVelocity-Mean-Y-Axis
24 - TimeBodyAngularVelocity-Mean-Z-Axis
25 - TimeBodyAngularVelocity-StandardDeviation-X-Axis
26 - TimeBodyAngularVelocity-StandardDeviation-Y-Axis
27 - TimeBodyAngularVelocity-StandardDeviation-Z-Axis
28 - TimeBodyAngularVelocityJerk-Mean-X-Axis
29 - TimeBodyAngularVelocityJerk-Mean-Y-Axis
30 - TimeBodyAngularVelocityJerk-Mean-Z-Axis
31 - TimeBodyAngularVelocityJerk-StandardDeviation-X-Axis
32 - TimeBodyAngularVelocityJerk-StandardDeviation-Y-Axis
33 - TimeBodyAngularVelocityJerk-StandardDeviation-Z-Axis
34 - TimeBodyAccelerationMagnitude-Mean
35 - TimeBodyAccelerationMagnitude-StandardDeviation
36 - TimeGravityAccelerationMagnitude-Mean
37 - TimeGravityAccelerationMagnitude-StandardDeviation
38 - TimeBodyAccelerationJerkMagnitude-Mean
39 - TimeBodyAccelerationJerkMagnitude-StandardDeviation
40 - TimeBodyAngularVelocityMagnitude-Mean
41 - TimeBodyAngularVelocityMagnitude-StandardDeviation
42 - TimeBodyAngularVelocityJerkMagnitude-Mean
43 - TimeBodyAngularVelocityJerkMagnitude-StandardDeviation
44 - FrequencyBodyAcceleration-Mean-X-Axis
45 - FrequencyBodyAcceleration-Mean-Y-Axis
46 - FrequencyBodyAcceleration-Mean-Z-Axis
47 - FrequencyBodyAcceleration-StandardDeviation-X-Axis
48 - FrequencyBodyAcceleration-StandardDeviation-Y-Axis
49 - FrequencyBodyAcceleration-StandardDeviation-Z-Axis
50 - FrequencyBodyAcceleration-MeanFrequency-X-Axis
51 - FrequencyBodyAcceleration-MeanFrequency-Y-Axis
52 - FrequencyBodyAcceleration-MeanFrequency-Z-Axis
53 - FrequencyBodyAccelerationJerk-Mean-X-Axis
54 - FrequencyBodyAccelerationJerk-Mean-Y-Axis
55 - FrequencyBodyAccelerationJerk-Mean-Z-Axis
56 - FrequencyBodyAccelerationJerk-StandardDeviation-X-Axis
57 - FrequencyBodyAccelerationJerk-StandardDeviation-Y-Axis
58 - FrequencyBodyAccelerationJerk-StandardDeviation-Z-Axis
59 - FrequencyBodyAccelerationJerk-MeanFrequency-X-Axis
60 - FrequencyBodyAccelerationJerk-MeanFrequency-Y-Axis
61 - FrequencyBodyAccelerationJerk-MeanFrequency-Z-Axis
62 - FrequencyBodyAngularVelocity-Mean-X-Axis
63 - FrequencyBodyAngularVelocity-Mean-Y-Axis
64 - FrequencyBodyAngularVelocity-Mean-Z-Axis
65 - FrequencyBodyAngularVelocity-StandardDeviation-X-Axis
66 - FrequencyBodyAngularVelocity-StandardDeviation-Y-Axis
67 - FrequencyBodyAngularVelocity-StandardDeviation-Z-Axis
68 - FrequencyBodyAngularVelocity-MeanFrequency-X-Axis
69 - FrequencyBodyAngularVelocity-MeanFrequency-Y-Axis
70 - FrequencyBodyAngularVelocity-MeanFrequency-Z-Axis
71 - FrequencyBodyAccelerationMagnitude-Mean
72 - FrequencyBodyAccelerationMagnitude-StandardDeviation
73 - FrequencyBodyAccelerationMagnitude-MeanFrequency
74 - FrequencyBodyAccelerationJerkMagnitude-Mean
75 - FrequencyBodyAccelerationJerkMagnitude-StandardDeviation
76 - FrequencyBodyAccelerationJerkMagnitude-MeanFrequency
77 - FrequencyBodyAngularVelocityMagnitude-Mean
78 - FrequencyBodyAngularVelocityMagnitude-StandardDeviation
79 - FrequencyBodyAngularVelocityMagnitude-MeanFrequency
80 - FrequencyBodyAngularVelocityJerkMagnitude-Mean
81 - FrequencyBodyAngularVelocityJerkMagnitude-StandardDeviation
82 - FrequencyBodyAngularVelocityJerkMagnitude-MeanFrequency

The data set is contained in the following file:
================================================

- 'new_data_set.txt': contains the new tidy data set (180 records and 82 columns)

Notes: 
======
- The acceleration measurements are in standard gravity units 'g'.
- The angular velocity measurements are in radians/second.
- The measurements are normalized and bounded within [-1,1], as in the original data sets.

Measurements:
============

The measurements for this data set come from the averages of the measurements on the mean and standard deviation for each activity and for each subject.

First, the training and test data sets were unified into one single data set. Then the column names were added using the features file provided within the original data.

Subsequently, only the activities, subjects, and the measurements on the mean and standard deviation were kept in the data set. A new column was created to indicate the activity labels, based on the activity_labels file provided.

Next, the names of the variables were modified in order to make them more descriptive and understandable.

Finally, a new data set was created from the previous one. This new data set summarizes the previous data and contains the averages of the measurements on the mean and standard deviation for each activity and for each subject.
