# Getting and Cleaning Data Final Project

## R file
The code uses the library data.table to quickly read, merge, and tidy the datasets. It reads X_train.txt first and then adds columns for label from Y_train.txt and subject from subject_train.txt.
It repeats this to create a data.table for the testing data. Next it merges them together vertically using rbindlist. After the full dataset is created, the program uses features.txt to convert the column names into descriptive variables.
Then it melts the dataset so that each record has one subject, one activity, and one variable. It can then aggregate by subject, activity, and variable and return the resulting means.
Finally it writes a text file from this tidy dataset.

## Codebook

Study Design: The data was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Researchers from the Smartlab in Genoa, Italy carried out experiments where 30 subjects performed 6 different activities. To monitor their movement, sensor signals from a smartphone's accelerometer and gyroscope were collected and analyzed. 
<br>

Tidy Dataset: I selected all variable columns which contained either 'std()','mean()', 'activity',or 'subject' since we were expected to tidy variables that were means or standard deviations. I melted the table by the pattern '^.+-.+', while retaining subject number and activity label so that each row was a single observation. I then could easily aggregate to get the means. There are four columns in this tidied dataset. 


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
