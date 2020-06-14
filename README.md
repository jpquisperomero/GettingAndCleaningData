# GettingAndCleaningData

This is the repository for my project on the Getting and Cleaning Data course.

It contains 3 R script files:

- run_analysis.R, which is the main script performing the necessary tasks to get the right output.
- variables.R, which contains the main variables used in the project. This script is used by the main script run_analysis.R.
- summaries_functions.R, which contains the necessary functions for the project. This script is used by the main script run_analysis.R.

These files must be placed on the working directory to work properly.

The data sets must be downloaded from :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Once the zip file downloaded, it is required to unzip the folder "UCI HAR Dataset" and place it directly on the working directory as well.

If necessary, modify the variables in the variables.R script containing the name of the original data sets folder, the character for the path separator and the file extension of the original data set files.

In order to run the analysis, be sure to have installed previously the data.table, reshape2 and plyr packages to R. Then, load the run_analysis.R script to R by typing source("run_analysis.R") on the console.

The outcome of this process is a file called new_data_set.txt placed in the current working directory.
