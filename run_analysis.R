# ================================== HEADER ====================================

# Project: Coursera Getting and Cleaning Data
# Task: Course Project
# Date: Sunday March 14 2016
# Creator: Michel Voogd


# ================================== NOTES =====================================

# Objectives --------------------------------------------------------------

# The purpose of this project is to demonstrate your ability to collect, work
# with, and clean a data set. The goal is to prepare tidy data that can be used
# for later analysis. You will be graded by your peers on a series of yes/no
# questions related to the project. You will be required to submit: 1) a tidy
# data set as described below, 2) a link to a Github repository with your script
# for performing the analysis, and 3) a code book that describes the variables,
# the data, and any transformations or work that you performed to clean up the
# data called CodeBook.md. You should also include a README.md in the repo with
# your scripts. This repo explains how all of the scripts work and how they are
# connected. One of the most exciting areas in all of data science right now is
# wearable computing - see for example this article . Companies like Fitbit,
# Nike, and Jawbone Up are racing to develop the most advanced algorithms to
# attract new users. The data linked to from the course website represent data
# collected from the accelerometers from the Samsung Galaxy S smartphone. A full
# description is available at the site where the data was obtained: 
#       
#       http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# Here are the data for the project:
#       
#       https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 
# You should create one R script called run_analysis.R that does the following.
      # 1 - Merges the training and the test sets to create one data set. 
      # 2 - Extracts only the measurements on the mean and standard deviation
      # for each measurement.
      # 3 - Uses descriptive activity names to name the activities in the data
      # set
      # 4 - Appropriately labels the data set with descriptive variable names.
      # 5 - From the data set in step 4, creates a second, independent tidy data
      # set with the average of each variable for each activity and each
      # subject.

# Review criterialess 
      # The submitted data set is tidy. 
      # The Github repo contains the required scripts.
      # GitHub contains a code book that modifies and updates the available
      # codebooks with the data to indicate all the variables and summaries
      # calculated, along with units, and any other relevant information.
      # The README that explains the analysis files is clear and understandable.
      # The work submitted for this project is the work of the student who
      # submitted it.


# Plan --------------------------------------------------------------------

      # 1. Load data
      # 2. Name and merge data
      # 3. Subset data for means and standard deviations
      # 4. Calculate the averages for each measure by subject and activity and
      # store in new data table

# ================================== CODE ======================================

# Prep workspace ----------------------------------------------------------

library(data.table)
library(plyr)
library(dplyr)
library(tidyr)
library(Hmisc)


# Load data ---------------------------------------------------------------

      # Test data
      testdata <- fread("X_test.txt")
      testactivities <- fread("y_test.txt", nrows = 2947)
      testsubjects <- fread("subject_test.txt", nrows = 2947)
      
      # Training data
      traindata <- fread("X_train.txt", nrows = 7352)
      trainactivities <- fread("y_train.txt", nrows = 7352)
      trainsubjects <- fread("subject_train.txt", nrows = 7352)
      
      # Reference data
      activitylabels <- fread("activity_labels.txt")
      columnlabels <- fread("features.txt", nrows = 561)
      

# Merge data --------------------------------------------------------------

      # Merge data sets
      l = list(testdata, traindata)
      alldata <- rbindlist(l, use.names = TRUE, fill = FALSE)
      rm(l)
      
      # Add column names
      colnames(alldata) <- columnlabels$V2
      colnames(activitylabels) <- c("activitycode", "activity")
      
      # Add activity codes to data
      l = list(testactivities, trainactivities)
      activitycodes <- rbindlist(l, use.names = TRUE, fill = FALSE)
      rm(l)

      # Merge subjectdata
      l = list(testsubjects, trainsubjects)
      subjects <- rbindlist(l, use.names = TRUE, fill = FALSE)
      rm(l)
      
      # Bin unused objects to free up memory
      rm(testdata,
         traindata,
         testactivities,
         trainactivities,
         testsubjects,
         trainsubjects
         )
      
      
# Subset data -------------------------------------------------------------
      
      # Determine which columns I need
      subsetnames <- columnlabels[grepl("mean|std", columnlabels$V2),]
      subsetnames <- subsetnames[!grepl("Freq", subsetnames$V2),]
      
      # Subset for means and std
      subdata <- select(alldata, subsetnames$V1)
      
      # Bring in subjects and activity codes
      subdata$subject <- subjects$V1
      subdata$activitycode <- activitycodes$V1

      # Bin unused objects to free up memory
      rm(activitycodes,
         subjects,
         alldata,
         subsetnames,
         columnlabels
         )

      # Bring in activity names and drop activity code
      fulldata <-
            merge(subdata,
                  activitylabels,
                  by = "activitycode",
                  sort = FALSE)
      fulldata <- select(fulldata, -activitycode)
      
      # Bin unused objects to free up memory
      rm(subdata,
         activitylabels
      )
      

# Group and summarize the data --------------------------------------------

      # Arrange and group data by subject and activity
      fulldata <- arrange(fulldata, subject, activity)
      groupdata <- group_by(fulldata, subject, activity)
      summarydata <- summarise_each(groupdata, funs(mean))
      
      # Bin unused objects to free up memory
      rm(fulldata,
         groupdata
      )
      
# Export the summary data
      
      write.table(summarydata, file = "run_analysis.txt", row.name=FALSE)
      
      
# =================================== END ======================================