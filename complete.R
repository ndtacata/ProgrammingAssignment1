complete <- function(directory = getwd(), id = 1:332){
    files <- list.files(pattern = ".csv")
    
    df <- data.frame()
    
    for(i in id){
        data <- read.csv(files[i])
        
        complete_cases <- data[complete.cases(data), ]
        
        #df <- rbind(df, complete_cases)
        df_new <- data.frame(id = i, nobs = nrow(complete_cases))
        
        df <- rbind(df, df_new)
        #print(df_new)
    }
    
    df
}