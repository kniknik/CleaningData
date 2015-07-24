# Code Book for Coursera Cleaning Data Project


## The Format of the Original Data

The original data are collected from an accelerometer and gyroscope.  Variables beginning with "t" are time signals, "Acc" for accelerometer, "Gyro" for gyroscope.

"Jerk" signals were derived from the linear acceleration and the angular velocity, "Mag" variables represent the magnitude of the three dimensional signals.

Variables beginning with "f" have been transformed using a Fast Fourier Transformation.

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

mean(): Mean value  
std(): Standard deviation  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

## Tidied Output Data

From the above data, the following were extracted and processed.

For each type of motion (eg. BodyAcc) there is an X, Y and Z mean and standard deviation value.

tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  

tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  

tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  

tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  

tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  

tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  

tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  

tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  

tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  

tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  

tBodyAccMag-mean()  
tBodyAccMag-std()  
  
tGravityAccMag-mean()  
tGravityAccMag-std()  

tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  

tBodyGyroMag-mean()  
tBodyGyroMag-std()  

tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  

fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  

fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  

fBodyAcc-meanFreq()-X  
fBodyAcc-meanFreq()-Y  
fBodyAcc-meanFreq()-Z  

fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  

fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  

fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y  
fBodyAccJerk-meanFreq()-Z  

fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  

fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  

fBodyGyro-meanFreq()-X  
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z  

fBodyAccMag-mean()  
fBodyAccMag-std()  

fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-meanFreq()  

fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroMag-meanFreq()  

fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-meanFreq()  

