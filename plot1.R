


setwd("~/ExData/ExData_Plotting1")
## Assumptions: The data file is unzipped to local directory from URL https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip 

## The unzipped data file is read and formatted 
data_all <- read.csv("~/ExData/ExData_Plotting1/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_all$Date <- as.Date(data_all$Date, format="%d/%m/%Y")

## Creates a subset of the entire data set to narrow the analysis.
data <- subset(data_all, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_all)


## Converting dates to enable plot generation.
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Generating the plot, i.e. as a histogram, with plot title, x and y labels.
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


## Saving the plot as a .PNG image file, specifying image dimensions.
dev.copy(png, file="~/ExData/ExData_Plotting1/plot1.png", height=480, width=480)
dev.off()
