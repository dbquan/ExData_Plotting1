setwd("/Users/Derrick/Desktop/git/datasciencecoursera")

powerdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", numerals = "allow.loss")

subpower <- subset(powerdata, powerdata$Date == "2/2/2007" | powerdata$Date == "1/2/2007")
png("plot1.png", width=480, height=480)
hist(subpower$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

