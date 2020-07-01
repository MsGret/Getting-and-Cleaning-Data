# CodeBook for Getting and Cleaning Data Course Project

This file contains the explanation of all the variables and summaries calculated (`run_analysis.R`).

## Algorithm

1. Download data - Human Activity Recognition Using Smartphones Dataset <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

2. Read raw data from train and test sets.

3. Merges the training and the test sets to create one data set.

4. Extracts only the measurements on the mean and standard deviation for each measurement.

5. Uses descriptive activity names to name the activities in the data set.

6. Appropriately labels the data set with descriptive variable names.

7. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Result

`tidyDataset.txt` is a clean data as result of analysis.

The `tidyDataset.txt` contains 180 observation of 88 variables. The first row contains the names of the variables (colums). The following rows contain the values of these variables.

Original data come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix `Time`) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (prefixs `TimeBodyAccelerometer` and `TimeGravityAccelerometer`) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (variables names include `Jerk`). Also the magnitude (variables names include `Magnitude`) of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform was applied to some of these signals (prefix `Frequency`).

These signals were used to estimate variables of the feature vector for each pattern: `-X`, or `-Y`, or `-Z` is used to denote 3-axial signals in the X, Y and Z directions.

`Mean` in variable name means average value of variable (for each subject and level of activity).

`STD` in variable name means standard deviation of variable (for each subject and level of activity).

### Variables

- `Subject` - integer, ranges from 1 to 30.

- `Activity` (for each subject) - factor, with 6 levels:
	- `WALKING`
	- `WALKING_UPSTAIRS`
	- `WALKING_DOWNSTAIRS`
	- `SITTING`
	- `STANDING`
	- `LAYING`

- `TimeBodyAccelerometerMean-X` (min. 0.2216; max. 0.3015)
- `TimeBodyAccelerometerMean-Y` (min. -0.040514; max. -0.001308)
- `TimeBodyAccelerometerMean-Z` (min. -0.15251; max. -0.07538)

- `TimeGravityAccelerometerMean-X` (min. -0.6800; max. 0.9745)
- `TimeGravityAccelerometerMean-Y` (min. -0.47989; max. 0.95659)
- `TimeGravityAccelerometerMean-Z` (min. -0.49509; max. 0.95787)

- `TimeBodyAccelerometerJerkMean-X` (min. 0.04269; max. 0.13019)
- `TimeBodyAccelerometerJerkMean-Y` (min. -0.0386872; max. 0.0568186)
- `TimeBodyAccelerometerJerkMean-Z` (min. -0.067458; max. 0.038053)

- `TimeBodyGyroscopeMean-X` (min. -0.20578; max. 0.19270)
- `TimeBodyGyroscopeMean-Y` (min. -0.20421; max. 0.02747)
- `TimeBodyGyroscopeMean-Z` (min. -0.07245; max. 0.17910)

- `TimeBodyGyroscopeJerkMean-X` (min. -0.15721; max. -0.02209)
- `TimeBodyGyroscopeJerkMean-Y` (min. -0.07681; max. -0.01320)
- `TimeBodyGyroscopeJerkMean-Z` (min. -0.092500; max. -0.006941)

- `TimeBodyAccelerometerMagnitudeMean` (min. -0.9865; max. 0.6446)

- `TimeGravityAccelerometerMagnitudeMean` (min. -0.9865; max. 0.6446)

- `TimeBodyAccelerometerJerkMagnitudeMean` (min. -0.9928; max. 0.4345)
  
- `TimeBodyGyroscopeMagnitudeMean` (min. -0.9807; max. 0.4180)

- `TimeBodyGyroscopeJerkMagnitudeMean` (min. -0.99732; max. 0.08758)
  
- `FrequencyBodyAccelerometerMean-X` (min. -0.9952; max. 0.5370)
- `FrequencyBodyAccelerometerMean-Y` (min. -0.98903; max. 0.52419)
- `FrequencyBodyAccelerometerMean-Z` (min. -0.9895; max. 0.2807)

- `FrequencyBodyAccelerometerMeanFrequency-X` (min. -0.63591; max. 0.15912)
- `FrequencyBodyAccelerometerMeanFrequency-Y` (min. -0.379518; max. 0.466528)
- `FrequencyBodyAccelerometerMeanFrequency-Z` (min. -0.52011; max. 0.40253)

- `FrequencyBodyAccelerometerJerkMean-X` (min. -0.9946; max. 0.4743)
- `FrequencyBodyAccelerometerJerkMean-Y` (min. -0.9894; max. 0.2767)
- `FrequencyBodyAccelerometerJerkMean-Z` (min. -0.9920; max. 0.1578)

- `FrequencyBodyAccelerometerJerkMeanFrequency-X` (min. -0.57604; max. 0.33145)
- `FrequencyBodyAccelerometerJerkMeanFrequency-Y` (min. -0.60197; max. 0.19568)
- `FrequencyBodyAccelerometerJerkMeanFrequency-Z` (min. -0.62756; max. 0.23011)

- `FrequencyBodyGyroscopeMean-X` (min. -0.9931; max. 0.4750)
- `FrequencyBodyGyroscopeMean-Y` (min. -0.9940; max. 0.3288)
- `FrequencyBodyGyroscopeMean-Z` (min. -0.9860; max. 0.4924)

