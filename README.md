# CleaningData
Course Project for Coursera Cleaning Data

This repository contains a script for organising and processing a collection of data files as well as a Code Book describing the data.

The data are split into "test" and "train" sets.  The script combines these data sets, then adds the appropriate labels for the data.  Data that represents mean values and standard deviation values are extracted.  They are then grouped along activity and subject lines and the means for these groupings calculated.

Finally, the data are written using write.table()

There are no arguments for this script; the file directories are hard coded.  As such, you must be in the correct directory to run this script.


