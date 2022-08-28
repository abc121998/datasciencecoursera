## Study Design: 
The data was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Researchers from the Smartlab in Genoa, Italy carried out experiments where 30 subjects performed 6 different activities. To monitor their movement, sensor signals from a smartphone's accelerometer and gyroscope were collected and analyzed. 
<br>

## Tidy Dataset: 
I selected all variable columns which contained either 'std()','mean()', 'activity',or 'subject' since we were expected to tidy variables that were means or standard deviations. I melted the table by the pattern '^.+-.+', while retaining subject number and activity label so that each row was a single observation of a mean. There are four columns in this tidied dataset. 

  *Activity: character label describing the particular activity that the subject was engaging in (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING)

  *Subject: participant number

  *Variable: the specific variable being measured

    -tBodyAcc-XYZ
    -tGravityAcc-XYZ
    -tBodyAccJerk-XYZ
    -tBodyGyro-XYZ
    -tBodyGyroJerk-XYZ
    -tBodyAccMag
    -tGravityAccMag
    -tBodyAccJerkMag
    -tBodyGyroMag
    -tBodyGyroJerkMag
    -fBodyAcc-XYZ
    -fBodyAccJerk-XYZ
    -fBodyGyro-XYZ
    -fBodyAccMag
    -fBodyAccJerkMag
    -fBodyGyroMag
    -fBodyGyroJerkMag

  *Mean: the calculated average for each record (activity/subject/variable) 