- `FrequencyBodyGyroscopeMeanFrequency-X` (min. -0.395770; max. 0.249209)
- `FrequencyBodyGyroscopeMeanFrequency-Y` (min. -0.66681; max. 0.27314)
- `FrequencyBodyGyroscopeMeanFrequency-Z` (min. -0.50749; max. 0.37707)

- `FrequencyBodyAccelerometerMagnitudeMean` (min. -0.9868; max. 0.5866)

- `FrequencyBodyAccelerometerMagnitudeMeanFrequency` (min. -0.31234; max. 0.43585)

- `FrequencyBodyAccelerometerJerkMagnitudeMean` (min. -0.9940; max. 0.5384)
 
- `FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency` (min. -0.12521; max. 0.48809)

- `FrequencyBodyGyroscopeMagnitudeMean` (min. -0.9865; max. 0.2040)

- `FrequencyBodyGyroscopeMagnitudeMeanFrequency` (min. -0.45664; max. 0.40952)       
            
- `FrequencyBodyGyroscopeJerkMagnitudeMean` (min. -0.9976; max. 0.1466)

- `FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency` (min. -0.18292; max. 0.42630)

- `AngleTimeBodyAccelerometerMeanGravity` (min. -0.163043; max. 0.129154)

- `AngleTimeBodyAccelerometerJerkMeanGravityMean` (min. -0.120554; max. 0.203260)

- `AngleTimeBodyGyroscopeMeanGravityMean` (min. -0.38931; max. 0.44410)

- `AngleTimeBodyGyroscopeJerkMeanGravityMean` (min. -0.22367; max. 0.18238)

- `Angle-XGravityMean` (min. -0.9471; max. 0.7378)

- `Angle-YGravityMean` (min. -0.87457; max. 0.42476)

- `Angle-ZGravityMean` (min. -0.873649; max. 0.390444)

- `TimeBodyAccelerometerSTD-X` (min. -0.9961; max. 0.6269)
- `TimeBodyAccelerometerSTD-Y` (min. -0.99024; max. 0.61694)
- `TimeBodyAccelerometerSTD-Z` (min. -0.9877; max. 0.6090)      

- `TimeGravityAccelerometerSTD-X` (min. -0.9968; max. -0.8296)
- `TimeGravityAccelerometerSTD-Y` (min. -0.9942; max. -0.6436)
- `TimeGravityAccelerometerSTD-Z` (min. -0.9910; max. -0.6102)

- `TimeBodyAccelerometerJerkSTD-X` (min. -0.9946; max. 0.5443)
- `TimeBodyAccelerometerJerkSTD-Y` (min. -0.9895; max. 0.3553)
- `TimeBodyAccelerometerJerkSTD-Z` (min. -0.99329; max. 0.03102)

- `TimeBodyGyroscopeSTD-X` (min. -0.9943; max. 0.2677)
- `TimeBodyGyroscopeSTD-Y` (min. -0.9942; max. 0.4765)
- `TimeBodyGyroscopeSTD-Z` (min. -0.9855; max. 0.5649)

- `TimeBodyGyroscopeJerkSTD-X` (min. -0.9965; max. 0.1791)
- `TimeBodyGyroscopeJerkSTD-Y` (min. -0.9971; max. 0.2959)
- `TimeBodyGyroscopeJerkSTD-Z` (min. -0.9954; max. 0.1932)

- `TimeBodyAccelerometerMagnitudeSTD` (min. -0.9865; max. 0.4284)

- `TimeGravityAccelerometerMagnitudeSTD` (min. -0.9865; max. 0.4284)

- `TimeBodyAccelerometerJerkMagnitudeSTD` (min. -0.9946; max. 0.4506) 

- `TimeBodyGyroscopeMagnitudeSTD` (min. -0.9814; max. 0.3000)

- `TimeBodyGyroscopeJerkMagnitudeSTD` (min. -0.9977; max. 0.2502)

- `FrequencyBodyAccelerometerSTD-X` (min. -0.9966; max. 0.6585) 
- `FrequencyBodyAccelerometerSTD-Y` (min. -0.99068; max. 0.56019)
- `FrequencyBodyAccelerometerSTD-Z` (min. -0.9872; max. 0.6871)

- `FrequencyBodyAccelerometerJerkSTD-X` (min. -0.9951; max. 0.4768) 
- `FrequencyBodyAccelerometerJerkSTD-Y` (min. -0.9905; max. 0.3498)
- `FrequencyBodyAccelerometerJerkSTD-Z` (min. -0.9931; max. -0.0062)

- `FrequencyBodyGyroscopeSTD-X` (min. -0.9947; max. 0.1966) 
- `FrequencyBodyGyroscopeSTD-Y` (min. -0.9944; max. 0.6462)
- `FrequencyBodyGyroscopeSTD-Z` (min. -0.9867; max. 0.5225)

- `FrequencyBodyAccelerometerMagnitudeSTD` (min. -0.9876; max. 0.1787)

- `FrequencyBodyAccelerometerJerkMagnitudeSTD` (min. -0.9944; max. 0.3163)

- `FrequencyBodyGyroscopeMagnitudeSTD` (min. -0.9815; max. 0.2367)

- `FrequencyBodyGyroscopeJerkMagnitudeSTD` (min. -0.9976; max. 0.2878)
