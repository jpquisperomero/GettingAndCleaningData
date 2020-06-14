# Necessary functions for the run_analysis.R file

# The function "importa_data" imports the "train" or "test" file and returns a data frame with
# subjects, activities and measurements.

import_data <- function(data_set_name) {
        
        library(data.table)
        
        # Checking for the file validity : "train" or "test"
        if(!data_set_name %in% c("train", "test")){
                stop("Non valid data set. Please indicate only either 'train' or 'test'")
        }

        # Loading the activities file
        activities_file <- paste("y_", data_set_name, file_extension, sep = "")
        activities_data <- read.table(paste(data_directory,
                                            data_set_name,
                                            activities_file,
                                            sep = path_separator),
                                      header = FALSE,
                                      colClasses = "factor")        
                
        # Loading the subjects file
        subjects_file <- paste("subject_", data_set_name, file_extension, sep="")
        subjects_data <- read.table(paste(data_directory,
                                         data_set_name,
                                         subjects_file,
                                         sep = path_separator),
                                   header = FALSE,
                                   colClasses = "integer")
        
        # Loading the measurements file
        measurements_file <- paste("X_", data_set_name, file_extension, sep = "")
        measurements_data <- read.fwf(paste(data_directory,
                                            data_set_name,
                                            measurements_file,
                                            sep = path_separator),
                                      rep(16, times = 561),
                                      header = FALSE,
                                      colClasses = "numeric",
                                      buffersize = 300)
        
        # Combining the three previously created data frames
        combined_data <- cbind(activities_data, subjects_data, measurements_data)

        # Returning the combined data frame with its column names
        combined_data
}

# The function "columns_names" imports the features file and returns a vector containing the columns
# names for the data set

columns_names <- function(){
        
        # Loading the features file
        features_file <- paste("features", file_extension, sep = "")    
        features_data <- read.table(paste(data_directory,
                                          features_file,
                                          sep = path_separator),
                                    header = FALSE,
                                    col.names = c("feature_id", "feature_description"),
                                    colClasses = c("factor", "character"))
        
        # Returning the columns names
        c("activity_id", "subject_id", features_data$feature_description)
}

# The function "extract_data" extracts only the columns concerning the subjects, the activities and
# the measurements on the mean and the standard deviation.

extract_data <- function(data_set){
        
        # Getting the columns names of the data set
        columns_names <- cbind(names(data_set))
        columns <- data.frame(columns_names)
        
        # Identifying the columns on the mean and standard deviation measurements
        columns$selected <- grepl(".*-mean.*", columns$columns_names) | 
                                 grepl(".*-std.*", columns$columns_names)
        
        # Identifying the columns on the subjects and the activities
        columns$selected[1:2] <- TRUE
        
        # Extracting the columns
        data_set <- data_set[, columns$selected]
        
        # Returning the data set
        data_set
        
}

# The function "activity_labels" uses the file "activity_labels.txt" to complete the activity labels
# for the data set

activity_labels <- function(data_set) {
        
        # Loading the activity labels file
        activity_labels_file <- paste("activity_labels", file_extension, sep = "")
        activity_labels <- read.table(paste(data_directory,
                                            activity_labels_file,
                                            sep = path_separator),
                                      sep = " ",
                                      header = FALSE,
                                      col.names = c("activity_id", "activity_label"),
                                      colClasses = c("factor", "factor"))
        
        # Merging the data set and the activity labels data frames
        merged_data_set <- merge(activity_labels, data_set, all = TRUE)
        data_set <- merged_data_set[, c(2:82)]
        
        # Returning the data sete
        data_set
}

# The function "new_data_set" creates a second, independent, tidy data set with the average of each
# variable for each subject and each activity

new_data_set <- function(data_set){
        
        library(data.table)
        library(plyr)
        library(reshape2)
        
        # Getting the columns of variables
        columns_names <- names(data_set)
        columns_names <- columns_names[3:81]
        
        # Melting the data frame
        melted_data_set <- melt(data_set,
                                 id = c("activity_label", "subject_id"),
                                 measure.vars = columns_names)
        
        # Creating the new data set
        new_data_set <- dcast(melted_data_set, activity_label + subject_id ~ variable, mean)
        
        # Sorting the new data set
        new_data_set <- arrange(new_data_set, activity_label, subject_id)
        
        # Returning the new data set
        new_data_set
}





















