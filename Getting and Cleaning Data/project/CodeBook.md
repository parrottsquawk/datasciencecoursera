---
title: "''Getting and Cleaning Data Project CodeBook''"
author: "Chester Parrott"
date: "7/19/2015"
output:
  html_document:
    keep_md: yes
---
 
## Project Description
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 
##Study design and data processing
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Creating the tidy datafile
Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Guide to create the tidy data file
* Download the data set
* Decompress the data set to the root directory of the code as stored here
* Open the raw_analysis.R file in R Studio
* Execute the script (it should find the data folder in the same directory as the code file)

###Cleaning of the data
The script extracts time and frequency domain variables which have been summarized with standard deviation and mean with the study methodology laid out above. We then rename variables and join the test/train data to provide a single cohesive dataset. At that point, we aggregate by Subject.ID and Activity.Label. 
 
##Description of the variables in the tiny_data.txt file
General description of the file including:
  - The data set has 35 rows and 68 columns.
  - "Subject.ID"                                                                  
  - "Label.Activity"                                                              
  - "Mean.of.Body.Acceleration.On.the.X.Axis"                                     
  - "Mean.of.Body.Acceleration.On.the.Y.Axis"                                     
  - "Mean.of.Body.Acceleration.On.the.Z.Axis"                                     
  - "Standard.Deviation.of.Body.Acceleration.On.the.X.Axis"                       
  - "Standard.Deviation.of.Body.Acceleration.On.the.Y.Axis"                       
  - "Standard.Deviation.of.Body.Acceleration.On.the.Z.Axis"                       
  - "Mean.of.Acceleration.due.to.Gravity.On.the.X.Axis"                           
  - "Mean.of.Acceleration.due.to.Gravity.On.the.Y.Axis"                           
  - "Mean.of.Acceleration.due.to.Gravity.On.the.Z.Axis"                           
  - "Standard.Deviation.of.Acceleration.due.to.Gravity.On.the.X.Axis"             
  - "Standard.Deviation.of.Acceleration.due.to.Gravity.On.the.Y.Axis"             
  - "Standard.Deviation.of.Acceleration.due.to.Gravity.On.the.Z.Axis"             
  - "Mean.of.Derivative.of.Body.Acceleration.On.the.X.Axis"                       
  - "Mean.of.Derivative.of.Body.Acceleration.On.the.Y.Axis"                       
  - "Mean.of.Derivative.of.Body.Acceleration.On.the.Z.Axis"                       
  - "Standard.Deviation.of.Derivative.of.Body.Acceleration.On.the.X.Axis"         
  - "Standard.Deviation.of.Derivative.of.Body.Acceleration.On.the.Y.Axis"         
  - "Standard.Deviation.of.Derivative.of.Body.Acceleration.On.the.Z.Axis"         
  - "Mean.of.Body.Radial.Velocity.On.the.X.Axis"                                  
  - "Mean.of.Body.Radial.Velocity.On.the.Y.Axis"                                  
  - "Mean.of.Body.Radial.Velocity.On.the.Z.Axis"                                  
  - "Standard.Deviation.of.Body.Radial.Velocity.On.the.X.Axis"                    
  - "Standard.Deviation.of.Body.Radial.Velocity.On.the.Y.Axis"                    
  - "Standard.Deviation.of.Body.Radial.Velocity.On.the.Z.Axis"                    
  - "Mean.of.Derivative.of.Body.Radial.Velocity.On.the.X.Axis"                    
  - "Mean.of.Derivative.of.Body.Radial.Velocity.On.the.Y.Axis"                    
  - "Mean.of.Derivative.of.Body.Radial.Velocity.On.the.Z.Axis"                    
  - "Standard.Deviation.of.Derivative.of.Body.Radial.Velocity.On.the.X.Axis"      
  - "Standard.Deviation.of.Derivative.of.Body.Radial.Velocity.On.the.Y.Axis"      
  - "Standard.Deviation.of.Derivative.of.Body.Radial.Velocity.On.the.Z.Axis"      
  - "Mean.of.Magnitude.of.Body.Acceleration"                                      
  - "Standard.Deviation.of.Magnitude.of.Body.Acceleration"                        
  - "Mean.of.Magnitude.of.Acceleration.due.to.Gravity"                            
  - "Standard.Deviation.of.Magnitude.of.Acceleration.due.to.Gravity"              
  - "Mean.of.Magnitude.of.Derivative.of.Body.Acceleration"                        
  - "Standard.Deviation.of.Magnitude.of.Derivative.of.Body.Acceleration"          
  - "Mean.of.Magnitude.of.Body.Radial.Velocity"                                   
  - "Standard.Deviation.of.Magnitude.of.Body.Radial.Velocity"                     
  - "Mean.of.Magnitude.of.Derivative.of.Body.Radial.Velocity"                     
  - "Standard.Deviation.of.Magnitude.of.Derivative.of.Body.Radial.Velocity"       
  - "Mean.of.FFT.of.Body.Acceleration.On.the.X.Axis"                              
  - "Mean.of.FFT.of.Body.Acceleration.On.the.Y.Axis"                              
  - "Mean.of.FFT.of.Body.Acceleration.On.the.Z.Axis"                              
  - "Standard.Deviation.of.FFT.of.Body.Acceleration.On.the.X.Axis"                
  - "Standard.Deviation.of.FFT.of.Body.Acceleration.On.the.Y.Axis"                
  - "Standard.Deviation.of.FFT.of.Body.Acceleration.On.the.Z.Axis"                
  - "Mean.of.FFT.of.Derivative.of.Body.Acceleration.On.the.X.Axis"                
  - "Mean.of.FFT.of.Derivative.of.Body.Acceleration.On.the.Y.Axis"                
  - "Mean.of.FFT.of.Derivative.of.Body.Acceleration.On.the.Z.Axis"                
  - "Standard.Deviation.of.FFT.of.Derivative.of.Body.Acceleration.On.the.X.Axis"  
  - "Standard.Deviation.of.FFT.of.Derivative.of.Body.Acceleration.On.the.Y.Axis"  
  - "Standard.Deviation.of.FFT.of.Derivative.of.Body.Acceleration.On.the.Z.Axis"  
  - "Mean.of.FFT.of.Body.Radial.Velocity.On.the.X.Axis"                           
  - "Mean.of.FFT.of.Body.Radial.Velocity.On.the.Y.Axis"                           
  - "Mean.of.FFT.of.Body.Radial.Velocity.On.the.Z.Axis"                           
  - "Standard.Deviation.of.FFT.of.Body.Radial.Velocity.On.the.X.Axis"             
  - "Standard.Deviation.of.FFT.of.Body.Radial.Velocity.On.the.Y.Axis"             
  - "Standard.Deviation.of.FFT.of.Body.Radial.Velocity.On.the.Z.Axis"             
  - "Mean.of.FFT.of.Magnitude.of.Body.Acceleration"                               
  - "Standard.Deviation.of.FFT.of.Magnitude.of.Body.Acceleration"                 
  - "Mean.of.FFT.of.Magnitude.of.Derivative.of.Body.Acceleration"                 
  - "Standard.Deviation.of.FFT.of.Magnitude.of.Derivative.of.Body.Acceleration"   
  - "Mean.of.FFT.of.Magnitude.of.Body.Radial.Velocity"                            
  - "Standard.Deviation.of.FFT.of.Magnitude.of.Body.Radial.Velocity"              
  - "Mean.of.FFT.of.Magnitude.of.Derivative.of.Body.Radial.Velocity"              
  - "Standard.Deviation.of.FFT.of.Magnitude.of.Derivative.of.Body.Radial.Velocity"
 
