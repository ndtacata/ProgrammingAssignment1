pollutantmean <- function(directory = getwd(), pollutant, id = 1:332){
   files <- list.files(pattern = ".csv")
   
   df <- data.frame()
   
   for(i in id){
       data <- read.csv(files[i])
       
       
       df <- rbind(df, data)
       
   }
   
   ##files
   mean(df[, pollutant], na.rm = TRUE)
   
}