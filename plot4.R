File <- "/Users/FARABI/Desktop/fg.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(subSet$Global_active_power)
grp <- as.numeric(subSet$Global_reactive_power)
v <- as.numeric(subSet$Voltage)
sM1 <- as.numeric(subSet$Sub_metering_1)
sM2 <- as.numeric(subSet$Sub_metering_2)
sM3 <- as.numeric(subSet$Sub_metering_3)


par(mfrow = c(2, 2)) 

plot(datetime, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, v, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, sM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sM2, type="l", col="red")
lines(datetime, sM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, grp, type="l", xlab="datetime", ylab="Global_reactive_power")