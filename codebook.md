Run Analysis - Code Book 
=================

This analysis is based on accelerometer and gyroscope readings from Smartlab. 
Smartlab used these signals to estimate variables of a feature vector for a 
number of patterns. For each of these, the Smartlab data set contains (among 
other variables) a mean(): Mean value and std(): Standard deviation. The 
detailed explanation of the data collection process is included in this repo 
in the file 'features_info.txt'. The complete list of variables of each 
feature vector included in the source data is available in 'features.txt'  

For the purpose of this analysis, readings from the test and training data 
sets in the files 'X_test.txt' and 'X_train.txt' were combined. Column labels 
were then assigned based on the 'features.txt' file. Activity codes from the 
files 'y_test.txt' and 'y_train.txt' were added to the set. Subject numbers 
were added from the files 'subject_test.txt' and 'subject_train.txt. Activity 
names were assigned based on the reference table in 'activity_labels.txt'. 
Data was then grouped and summarized.

The output file 'run_analysis.txt' contains averages of the mean values and 
standard devations, grouped by subject and activity, for the following 66 
variables:
 
 * variable            					  : type first 5 values
 * ----------------------------------------------------------------------------------
 * tBodyAcc-mean()-X          : num  0.222 0.261 0.279 0.277 0.289 ...
 * tBodyAcc-mean()-Y          : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 * tBodyAcc-mean()-Z          : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 * tBodyAcc-std()-X           : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 * tBodyAcc-std()-Y           : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 * tBodyAcc-std()-Z           : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 * tGravityAcc-mean()-X       : num  -0.249 0.832 0.943 0.935 0.932 ...
 * tGravityAcc-mean()-Y       : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 * tGravityAcc-mean()-Z       : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 * tGravityAcc-std()-X        : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 * tGravityAcc-std()-Y        : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 * tGravityAcc-std()-Z        : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 * tBodyAccJerk-mean()-X      : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 * tBodyAccJerk-mean()-Y      : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 * tBodyAccJerk-mean()-Z      : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 * tBodyAccJerk-std()-X       : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 * tBodyAccJerk-std()-Y       : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 * tBodyAccJerk-std()-Z       : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 * tBodyGyro-mean()-X         : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 * tBodyGyro-mean()-Y         : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 * tBodyGyro-mean()-Z         : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 * tBodyGyro-std()-X          : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 * tBodyGyro-std()-Y          : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 * tBodyGyro-std()-Z          : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 * tBodyGyroJerk-mean()-X     : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 * tBodyGyroJerk-mean()-Y     : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 * tBodyGyroJerk-mean()-Z     : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 * tBodyGyroJerk-std()-X      : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 * tBodyGyroJerk-std()-Y      : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 * tBodyGyroJerk-std()-Z      : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 * tBodyAccMag-mean()         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 * tBodyAccMag-std()          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 * tGravityAccMag-mean()      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 * tGravityAccMag-std()       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 * tBodyAccJerkMag-mean()     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 * tBodyAccJerkMag-std()      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 * tBodyGyroMag-mean()        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 * tBodyGyroMag-std()         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 * tBodyGyroJerkMag-mean()    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 * tBodyGyroJerkMag-std()     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 * fBodyAcc-mean()-X          : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 * fBodyAcc-mean()-Y          : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 * fBodyAcc-mean()-Z          : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 * fBodyAcc-std()-X           : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 * fBodyAcc-std()-Y           : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 * fBodyAcc-std()-Z           : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 * fBodyAccJerk-mean()-X      : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 * fBodyAccJerk-mean()-Y      : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 * fBodyAccJerk-mean()-Z      : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 * fBodyAccJerk-std()-X       : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 * fBodyAccJerk-std()-Y       : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 * fBodyAccJerk-std()-Z       : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 * fBodyGyro-mean()-X         : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 * fBodyGyro-mean()-Y         : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 * fBodyGyro-mean()-Z         : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 * fBodyGyro-std()-X          : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 * fBodyGyro-std()-Y          : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 * fBodyGyro-std()-Z          : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 * fBodyAccMag-mean()         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 * fBodyAccMag-std()          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 * fBodyBodyAccJerkMag-mean() : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 * fBodyBodyAccJerkMag-std()  : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 * fBodyBodyGyroMag-mean()    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 * fBodyBodyGyroMag-std()     : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 * fBodyBodyGyroJerkMag-mean(): num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 * fBodyBodyGyroJerkMag-std() : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
 
 The grouping variables are
 * subject                    : int  1 1 1 1 1 1 2 2 2 2 ...
 * activity                   : chr  "LAYING" "SITTING" "STANDING" "WALKING" ...
