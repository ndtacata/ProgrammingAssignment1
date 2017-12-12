corr <- function(directory = getwd(), threshold = 0){
    file <- list.files(pattern = ".csv")
    
    vc <- vector(mode = "numeric", length = 0)
    
    for(i in 1:length(file)){
        ##print(i)
        
        ##output is a dataframe
        data <- read.csv(file[i])
        
        ##check all rows with complete cases
        data <- data[complete.cases(data),]
        
        totRows <- nrow(data)
        #print(totRows[i])
        
        if(totRows > threshold){
            vc <- c(vc, cor(data$nitrate, data$sulfate))
        }
        
    }
    vc
}