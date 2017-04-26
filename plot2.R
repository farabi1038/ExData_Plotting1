File <- "/Users/FARABI/Desktop/fg.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap<- subSet$Global_active_power
 g<-as.numeric(gap)
plot(datetime, g, type="l", xlab="", ylab="Global Active Power (kilowatts)")