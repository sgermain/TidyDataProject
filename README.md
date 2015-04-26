Readme.txt for run_analysis.R - Created 4/26/2014


=========================================
Objectives of script:
=========================================
A- merge the training and the test sets to create one data set.
B- Use descriptive activity names to name the activities in the data set
C- Appropriately labels the data set with descriptive variable names. 
D- Extracts only the measurements on the mean and standard deviation for each measurement. 
E- Output an independent tidy data set with the average of each variable for each activity and each subject.
 
=========================================
Dependencies:
=========================================
This script requires tidyr and dplyr libraries be installed in your programming environment 

=========================================
Inputs:
=========================================
No parameters needed, although the program will automatically download, unzip and process the data.

=========================================
Output:
=========================================
run_analysis.txt: A long form tidy data set with the average of each variable for each activity and each subject.

=========================================
How this script works:
=========================================
1) The script sets the working directory to "C:\\Users\\sgermain\\Desktop\\Coursera\\Using data\\Project\\Tidy Data Project"

2) If the \data folder doesn't already exist, the script creates a \data subdirectory to download and extract all the data files used by the script.  The files is downloaded from the website as data.zip file and extracted in the /data directory.
The dateDownloaded variable captures the date of the last data download.

3) After the file dowload has completed, it will extract the data into the "\UCI HAR Dataset" folder.  It then reads the values of the features.txt file into the vector_features vector.  We are using the values of this vector as the descriptive names of the activities in our merged data set.  

4) The script switches over into the /train folder and reads the data from the X_train.txt and  Y_train.txt files into the training_set, training_labels and training_subject dataframe tables.  We give the training_labels, training_subject and training_set tables meaningful variable names by setting the factor of these tables to "Activity", "Subject" and the features listed in the vector_features vector. We then merge and consolidate the train data tables into the test_data frame.


5)  The script switches over into the /test folder and reads the data from the X_test.txt and y_test.txt files into the test_set, test_labels and test_subject dataframe tables.  We give the training_labels, test_subject and training_set tables meaningful variable names by setting the factor of these tables to "Activity", "Subject" and the features listed in the vector_features vector. We then merge and consolidate the test data tables into the test_data frame. 

6) The script merges the data from both the training_data and test_data into a consolidated All_data dataframe table.

7) We clean up the factors (variable names) in the All_datatable by relacing the "()" and "-" characters to "." and converting all uppercase letters to lowercase.

8) We create the All_data_subset data table by filtering and selecting columns from the All_data table that **END** with the "std" and "mean" strings.  If the column name did not end with "std" or "mean" - it was not selected.  We also added the activity and subject columns from the All_data table into the selection.

9) We then grouped the data by activity and subject, claculating the average for each variable.

10) We set the home directory back to the home folder, in this case ""C:\\Users\\sgermain\\Desktop\\Coursera\\Using data\\Project\\Tidy Data Project", and printed out the resulting dataset in the run_analysis.txt file. 

=========================================
Data files used by this script:
=========================================

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt' and test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
