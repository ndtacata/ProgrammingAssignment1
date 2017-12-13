corr <- function(directory = getwd(), threshold = 0){
    files <- list.files(pattern = ".csv")
    
    vc <- vector("numeric", length = 0)
    
    for(i in 1:length(files)){
        data <- read.csv(files[i])
        
        data_cleanedup <- data[complete.cases(data), ]
        ##print(data_cleanedup[i])
        
        tot_rows <- nrow(data_cleanedup)
        
        if(tot_rows > threshold){
            vc <- c(vc, cor(data_cleanedup$sulfate, data_cleanedup$nitrate))
        }
        
    }
    vc
}