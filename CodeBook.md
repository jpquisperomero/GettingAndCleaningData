CODE BOOK

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Output file

The tidy data set resulted from the running of the run_analysis.R script contains the following variables:

Activities and Subjects

activity_label: one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
subject_id: a number from 1 to 30 that identifies the subject performing the activities.

Measurements

The average of the means and the standard deviations of the measurements provided (triaxial acceleration from the accelerometer, estimated body acceleration, and triaxial angular velocity from the gyroscope):

activity_label,subject_id,TimeBodyAcceleration-Mean-X-Axis,TimeBodyAcceleration-Mean-Y-Axis,TimeBodyAcceleration-Mean-Z-Axis,TimeBodyAcceleration-StandardDeviation-X-Axis,TimeBodyAcceleration-StandardDeviation-Y-Axis,TimeBodyAcceleration-StandardDeviation-Z-Axis,TimeGravityAcceleration-Mean-X-Axis,TimeGravityAcceleration-Mean-Y-Axis,TimeGravityAcceleration-Mean-Z-Axis,TimeGravityAcceleration-StandardDeviation-X-Axis,TimeGravityAcceleration-StandardDeviation-Y-Axis,TimeGravityAcceleration-StandardDeviation-Z-Axis,TimeBodyAccelerationJerk-Mean-X-Axis,TimeBodyAccelerationJerk-Mean-Y-Axis,TimeBodyAccelerationJerk-Mean-Z-Axis,TimeBodyAccelerationJerk-StandardDeviation-X-Axis,TimeBodyAccelerationJerk-StandardDeviation-Y-Axis,TimeBodyAccelerationJerk-StandardDeviation-Z-Axis,TimeBodyAngularVelocity-Mean-X-Axis,TimeBodyAngularVelocity-Mean-Y-Axis,TimeBodyAngularVelocity-Mean-Z-Axis,TimeBodyAngularVelocity-StandardDeviation-X-Axis,TimeBodyAngularVelocity-StandardDeviation-Y-Axis,TimeBodyAngularVelocity-StandardDeviation-Z-Axis,TimeBodyAngularVelocityJerk-Mean-X-Axis,TimeBodyAngularVelocityJerk-Mean-Y-Axis,TimeBodyAngularVelocityJerk-Mean-Z-Axis,TimeBodyAngularVelocityJerk-StandardDeviation-X-Axis,TimeBodyAngularVelocityJerk-StandardDeviation-Y-Axis,TimeBodyAngularVelocityJerk-StandardDeviation-Z-Axis,TimeBodyAccelerationMagnitude-Mean,TimeBodyAccelerationMagnitude-StandardDeviation,TimeGravityAccelerationMagnitude-Mean,TimeGravityAccelerationMagnitude-StandardDeviation,TimeBodyAccelerationJerkMagnitude-Mean,TimeBodyAccelerationJerkMagnitude-StandardDeviation,TimeBodyAngularVelocityMagnitude-Mean,TimeBodyAngularVelocityMagnitude-StandardDeviation,TimeBodyAngularVelocityJerkMagnitude-Mean,TimeBodyAngularVelocityJerkMagnitude-StandardDeviation,FrequencyuencyBodyAcceleration-Mean-X-Axis,FrequencyuencyBodyAcceleration-Mean-Y-Axis,FrequencyuencyBodyAcceleration-Mean-Z-Axis,FrequencyuencyBodyAcceleration-StandardDeviation-X-Axis,FrequencyuencyBodyAcceleration-StandardDeviation-Y-Axis,FrequencyuencyBodyAcceleration-StandardDeviation-Z-Axis,FrequencyuencyBodyAcceleration-MeanFrequency-X-Axis,FrequencyuencyBodyAcceleration-MeanFrequency-Y-Axis,FrequencyuencyBodyAcceleration-MeanFrequency-Z-Axis,FrequencyuencyBodyAccelerationJerk-Mean-X-Axis,FrequencyuencyBodyAccelerationJerk-Mean-Y-Axis,FrequencyuencyBodyAccelerationJerk-Mean-Z-Axis,FrequencyuencyBodyAccelerationJerk-StandardDeviation-X-Axis,FrequencyuencyBodyAccelerationJerk-StandardDeviation-Y-Axis,FrequencyuencyBodyAccelerationJerk-StandardDeviation-Z-Axis,FrequencyuencyBodyAccelerationJerk-MeanFrequency-X-Axis,FrequencyuencyBodyAccelerationJerk-MeanFrequency-Y-Axis,FrequencyuencyBodyAccelerationJerk-MeanFrequency-Z-Axis,FrequencyuencyBodyAngularVelocity-Mean-X-Axis,FrequencyuencyBodyAngularVelocity-Mean-Y-Axis,FrequencyuencyBodyAngularVelocity-Mean-Z-Axis,FrequencyuencyBodyAngularVelocity-StandardDeviation-X-Axis,FrequencyuencyBodyAngularVelocity-StandardDeviation-Y-Axis,FrequencyuencyBodyAngularVelocity-StandardDeviation-Z-Axis,FrequencyuencyBodyAngularVelocity-MeanFrequency-X-Axis,FrequencyuencyBodyAngularVelocity-MeanFrequency-Y-Axis,FrequencyuencyBodyAngularVelocity-MeanFrequency-Z-Axis,FrequencyuencyBodyAccelerationMagnitude-Mean,FrequencyuencyBodyAccelerationMagnitude-StandardDeviation,FrequencyuencyBodyAccelerationMagnitude-MeanFrequency,FrequencyuencyBodyAccelerationJerkMagnitude-Mean,FrequencyuencyBodyAccelerationJerkMagnitude-StandardDeviation,FrequencyuencyBodyAccelerationJerkMagnitude-MeanFrequency,FrequencyuencyBodyAngularVelocityMagnitude-Mean,FrequencyuencyBodyAngularVelocityMagnitude-StandardDeviation,FrequencyuencyBodyAngularVelocityMagnitude-MeanFrequency,FrequencyuencyBodyAngularVelocityJerkMagnitude-Mean,FrequencyuencyBodyAngularVelocityJerkMagnitude-StandardDeviation,FrequencyuencyBodyAngularVelocityJerkMagnitude-MeanFrequency

TRANSFORMATIONS

The transformations performed on the original data sets are:
1. Loading the activities, subjects and measurements files from the test data sets, and combining the three data sets into one.
2. Loading the activities, subjects and measurements files from the train data sets, and combining the three data sets into one.
3. Combining the previously created test and train data sets into one.
4. Adding the columns names to the data set created using the features file provided.
5. Extracting only the columns of the data set corresponding the the activities, subjects and the measurements on the mean and standard deviation.
6. Adding the activity labels to the data set, using the activity_labels file provided.
7. Finally, creating and exporting a new data set containing the average of each measurement for each activity and each subject.

The resulting file is called "new_data_set.txt".
