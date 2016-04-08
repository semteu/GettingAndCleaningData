# Codebook for UCI HAR Tidy Dataset 

## Variables 
````

subject                                         1..2
	subject identifier

activity                                        6..18
	activity label
                                WALKING
                                WALKING_UPSTAIRS
                                WALKING_DOWNSTAIRS
                                SITTING
                                STANDING
                                LAYING

timeBodyAccelerometerMeanX                         13
	Described below

timeBodyAccelerometerMeanY                         13
	Described below

timeBodyAccelerometerMeanZ                         13
	Described below

timeBodyAccelerometerSTDX                          13
	Described below

timeBodyAccelerometerSTDY                          13
	Described below

timeBodyAccelerometerSTDZ                          13
	Described below

timeGravityAccelerometerMeanX                      13
	Described below

timeGravityAccelerometerMeanY                      13
	Described below

timeGravityAccelerometerMeanZ                      13
	Described below

timeGravityAccelerometerSTDX                       13
	Described below

timeGravityAccelerometerSTDY                       13
	Described below

timeGravityAccelerometerSTDZ                       13
	Described below

timeBodyAccelerometerJerkMeanX                     13
	Described below

timeBodyAccelerometerJerkMeanY                     13
	Described below

timeBodyAccelerometerJerkMeanZ                     13
	Described below

timeBodyAccelerometerJerkSTDX                      13
	Described below

timeBodyAccelerometerJerkSTDY                      13
	Described below

timeBodyAccelerometerJerkSTDZ                      13
	Described below

timeBodyGyrometerMeanX                             13
	Described below

timeBodyGyrometerMeanY                             13
	Described below

timeBodyGyrometerMeanZ                             13
	Described below

timeBodyGyrometerSTDX                              13
	Described below

timeBodyGyrometerSTDY                              13
	Described below

timeBodyGyrometerSTDZ                              13
	Described below

timeBodyGyrometerJerkMeanX                         13
	Described below

timeBodyGyrometerJerkMeanY                         13
	Described below

timeBodyGyrometerJerkMeanZ                         13
	Described below

timeBodyGyrometerJerkSTDX                          13
	Described below

timeBodyGyrometerJerkSTDY                          13
	Described below

timeBodyGyrometerJerkSTDZ                          13
	Described below

timeBodyAccelerometerMagnitudeMean                 13
	Described below

timeBodyAccelerometerMagnitudeSTD                  13
	Described below

timeGravityAccelerometerMagnitudeMean              13
	Described below

timeGravityAccelerometerMagnitudeSTD               13
	Described below

timeBodyAccelerometerJerkMagnitudeMean             13
	Described below

timeBodyAccelerometerJerkMagnitudeSTD              13
	Described below

timeBodyGyrometerMagnitudeMean                     13
	Described below

timeBodyGyrometerMagnitudeSTD                      13
	Described below

timeBodyGyrometerJerkMagnitudeMean                 13
	Described below

timeBodyGyrometerJerkMagnitudeSTD                  13
	Described below

frequencyBodyAccelerometerMeanX                    13
	Described below

frequencyBodyAccelerometerMeanY                    13
	Described below

frequencyBodyAccelerometerMeanZ                    13
	Described below

frequencyBodyAccelerometerSTDX                     13
	Described below

frequencyBodyAccelerometerSTDY                     13
	Described below

frequencyBodyAccelerometerSTDZ                     13
	Described below

frequencyBodyAccelerometerJerkMeanX                13
	Described below

frequencyBodyAccelerometerJerkMeanY                13
	Described below

frequencyBodyAccelerometerJerkMeanZ                13
	Described below

frequencyBodyAccelerometerJerkSTDX                 13
	Described below

frequencyBodyAccelerometerJerkSTDY                 13
	Described below

frequencyBodyAccelerometerJerkSTDZ                 13
	Described below

frequencyBodyGyrometerMeanX                        13
	Described below

frequencyBodyGyrometerMeanY                        13
	Described below

frequencyBodyGyrometerMeanZ                        13
	Described below

frequencyBodyGyrometerSTDX                         13
	Described below

frequencyBodyGyrometerSTDY                         13
	Described below

frequencyBodyGyrometerSTDZ                         13
	Described below

frequencyBodyAccelerometerMagnitudeMean            13
	Described below

frequencyBodyAccelerometerMagnitudeSTD             13
	Described below

frequencyBodyAccelerometerJerkMagnitudeMean        13
	Described below

frequencyBodyAccelerometerJerkMagnitudeSTD         13
	Described below

frequencyBodyGyrometerMagnitudeMean                13
	Described below

frequencyBodyGyrometerMagnitudeSTD                 13
	Described below

frequencyBodyGyrometerJerkMagnitudeMean            13
	Described below

frequencyBodyGyrometerJerkMagnitudeSTD             13
	Described below

````

## Data description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometerXYZ and timeGyrometerXYZ. These time domain signals (prefix time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometerXYZ and timeGravityAccelerometerXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerkXYZ and timeBodyGyrometerJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAcceleratorMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyrometerMagnitude, timeBodyGyrometerJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometerXYZ, frequencyBodyAccelerometerJerkXYZ, frequencyBodyGyrometer-XYZ, frequencyBodyAccelerometerJerkMag, frequencyBodyGyrometerMagnitude, frequencyBodyGyrometerJerkMagnitude. (Note the frequency to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
````
timeBodyAccelerometerXYZ
timeGravityAccelerometerXYZ
timeBodyAccelerometerJerkXYZ
timeBodyGyrometerXYZ
timeBodyGyrometerJerkXYZ
timeBodyAccelerometerMagnitude
tGravityAccelerometerMagnitude
timeBodyAccelerometerJerkMagnitude
timeBodyGyrometerMagnitude
timeBodyGyrometerJerkMagnitude
frequencyBodyAccelerometerXYZ
frequencyBodyAccelerometerJerkXYZ
frequencyBodyGyrometerXYZ
frequencyBodyAccelerometerMagnitude
frequencyBodyAccelerometerJerkMagnitude
frequencyBodyGyrometerMagnitude
frequencyBodyGyrometerJerkMagnitude
````
The set of variables that were estimated from these signals are: 
````
Mean: Mean value
STD: Standard deviation
````

