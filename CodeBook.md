## Code Book of Human activity recognition data set - Course Project
### Output file - tidy_data_set.txt
#### Author - Ankur Thakkar

#### The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Initially there were 2 data sets seperately test and train, this Data is refined data set containing average of mean and standard deviation of 3-axial linear acceleration and 3-axial angular velocity according to activity and subject. 

###Variables description-
* activity - Activity performed by subject(volunteers). Total there are 6 activities as described in description above. activity are mapped to activity number.
* activity_number - Respective activity number is assigned to each activity for better analysis.
* Subject - Subject is alligned to 30 volunteers, which subject performed which activity and there respective measurements.

##### These signals were used to estimate variables for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

##### The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

##### Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean