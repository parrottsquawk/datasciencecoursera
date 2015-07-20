describe_data <- function(lbl){
  
  meas.i <- c("std","mean")
  meas.o <- c("Standard.Deviation.of", "Mean.of")
  
  axis.i <- c("X","Y","Z")
  axis.o <- c("On.the.X.Axis",
              "On.the.Y.Axis",
              "On.the.Z.Axis")
  
  labl.i <- c(
    "fBodyAcc-",
    "fBodyAccJerk-",
    "fBodyAccMag-",
    "fBodyBodyAccJerkMag-",
    "fBodyBodyGyroJerkMag-",
    "fBodyBodyGyroMag-",
    "fBodyGyro-",
    "tBodyAcc-",
    "tBodyAccJerk-",
    "tBodyAccJerkMag-",
    "tBodyAccMag-",
    "tBodyGyro-",
    "tBodyGyroJerk-",
    "tBodyGyroJerkMag-",
    "tBodyGyroMag-",   
    "tGravityAcc-",
    "tGravityAccMag-"
  )
  
  labl.o <- c(
    "FFT.of.Body.Acceleration",
    "FFT.of.Derivative.of.Body.Acceleration",
    "FFT.of.Magnitude.of.Body.Acceleration",
    "FFT.of.Magnitude.of.Derivative.of.Body.Acceleration",
    "FFT.of.Magnitude.of.Derivative.of.Body.Radial.Velocity",
    "FFT.of.Magnitude.of.Body.Radial.Velocity",
    "FFT.of.Body.Radial.Velocity",
    "Body.Acceleration",
    "Derivative.of.Body.Acceleration",
    "Magnitude.of.Derivative.of.Body.Acceleration",
    "Magnitude.of.Body.Acceleration",
    "Body.Radial.Velocity",
    "Derivative.of.Body.Radial.Velocity",
    "Magnitude.of.Derivative.of.Body.Radial.Velocity",
    "Magnitude.of.Body.Radial.Velocity",   
    "Acceleration.due.to.Gravity",
    "Magnitude.of.Acceleration.due.to.Gravity"
  )
  
  i <- 1
  labl.c <- ""
  for(p in labl.i){
    if(grepl(p,lbl)){
      labl.c <- labl.o[i]
      break;
    }
    i <- i + 1
  }
  
  i <- 1
  meas.c <- ""
  for(p in meas.i){
    if(grepl(p,lbl)){
      meas.c <- meas.o[i]
      break;
    }
    i <- i + 1
  }  
  
  i <- 1
  axis.c <- ""
  for(p in axis.i){
    if(grepl(p,lbl)){
      axis.c <- axis.o[i]
      break;
    }
    i <- i + 1
  }
  trim <- function (x) gsub("^\\.+|\\.+$", "", x)
  return(trim(paste(meas.c,labl.c,axis.c,sep = ".")))
}