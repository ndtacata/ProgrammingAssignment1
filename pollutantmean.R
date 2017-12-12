## Assume that .R is in specdata directory

pollutantmean <- function(directory = getwd(), pollutant, id){
    ##print(directory)

    ##get files in the directory
    file <- list.files(pattern = ".csv")
    #print(file)
    
    ##define a dataframe
    df <- data.frame()
    
    for(i in id){
        ##print(i)
        ##output is a dataframe
        data <- read.csv(file[i])
        ##print(file[i])
        ##print(data)
        
        ##same number of columnts, use rbind
        df <- rbind(df, data) 
        ##print(df)
    }
    
    ##get mean of data in <pollutant> column
    mean(df[, pollutant], na.rm = TRUE)
    
}