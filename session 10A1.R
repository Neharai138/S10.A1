getwd()
setwd("C:\\Users\\Neha\\Downloads")
AirQ <-unzip("C:\\Users\\Neha\\Downloads\\AirQualityUCI.zip",exdir =".")
summary(AirQ)
AirQ[is.na(AirQ)]
install.packages("missForest")
library(missForest)
AirQ.mis <- prodNA(AirQ, noNA = 0.1 )
summary(AirQ.mis)
