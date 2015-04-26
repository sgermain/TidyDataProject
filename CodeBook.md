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
Description of variables 
==================================================================

Activity - Type of activity performed by a subject, can have the following values:
1 WALKING; 2 WALKING_UPSTAIRS; 3 WALKING_DOWNSTAIRS; 4 SITTING; 5 STANDING; 6 LAYING

subject: one of the 30 test subjects assigned to the experiment - values in the range of 1-30
tbodyacc.mean.x: average body 
tbodyacc.mean.y
tbodyacc.mean.z
tbodyacc.std.x
tbodyacc.std.y
tbodyacc.std.z
tgravityacc.mean.x
tgravityacc.mean.y
tgravityacc.mean.z
tgravityacc.std.x
tgravityacc.std.y
tgravityacc.std.z
tbodyaccjerk.mean.x
tbodyaccjerk.mean.y
tbodyaccjerk.mean.z
tbodyaccjerk.std.x
tbodyaccjerk.std.y
tbodyaccjerk.std.z
tbodygyro.mean.x
tbodygyro.mean.y
tbodygyro.mean.z
tbodygyro.std.x
tbodygyro.std.y
tbodygyro.std.z
tbodygyrojerk.mean.x
tbodygyrojerk.mean.y
tbodygyrojerk.mean.z
tbodygyrojerk.std.x
tbodygyrojerk.std.y
tbodygyrojerk.std.z
tbodyaccmag.mean.
tbodyaccmag.std.
tgravityaccmag.mean.
tgravityaccmag.std.
tbodyaccjerkmag.mean.
tbodyaccjerkmag.std.
tbodygyromag.mean.
tbodygyromag.std.
tbodygyrojerkmag.mean.
tbodygyrojerkmag.std.
fbodyacc.mean.x
fbodyacc.mean.y
fbodyacc.mean.z
fbodyacc.std.x
fbodyacc.std.y
fbodyacc.std.z
fbodyaccjerk.mean.x
fbodyaccjerk.mean.y
fbodyaccjerk.mean.z
fbodyaccjerk.std.x
fbodyaccjerk.std.y
fbodyaccjerk.std.z
fbodygyro.mean.x
fbodygyro.mean.y
fbodygyro.mean.z
fbodygyro.std.x
fbodygyro.std.y
fbodygyro.std.z
fbodyaccmag.mean.
fbodyaccmag.std.
fbodybodyaccjerkmag.mean.
fbodybodyaccjerkmag.std.
fbodybodygyromag.mean.
fbodybodygyromag.std.
fbodybodygyrojerkmag.mean.
fbodybodygyrojerkmag.std.


