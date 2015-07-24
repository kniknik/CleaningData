run_analysis <- function() {
  
  ## read in the 2 data sets, they have the same number of columns
  ## so merge with rbind
  
  testdata <- read.table("./test/X_test.txt", header = FALSE, quote = "")
  traindata <- read.table("./train/X_train.txt", header = FALSE, quote = "")
  completedata <- rbind(testdata, traindata)
  
  ## get the column names from the features file and add to the new data set
  
  featurenames <- read.table("./features.txt")
  names(completedata) <- featurenames[,2]
  
  ## extract only the measurements with mean() and std()
  
  completedata <- completedata[grep("std|mean", names(completedata))]
  
  
  ## the y_ files contain the activity information numbered 1 - 6
  ## add this to the data file

  testlbls <- read.table("./test/y_test.txt", header = FALSE)
  trainlbls <- read.table("./train/y_train.txt", header = FALSE)
  completelbls <- rbind(testlbls, trainlbls)
  names(completelbls) <- "lbls"
  
  ## completedata$lbls <- completelbls
  completedata <- cbind(completedata, completelbls)
  ## the subject_ files contain the subject id numbered 1 - 30
  ## add this to the data file
  
  testsubjects <-read.csv("./test/subject_test.txt", header = FALSE)
  trainsubjects <- read.csv("./train/subject_train.txt", header = FALSE)
  completesubjects <- rbind(testsubjects, trainsubjects)
  names(completesubjects) <- "subjects"
  
  ## completedata$subjects <- unlist(completesubjects)
  completedata <- cbind(completedata, completesubjects)
  
  ## replace the activity numbers with meaningful labels
  
  completedata$lbls <- factor(unlist(completedata$lbls), labels = c("WALKING", 
                                                                    "WALKING_UPSTAIRS", 
                                                                    "WALKING_DOWNSTAIRS", 
                                                                    "SITTING", 
                                                                    "STANDING", 
                                                                    "LAYING"))
  
  ## generate the average for each variable, for each activity and for each subject
  ## some use of tapply/split etc *** FIX ME ****
  arrangeddata <- arrange(completedata, lbls, subjects)
  ddmean <- ddply(arrangeddata, .(lbls,subjects), colwise(mean))
  
    
  ## write the data using write.table()  
  ## To read in use the command 
  ##      read.table(file = "./AssignmentOutputFile", header = TRUE)
    
  write.table(ddmean, file = "./AssignmentOutputFile.txt", row.names = FALSE)
  
  

}