
## Readme document of Human activity recognition tidy data set script (course project)
### Author - Ankur Thakkar
### description of run_analysis.R script

* First all required librarys are loaded, here only dplyr library will be required.

* Test data set is loaded(X_test, y_test, subject_test) - using read.table.

* Train data set is loaded(X_train, x_train, subject_train) - using read.table.

* All feature variables are loaded from features.txt file so that it can be assigned as variables to each data set

* Activity lables are loaded from activity_labels.txt file and it is assigned to data frame activity_lables.

* Each dataset(train & test) is merged into one seperately from 3 different data frames(X, y & subject), i.e two data frames are generated named as train_data and test_data using cbind function. Also variable names are assigned in this step from features data frame.

* Now two data frames i.e test_data and train_data are merged to one complete dataset named as data_set using rbind function. Now one complete data set is ready.

* Now to extract mean and std measurement, we need unique columns, hence unique function is applied on names of data_set and unique columns are extracted and named as unique_data_set.

* Mean and std columns are extracted using select function of dplyr, extracted data frame is named as extracted_data_set.

* Average of each measurement according to subject and activity is calculated using aggregate function and it is stored in aggregateData.

* Addtional column for activity labels is attached using lapply function. It directly matches with activity_lables data frame and assigns respective label to activity number.

* Unwanted column from aggregateData is removed, unwanted columns were added from aggregate function for activity and subject group.

* Addtional column activity is type casted to character so that write.table is executed properly.

* write.table function is used to generate tidy data set named as tidy_data_set.txt.
