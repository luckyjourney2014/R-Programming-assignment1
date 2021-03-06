 pollutantmean <- function(directory, pollutant, id = 1:332) {
+     files_full <- list.files(directory, full.names = TRUE) 
+     
+     dat <- data.frame()
+     
+     for (i in id) {
+         dat <- rbind(dat, read.csv(files_full[i]))
+     }
+     
+     mean(dat[, pollutant], na.rm = TRUE)
+ }
> setwd("..")
> pollutantmean("specdata","sulfate",1:10)
[1] 4.064128
> pollutantmean("specdata","nitrate",70:72)
[1] 1.706047
> pollutantmean("specdata","nitrate",23)
[1] 1.280833
