## Loading tidyr and dplyr libraries
library(tidyr)
library(dplyr)

## Setting up directories
## Setting up working directory
setwd("C:\\Users\\sgermain\\Desktop\\Coursera\\Using data\\Project\\Tidy Data Project")

## Checking for data directory, if not there create it
if (!file.exists("data")){
    dir.create("data")
    ## Obtaining the data file in zip 
    ## Setting the file source location and downloading the file
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    ## Downloading the file and inserting it into the data directory
    download.file(fileURL, destfile = "./data/data.zip")
    ## Capturing the date of the download
    dateDownloaded <- date()
}
## set working directory to the data directory and unzip the file
    setwd("./data")
    unzip("data.zip")

setwd("./UCI HAR Dataset")
vector_features <- tbl_df(read.table("./features.txt"))

## Getting the train data
    setwd("./train")

## Reading the /training folder files 
training_set <- tbl_df(read.table("./X_train.txt"))
training_labels <- tbl_df(read.table("./Y_train.txt"))
names(training_labels) <- "Activity"
training_subject <- tbl_df(read.table("./subject_train.txt"))
names(training_subject) <- "Subject"
names(training_set) <- vector_features$V2
training_data <- bind_cols(training_labels, training_subject, training_set)

## Reading the /test folder files 
setwd("../test")
test_set <- tbl_df(read.table("./X_test.txt"))
test_labels <- tbl_df(read.table("./y_test.txt"))
names(test_labels) <- "Activity"
test_subject <- tbl_df(read.table("./subject_test.txt"))
names(test_subject) <- "Subject"
names(test_set) <- vector_features$V2
test_data <- bind_cols(test_labels, test_subject, test_set)

## Merge the training and the test sets to create one data set.
All_data <- rbind(training_data, test_data)

## Converting the factors descriptive string to lowercase
names(All_data) <- tolower(names(All_data))

## Converting the factors descriptive string to replace "()" and "-"
names(All_data) <- gsub("()", ".", names(All_data), fixed=TRUE)
names(All_data) <- gsub("-", ".", names(All_data), fixed=TRUE)
names(All_data) <- gsub("..", ".", names(All_data), fixed=TRUE)

## Extract the measurements on the mean and standard deviation for each measurement (only this data)
All_data_subset <- All_data[grepl("activity|subject|std\\.|mean\\.", names(All_data), fixed=FALSE)]

by_subject_activity <- group_by(All_data_subset, "activity", "subject")

#Calculating average data per subject per class
Results <- ddply(by_subject_activity, .(activity, subject), numcolwise(mean))

## Uses descriptive activity names to name the activities in the data set.

## Appropriately labels the data set with descriptive variable names.

## Writing the results to a text file
setwd("C:\\Users\\sgermain\\Desktop\\Coursera\\Using data\\Project\\Tidy Data Project")
write.table(Results, "run_analysis.txt", row.names=FALSE)