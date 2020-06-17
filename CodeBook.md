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

...

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
