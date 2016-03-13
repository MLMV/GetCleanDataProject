# GetCleanDataProject
Coursera Getting &amp; Cleaning Data Course Project

This file explains the Getting & Cleaning Data Project, all of its scripts and how they are connected.

The objective of this assignment is to create one R script called run_analysis.R that merges the training and the test sets to create one data set, extracts the measurements on the mean and standard deviation for each measurement, names the activities in the data set, and labels the columns. It then creates a second, independent tidy data set with the average of each variable for each activity and each subject within the set.

Source files were downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original data decriptions to be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
More information on each source file is in README_SMARTLAB.txt which is included in this repo.

The script is divided in sections that load, merge, subset, group and summarize, and then export the data.The output data is included in this repo in the file run_analysis.txt.
A codebook with descriptions of the output is in the file codebook.txt.
