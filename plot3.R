pwr <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", 
                colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr <- pwr[pwr$Date=="1/2/2007" | pwr$Date=="2/2/2007",]
pwr$Date <- as.Date(pwr$Date, format="%d/%m/%Y")
pwr$DateTime <- as.POSIXlt(paste(pwr$Date, pwr$Time))

png("plot3.png")
plot(pwr$DateTime, pwr$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab=NA)
lines(pwr$DateTime, pwr$Sub_metering_2, col="red")
lines(pwr$DateTime, pwr$Sub_metering_3, col="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()