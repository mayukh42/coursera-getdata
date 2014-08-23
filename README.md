# ReadMe file for the script "run_analysis.R"

## Coursera getdata-006 Course Project

#### https://github.com/mayukh42

The R script "run\_analysis.R" peforms a tidy transformation to the raw data for Wearable Computing. More details on the same can be found in the CodeBook (CodeBook.md in this directory). It performs the operation in 3 stages (each stage encapsulated in a function):

### 1. Filter a subset of original features

The function **filter\_vars\_mean\_sd()** creates a subset containing all 79 features which are measurements of mean and standard deviation, from a total of 561 features in the raw data. The tidy data set is created for only these 79 features. 

The function uses regular expressions to match feature names. In the raw dataset, features that are measurements of mean, standard deviation are found to be suffixed with mean() and std() respectively. 

The function also adds more readable names for the features. Care was taken to keep a balance between long descriptive names and readable names, because often the data would be read in tabular format on a screen, where long names are not desired. In most cases, the original names were good enough, although the brackets '()' were removed. 

The function returns a data frame, containing the column ids, original names and new names of the 79 features.


### 2. Get and combine the training and test datasets

The function **get\_data()** combines the training and test datasets, picking only the columns corresponding to the ids in the data frame created in stage 1. It uses the new feature names in that data frame to name the columns in combined dataset. It also replaces the activity numeric ids with actual descriptive names. 

The final data frame returned contains training dataset (7352 observations/ rows) followed by test dataset (2947 rows), and 81 columns (2 columns **activity**, **subject**, plus 79 measurement columns). 

### 3. Create tidy dataset

The function **make\_tidy()** writes a tidy dataset to a file **tidy\_data\_feature\_averages.txt**, by grouping the data frame obtained in stage 2 by **activity and subject**, then invoking the aggregate function **mean** on each of the 79 feature columns to calculate their average. 

The tidy dataset written to the file contains a header of feature names, and average value of the features for each activity and subject id. Since there are 6 activities and 30 subjects, the file contains 180 lines (6x30), plus 1 line for the header.

The function has one dependency: 

* package: plyr

The **ddpply()** function from this package is used to perform the group by and aggregation operations. 

The function does not return anything.
