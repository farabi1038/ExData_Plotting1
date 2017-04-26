
library(data.table)
newFile <- fread("/Users/FARABI/Desktop/fg.txt", na.strings = "?")
newFile[,DateTime := as.Date(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]
library(dplyr)
subsetted <- filter(newFile, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-02 00:00:00"))
gap<-subsetted$Global_active_power
g<-as.numeric(gap)

hist(g,main = "Global Active Power",xlab = "Global Active Power(Kilowatts)",col = "red")