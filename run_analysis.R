filter_vars_mean_sd <- function() {
    vars <- read.csv("UCI HAR Dataset/features.txt", sep=" ", 
                     header=FALSE, stringsAsFactors=FALSE,
                     col.names=c("id","var"))    
    matcher <- grepl("mean()", vars$var) | grepl("std()", vars$var)
    vars <- vars[matcher, ]
    newvar <- scan("newvars.txt", what="")
    newvar <- data.frame(newvar, stringsAsFactors=FALSE)
    vars <- cbind(vars, newvar)
    vars
}

get_data <- function() {
    features <- filter_vars_mean_sd()
    # descriptive avtivities
    activity_names <- c("Walking", 
                        "Ascending stairs", 
                        "Descending stairs",
                        "Sitting",
                        "Standing", 
                        "Idle")
    
    # get train data
    x_train <- read.table("UCI HAR Dataset/train/X_train.txt")    
    subs_train <- scan("UCI HAR Dataset/train/subject_train.txt")
    acts_train <- scan("UCI HAR Dataset/train/y_train.txt")
    acts_train <- sapply(acts_train, function(a) {activity_names[a]})
    n <- length(acts_train)
    x_train <- x_train[1:n, features$id]
    x_train <- cbind(x_train, subs_train, acts_train)
    colnames(x_train) <- c(features$newvar, "subject", "activity")
    
    # get test data
    x_test <- read.table("UCI HAR Dataset/test/X_test.txt")    
    subs_test <- scan("UCI HAR Dataset/test/subject_test.txt")
    acts_test <- scan("UCI HAR Dataset/test/y_test.txt")
    acts_test <- sapply(acts_test, function(a) {activity_names[a]})
    n <- length(acts_test)
    x_test <- x_test[1:n, features$id]
    x_test <- cbind(x_test, subs_test, acts_test)    
    colnames(x_test) <- c(features$newvar, "subject", "activity")
    
    # bind the train and test datasets
    x_all <- rbind(x_train, x_test)        
    x_all
}

make_tidy <- function() {
    library(plyr)
    x_all <- get_data()
    x_avgs <- ddply(x_all, c("activity", "subject"), function(x) {
        colMeans(x[,1:79])
    })
    write.table(x_avgs, file="tidy_data_feature_averages.txt",
                row.names=F, quote=F)
}
