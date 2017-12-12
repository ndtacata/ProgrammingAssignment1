## Assume that .R is in specdata directory

complete <- function(directory = getwd(), id){
    file <- list.files(pattern = ".csv")
    
    df <- data.frame()

    for (i in id){
        ##output is a dataframe
        data <- read.csv(file[i])
        
        ##remove all NAs
        data <- na.omit(data)
        
        ##print(nrow(data))        
        df2 <- data.frame(id = i, nobs = nrow(data))
        
        df <- rbind(df, df2)
    }
    df
}