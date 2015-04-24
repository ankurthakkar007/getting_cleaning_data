#First load all datasets

library(dplyr)


#load test data set
X_test <- read.table("./UCI HAR Dataset//test/X_test.txt",header = FALSE)
y_test <-  read.table("./UCI HAR Dataset//test/y_test.txt",header = FALSE)
subject_test <- read.table("./UCI HAR Dataset//test//subject_test.txt", header = FALSE)


#load train data set
X_train <- read.table("./UCI HAR Dataset//train//X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset//train//y_train.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset//train//subject_train.txt", header = FALSE)

#load features(variables)
features <- read.table("./UCI HAR Dataset//features.txt", header = FALSE)

#load activity lables
activity_lables <- read.table("./UCI HAR Dataset//activity_labels.txt", header = FALSE)

#First merge test data set(all three x_test, y_test & subject_test)

names(X_test) <- features$V2 #assigining variables to test data set
test_data <- cbind(subject=subject_test$V1, X_test) #adding subject to test data set
test_data <- cbind(activity_number=y_test$V1, test_data) #adding activity number column to test data set

#Now similarly merge train data set(all three X_train, y_train & subject_train)

names(X_train) <- features$V2 #assingning variables to train data set
train_data <- cbind(subject=subject_train$V1, X_train) #adding subject to train data set
train_data <- cbind(activity_number=y_train$V1, train_data) #adding activity number column to train data set

#Now merge two data sets i.e make one complete data_set from test_data and train_data
data_set <- rbind(test_data, train_data)

#Extract only mean and standard_deviation for each measurement
unique_data_set <- data_set[unique(names(data_set))] #filter unique columns
extracted_data_set <- select(unique_data_set, activity_number, subject, contains("mean"), contains("std"))

#Average of each measurment according to subject and activity
aggregateData <- aggregate(extracted_data_set, by=list(extracted_data_set$activity_number, extracted_data_set$subject), FUN=mean, na.rm=TRUE)

#Adding additional column for activity labels
aggregateData$activity <- lapply(aggregateData$activity_number, function(x) as.character(activity_lables$V2[[x]]))

#removing unwanted column
averageData <- select(aggregateData, activity, activity_number, subject, contains("mean"), contains("std"))

#type casting elements of list to character for write.table
averageData$activity <- as.character(averageData$activity)

#writing tidy set to txt file
write.table(averageData, file="tidy_data_set.txt", row.names=FALSE)