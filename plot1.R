setwd("C:/Users/viyeh/Documents/Resume/Coursera/Exploratory Data Analysis")

#read file
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Filter Dates to Feb 2, 2007 to Feb 2, 2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Create histogram
GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
