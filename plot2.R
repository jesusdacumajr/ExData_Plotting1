pwr <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", 
                colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr <- pwr[pwr$Date=="1/2/2007" | pwr$Date=="2/2/2007",]
pwr$Date <- as.Date(pwr$Date, format="%d/%m/%Y")
pwr$DateTime <- as.POSIXlt(paste(pwr$Date, pwr$Time))

png('plot2.png')
plot(pwr$DateTime, pwr$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab=NA)
dev.off()