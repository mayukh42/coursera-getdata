# CodeBook for the tidy dataset

## Coursera getdata-006 Course Project

#### https://github.com/mayukh42


The following CodeBook describes the variables used in the final tidy data created with "run_analysis.R" script on Wearable Computing data described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

The tidy data comprises of the averages of the below 79 features grouped by activity type and subject id. These 79 features are a subset of 561 features in the original data. The original data contained a total of 7352 observations in the Training Set, and 2947 observations in the Test Set. Only those features involving __mean__ or __standard deviation__ type were selected from the 561 features. 

### Brief description of the experiment and overall dataset
(Some information from the original data archive's README.txt is reproduced here for completeness).

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 6 activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, triaxial linear acceleration and triaxial angular velocity (in rad/s) were captured respectively at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

More description of the features are available in the 'README.txt', 'features_info.txt', and 'features.txt' which come with the [data archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The feature (variable) names are designed to be balanced between long descriptive names and compact screen-space-saving ones, since the latter make it easy to read when a summary of data is viewed in a tabulated format on screen. For example, the first feature is named 'tBodyAcc_Xaxis_mean' instead of 'timeDomainBodyAccelerometerMeanForXaxis', because the latter will not make it easy to read a table with 79 such columns. 


### Naming Conventions for features
The following symbols are concatenated together to make feature names:

* __t__: time domain signal measurement
* __f__: frequency domain signal measurement
* __Body__: Measurement of body motional component signal
* __Gravity__: Measurement of gravitational component signal
* __Acc__: *Accelerometer* device measurement
* __Gyro__: *Gyroscope* device measurement
* __Jerk__: Measurement of jerk signals (derivative of *linear acceleration* and *angular velocity* w.r.t. *time*)
* __Mag__: Magnitude of 3 dimensional signals (calculated using *Euclidean Norm*)
* __Xaxis__: Measurement along the X axis
* __Yaxis__: Measurement along the Y axis
* __Zaxis__: Measurement along the Z axis
* __mean__: the feature is of type __mean__
* __sd__: the feature is of type __standard deviation__


## Features added for aggregate functions in tidy data

#### activity
One of the 6 different activities performed by the subjects during the observations by accelerometer and gyroscope devices:

* Walking
* Ascending stairs
* Descending stairs
* Sitting
* Standing
* Idle

#### subject
Numeric ids of the 30 subjects within an age bracket of 19-48 years, who participated in the observations. Has a value in [1..30].


## Features selected from original data

All these features are normalized in [-1, 1]. The tidy data contains the mean of all these features, grouped by the activity and subject id. For example, the first row in tidy data is for the activity *Ascending stairs* and subject id *1*, the remaining 79 columns containing the mean of values for this combination.

Since there are 6 activities and 30 subjects, the tidy dataset contains 180 lines (6x30), plus 1 line for the header.

### 1. Features measured in time domain

#### tBodyAcc_Xaxis_mean
Mean values of Accelerometer signals for body motional component along X axis, in time domain.

#### tBodyAcc_Yaxis_mean
Mean values of Accelerometer signals for body motional component along Y axis, in time domain.

#### tBodyAcc_Zaxis_mean
Mean values of Accelerometer signals for body motional component along Z axis, in time domain.

#### tBodyAcc_Xaxis_sd
Standard Deviation of Accelerometer signals for body motional component along X axis, in time domain.

#### tBodyAcc_Yaxis_sd
Standard Deviation of Accelerometer signals for body motional component along Y axis, in time domain.

#### tBodyAcc_Zaxis_sd
Standard Deviation of Accelerometer signals for body motional component along Z axis, in time domain.

#### tGravityAcc_Xaxis_mean
Mean values of Accelerometer signals for gravitational component along X axis, in time domain.

#### tGravityAcc_Yaxis_mean
Mean values of Accelerometer signals for gravitational component along Y axis, in time domain.

#### tGravityAcc_Zaxis_mean
Mean values of Accelerometer signals for gravitational component along Z axis, in time domain.

#### tGravityAcc_Xaxis_sd
Standard Deviation of Accelerometer signals for gravitational component along X axis, in time domain.

#### tGravityAcc_Yaxis_sd
Standard Deviation of Accelerometer signals for gravitational component along Y axis, in time domain.

#### tGravityAcc_Zaxis_sd
Standard Deviation of Accelerometer signals for gravitational component along Z axis, in time domain.

#### tBodyAccJerk_Xaxis_mean
Mean values of jerks in accelerometer signals along X axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccJerk_Yaxis_mean
Mean values of jerks in accelerometer signals along Y axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccJerk_Zaxis_mean
Mean values of jerks in accelerometer signals along Z axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccJerk_Xaxis_sd
Standard Deviation of jerks in accelerometer signals along X axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccJerk_Yaxis_sd
Standard Deviation of jerks in accelerometer signals along Y axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccJerk_Zaxis_sd
Standard Deviation of jerks in accelerometer signals along Z axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyro_Xaxis_mean
Mean values of Gyroscope signals for body motional component along X axis, in time domain.

#### tBodyGyro_Yaxis_mean
Mean values of Gyroscope signals for body motional component along Y axis, in time domain.

#### tBodyGyro_Zaxis_mean
Mean values of Gyroscope signals for body motional component along Z axis, in time domain.

#### tBodyGyro_Xaxis_sd
Standard Deviation of Gyroscope signals for body motional component along X axis, in time domain.

#### tBodyGyro_Yaxis_sd
Standard Deviation of Gyroscope signals for body motional component along Y axis, in time domain.

#### tBodyGyro_Zaxis_sd
Standard Deviation of Gyroscope signals for body motional component along Z axis, in time domain.

#### tBodyGyroJerk_Xaxis_mean
Mean values of jerks in Gyroscope signals for body motional component along X axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyroJerk_Yaxis_mean
Mean values of jerks in Gyroscope signals for body motional component along Y axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyroJerk_Zaxis_mean
Mean values of jerks in Gyroscope signals for body motional component along Z axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyroJerk_Xaxis_sd
Standard Deviation of jerks in accelerometer signals for body motional component along X axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyroJerk_Yaxis_sd
Standard Deviation of jerks in accelerometer signals for body motional component along Y axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyGyroJerk_Zaxis_sd
Standard Deviation of jerks in accelerometer signals for body motional component along Z axis, obtained by taking derivative of linear acceleration and angular velocity w.r.t. time.

#### tBodyAccMag_mean
Mean of magnitude of 3 dimensional signals in time domain measured by accelerometer for body motional component, calculated using Euclidean Norm

#### tBodyAccMag_sd
Standard Deviation of magnitude of 3 dimensional signals in time domain measured by accelerometer for body motional component, calculated using Euclidean Norm

#### tGravityAccMag_mean
Mean of magnitude of 3 dimensional signals in time domain measured by accelerometer for gravitational component, calculated using Euclidean Norm

#### tGravityAccMag_sd
Standard Deviation of magnitude of 3 dimensional signals in time domain measured by accelerometer for gravitational component, calculated using Euclidean Norm

#### tBodyAccJerkMag_mean
Mean of magnitude of accelerometer jerk signals in time domain in 3 dimensions for body motional component, calculated using Euclidean Norm.

#### tBodyAccJerkMag_sd
Standard Deviation of magnitude of accelerometer jerk signals in time domain in 3 dimensions for body motional component, calculated using Euclidean Norm.

#### tBodyGyroMag_mean
Mean of magnitude of gyroscope signals in time domain in 3 dimensions for body motional component, calculated using Euclidean Norm.

#### tBodyGyroMag_sd
Standard Deviation of magnitude of gyroscope signals in time domain in 3 dimensions for body motional component, calculated using Euclidean Norm.

#### tBodyGyroJerkMag_mean
Mean of magnitude of gyroscope jerk signals in time domain in 3 dimensions for body motional component, calculated using Euclidean Norm.

#### tBodyGyroJerkMag_sd
Standard Deviation of magnitude of gyroscope jerk signals in time domain in 3 dimensions for Body, calculated using Euclidean Norm.


### 2. Features measured in frequency domain
These features were obtained by applying Fast Fourier Transform (FFT) to the corresponding features in time doman. 

#### fBodyAcc_Xaxis_mean
Mean of accelerometer signals for body motional components along X axis in frequency domain.

#### fBodyAcc_Yaxis_mean
Mean of accelerometer signals for body motional components along Y axis in frequency domain.

#### fBodyAcc_Zaxis_mean
Mean of accelerometer signals for body motional components along Z axis in frequency domain.

#### fBodyAcc_Xaxis_sd
Standard Deviation of accelerometer signals for body motional components along X axis in frequency domain.

#### fBodyAcc_Yaxis_sd
Standard Deviation of accelerometer signals for body motional components along Y axis in frequency domain.

#### fBodyAcc_Zaxis_sd
Standard Deviation of accelerometer signals for body motional components along Z axis in frequency domain.

#### fBodyAcc_Xaxis_meanFreq
Mean Frequency of accelerometer signals for body motional components along X axis in frequency domain.

#### fBodyAcc_Yaxis_meanFreq
Mean Frequency of accelerometer signals for body motional components along Y axis in frequency domain.

#### fBodyAcc_Zaxis_meanFreq
Mean Frequency of accelerometer signals for body motional components along Z axis in frequency domain.

#### fBodyAccJerk_Xaxis_mean
Mean of accelerometer jerk signals for body motional component in frequency domain along X axis. 

#### fBodyAccJerk_Yaxis_mean
Mean of accelerometer jerk signals for body motional component in frequency domain along Y axis.

#### fBodyAccJerk_Zaxis_mean
Mean of accelerometer jerk signals for body motional component in frequency domain along Z axis.

#### fBodyAccJerk_Xaxis_sd
Standard Deviation of accelerometer jerk signals for body motional component in frequency domain along X axis.

#### fBodyAccJerk_Yaxis_sd
Standard Deviation of accelerometer jerk signals for body motional component in frequency domain along Y axis.

#### fBodyAccJerk_Zaxis_sd
Standard Deviation of accelerometer jerk signals for body motional component in frequency domain along Z axis.

#### fBodyAccJerk_Xaxis_meanFreq
Mean Frequency of accelerometer jerk signals for body motional components along X axis in frequency domain.

#### fBodyAccJerk_Yaxis_meanFreq
Mean Frequency of accelerometer jerk signals for body motional components along Y axis in frequency domain.

#### fBodyAccJerk_Zaxis_meanFreq
Mean Frequency of accelerometer jerk signals for body motional components along Z axis in frequency domain.

#### fBodyGyro_Xaxis_mean
Mean of gyroscope signals for body motional components along X axis in frequency domain.

#### fBodyGyro_Yaxis_mean
Mean of gyroscope signals for body motional components along Y axis in frequency domain.

#### fBodyGyro_Zaxis_mean
Mean of gyroscope signals for body motional components along Z axis in frequency domain.

#### fBodyGyro_Xaxis_sd
Standard Deviation of gyroscope signals for body motional components along X axis in frequency domain.

#### fBodyGyro_Yaxis_sd
Standard Deviation of gyroscope signals for body motional components along Y axis in frequency domain.

#### fBodyGyro_Zaxis_sd
Standard Deviation of gyroscope signals for body motional components along Z axis in frequency domain.

#### fBodyGyro_Xaxis_meanFreq
Mean Frequency of gyroscope signals for body motional components along X axis in frequency domain.

#### fBodyGyro_Yaxis_meanFreq
Mean Frequency of gyroscope signals for body motional components along Y axis in frequency domain.

#### fBodyGyro_Zaxis_meanFreq
Mean Frequency of gyroscope signals for body motional components along Z axis in frequency domain.

#### fBodyAccMag_mean
Mean of magnitude of 3 dimensional signals in frequency domain measured by accelerometer for Body, calculated using Euclidean Norm.

#### fBodyAccMag_sd
Standard Deviation of magnitude of 3 dimensional signals in frequency domain measured by accelerometer for Body, calculated using Euclidean Norm.

#### fBodyAccMag_meanFreq
Mean Frequency of magnitude of 3 dimensional signals in frequency domain measured by accelerometer for Body, calculated using Euclidean Norm.

#### fBodyBodyAccJerkMag_mean
Mean of magnitude of 3 dimensional jerk signals in frequency domain measured by accelerometer for body motional components, calculated using Euclidean Norm.

#### fBodyBodyAccJerkMag_std
Standard Deviation of magnitude of 3 dimensional jerk signals in frequency domain measured by accelerometer for body motional components, calculated using Euclidean Norm.

#### fBodyBodyAccJerkMag_meanFreq
Mean Frequency of magnitude of 3 dimensional jerk signals in frequency domain measured by accelerometer for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroMag_mean
Mean of magnitude of 3 dimensional signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroMag_sd
Standard Deviation of magnitude of 3 dimensional signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroMag_meanFreq
Mean Frequency of magnitude of 3 dimensional signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroJerkMag_mean
Mean of magnitude of 3 dimensional jerk signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroJerkMag_sd
Standard Deviation of magnitude of 3 dimensional jerk signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.

#### fBodyBodyGyroJerkMag_meanFreq
Mean Frequency of magnitude of 3 dimensional jerk signals in frequency domain measured by gyroscope for body motional components, calculated using Euclidean Norm.
