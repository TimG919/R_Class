corr <- function(directory, threshold = 0) {
      setwd(paste("d:/data/r/",directory, sep = ""))
      file_f <- list.files()
      #all_data = data.frame()
      cor_output <- c()
      for (i in 1:length(file_f)) {
            data_read <- na.omit(read.csv(file_f[i]))
            data_rows <- nrow(data_read)
            if (data_rows > threshold) {
                  #all_data <- rbind(all_data, data_read)
                  x <- cor(data_read$nitrate,data_read$sulfate)
                  #print(x)
                  cor_output <- c(cor_output,x)
            }
            
      }
      cor_output
}

# added notes