


setwd("~/ExData/ExData_Plotting1")
## Assumptions: The data file is unzipped to local directory from URL https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip 

## The unzipped data file is read and formatted 
data_all <- read.csv("~/ExData/ExData_Plotting1/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_all$Date <- as.Date(data_all$Date, format="%d/%m/%Y")

## Creates a subset of the entire data set to narrow the analysis.
data <- subset(data_all, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_all)


## Converting dates prior to plot generation.
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Generating Plot 3 with y-axis title; line colors set to Red for Sub_metering_1 and Blue for Sub_metering_2 
with(data, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})
## Generating the Plot Legend with colors and labels
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Generating image file type (PNG), dimensions, and file name.
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
