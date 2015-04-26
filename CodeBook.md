==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

==================================================================
Description of variables (time units = seconds / frequency in Hz)
==================================================================

Activity - Type of activity performed by a subject, can have the following values:
1 WALKING; 2 WALKING_UPSTAIRS; 3 WALKING_DOWNSTAIRS; 4 SITTING; 5 STANDING; 6 LAYING

subject: one of the 30 test subjects assigned to the experiment - values in the range of 1-30

tbodyacc.mean.x: average body acceleration measured X axis - time

tbodyacc.mean.y: average body acceleration measured y axis - time

tbodyacc.mean.z: average body acceleration measured Z axis - time

tbodyacc.std.x: average standard deviation body acceleration measured x axis - time

tbodyacc.std.y: average standard deviation body acceleration measured y axis - time

tbodyacc.std.z: average standard deviation body acceleration measured z axis - time

tgravityacc.mean.x: average gravity acceleration measured X axis  - time

tgravityacc.mean.y: average gravity acceleration measured y axis  - time

tgravityacc.mean.z: average gravity acceleration measured z axis  - time

tgravityacc.std.x: average standard deviation gravity acceleration measured x axis  - time

tgravityacc.std.y: average standard deviation gravity acceleration measured y axis  - time

tgravityacc.std.z: average standard deviation gravity acceleration measured z axis  - time

tbodyaccjerk.mean.x: average body jerk acceleration measured X axis  - time

tbodyaccjerk.mean.y: average body jerk acceleration measured y axis  - time

tbodyaccjerk.mean.z: average body jerk acceleration measured z axis  - time

tbodyaccjerk.std.x: average standard deviation gravity body jerk acceleration measured x axis  - time

tbodyaccjerk.std.y: average standard deviation gravity body jerk acceleration measured y axis  - time

tbodyaccjerk.std.z: average standard deviation gravity body jerk acceleration measured z axis  - time

tbodygyro.mean.x: average body gyro measured X axis  - time

tbodygyro.mean.y: average body gyro measured y axis  - time

tbodygyro.mean.z: average body gyro measured z axis  - time

tbodygyro.std.x: average standard deviation body gyro measured X axis  - time

tbodygyro.std.y: average standard deviation body gyro measured y axis  - time

tbodygyro.std.z: average standard deviation body gyro measured z axis  - time

tbodygyrojerk.mean.x: average body gyro jerk measured X axis  - time

tbodygyrojerk.mean.y: average body gyro jerk measured y axis  - time

tbodygyrojerk.mean.z: average body gyro jerk measured z axis  - time

tbodygyrojerk.std.x: average standard deviation body gyro jerk measured X axis  - time

tbodygyrojerk.std.y: average standard deviation body gyro jerk measured X axis  - time

tbodygyrojerk.std.z: average standard deviation body gyro jerk measured X axis  - time

tbodyaccmag.mean.: average body acceleration three dimensional  - time

tbodyaccmag.std.: average standard deviation body acceleration three dimensional  - time

tgravityaccmag.mean.: average gravity acceleration three dimensional  - time

tgravityaccmag.std.: average standard deviation gravity acceleration three dimensional  - time

tbodyaccjerkmag.mean.: average body acceleration jerking movement three dimensional  - time

tbodyaccjerkmag.std.: average standard deviation body acceleration jerking movement three dimensional  - time

tbodygyromag.mean.: average body gyro movement  - time

tbodygyromag.std.: average standard deviation body gyro movement  - time

tbodygyrojerkmag.mean.: average body gyro jerking movement  - time

tbodygyrojerkmag.std.: average standard deviation body gyro jerking movement - time

fbodyacc.mean.x: average body acceleation measured X axis - frequency

fbodyacc.mean.y: average body acceleation measured y axis - frequency

fbodyacc.mean.z: average body acceleation measured z axis - frequency

fbodyacc.std.x: average standard deviation body acceleation measured X axis - frequency

fbodyacc.std.y: average standard deviation body acceleation measured y axis - frequency

fbodyacc.std.z: average standard deviation body acceleation measured z axis - frequency

fbodyaccjerk.mean.x: average body acceleation jerking motion measured X axis - frequency

fbodyaccjerk.mean.y: average body acceleation jerking motion measured y axis - frequency

fbodyaccjerk.mean.z: average body acceleation jerking motion measured z axis - frequency

fbodyaccjerk.std.x: average standard deviation body acceleation jerking motion measured X axis - frequency

fbodyaccjerk.std.y: average standard deviation body acceleation jerking motion measured y axis - frequency

fbodyaccjerk.std.z: average standard deviation body acceleation jerking motion measured z axis - frequency

fbodygyro.mean.x: average body gyro measured X axis - frequency

fbodygyro.mean.y: average body gyro measured y axis - frequency

fbodygyro.mean.z: average body gyro measured z axis - frequency

fbodygyro.std.x: average standard deviation body gyro measured X axis - frequency

fbodygyro.std.y: average standard deviation body gyro measured y axis - frequency

fbodygyro.std.z: average standard deviation body gyro measured z axis - frequency

fbodyaccmag.mean.: average body acceleration aggregated - frequency

fbodyaccmag.std.: average standard deviation body acceleration aggregated - frequency

fbodybodyaccjerkmag.mean.: average body body acceleration jerking movement aggregated - frequency

fbodybodyaccjerkmag.std.: average standard deviation body body acceleration jerking movement aggregated - frequency

fbodybodygyromag.mean.: average body body gyro movement aggregated - frequency

fbodybodygyromag.std.: average standard deviation body body gyro aggregated movement aggregated - frequency

fbodybodygyrojerkmag.mean.: average body body gyro jerking movement aggregated - frequency

fbodybodygyrojerkmag.std.: average standard deviation body body gyro jerking movement aggregated - frequency

=========================================
How this script works:
=========================================
1) The script sets the working directory to "C:\\Users\\sgermain\\Desktop\\Coursera\\Using data\\Project\\Tidy Data Project" (Home directory)

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

