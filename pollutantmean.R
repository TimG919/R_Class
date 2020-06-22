pollutantmean <- function(directory, pollutant, id = 1:332) {
      setwd(paste("d:/data/r/",directory, sep = ""))
      file_f <- list.files()
      all_data = data.frame()
      for (i in id) {
            #print(i)
            data_read <- read.csv(file_f[i])
            #print(data_read)
            all_data <- rbind(all_data,data_read)
            #print(nrow(all_data))
      }
      #print(nrow(all_data))
      x <- mean(all_data[[pollutant]], na.rm = TRUE)
      print(x)
}