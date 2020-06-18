# This R script called run_analysis.R does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of
#    each variable for each activity and each subject.



run_analysis <- function() {

        library(data.table)
        
        # Loading the variables
        source("variables.R")
        
        # Loading the summaries functions
        source("summaries_functions.R")
        
        # Loading the test data set
        test_data_set <- import_data("test")
        
        # Loading the train data set
        train_data_set <- import_data("train")
        
        # Creating a unified data set
        data_set <- rbind(test_data_set, train_data_set)
        
        # Cleaning the memory
        rm(test_data_set, train_data_set)
        
        # Setting the columns names for the data set
        colnames(data_set) <- columns_names()
        
        # Extracting only the columns of the subjects, activities and the measurements on the mean
        # and the standard deviation
        data_set <- extract_data(data_set)
        
        # Adding the activity labels
        data_set <- activity_labels(data_set)
        
        # Using descriptive variables names
        names(data_set) <- descriptive_variables_names(data_set)
        
        # Creating a new data set with the average of each variable for each subject and each
        # activity
        new_data_set <- new_data_set(data_set)
        
        # Exporting the new data set created
        write.table(new_data_set,
                    "new_data_set.txt",
                    sep = ",",
                    row.names = FALSE,
                    quote = FALSE)

}