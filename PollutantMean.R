
pollutantmean <- function(directory="/Users/mikaelagerbo/Data_science/Course2/specdata/",pollutant,id = 1:332) {
    
## Initialize the data frame from the first file
        
        path <- paste(directory,formatC(id[1],width=3,flag="0"),".csv",sep="")
        mydata <- read.csv(path,header=TRUE)

## Loop through the other files, if any, and append to the mydata data frame
        for (i in id) {
                if (i==id[1]) { ## First one is already there so should be skipped
                  next()     
                }
                path <- paste(directory,formatC(i,width=3,flag="0"),".csv",sep="")
                mydata <- rbind(mydata,read.csv(path,header=TRUE))  
                
        }
        mean(mydata[,pollutant],na.rm = TRUE)
        
   
}


