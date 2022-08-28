# Getting and Cleaning Data Final Project

## R file
The code uses the library data.table to quickly read, merge, and tidy the datasets. It reads X_train.txt first and then adds columns for label from Y_train.txt and subject from subject_train.txt.
It repeats this to create a data.table for the testing data. Next it merges them together vertically using rbindlist. After the full dataset is created, the program uses features.txt to convert the column names into descriptive variables.
Then it melts the dataset so that each record has one subject, one activity, and one variable. It can then aggregate by subject, activity, and variable and return the resulting means.
Finally it writes a text file from this tidy dataset.
