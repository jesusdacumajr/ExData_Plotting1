pwr <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", 
                colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
pwr <- pwr[pwr$Date=="1/2/2007" | pwr$Date=="2/2/2007",]
pwr$Date <- as.Date(pwr$Date, format="%d/%m/%Y")

png('plot1.png')
hist(pwr$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="red", cex.main=1.2)
dev.off()
