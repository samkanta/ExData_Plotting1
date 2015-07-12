


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

## Combining multiple plots using the par() function.
## Function placed before the individual plots are generated.
## mfrow creates a 2x2 matrix (i.e. 4 plots total).
par(mfrow=c(2,2), 

## Creates margin lines for each plot, with line width specified. 
    mar=c(4,4,2,1)+.2, 

## Spacing on Left and Top sides for each plot. 
    oma=c(0,0,4,0),

## Plot areas 
    pin=c(2,2))

## Generating the four plots, each with appropriate labels (I also included the measurement type in brackets - kilowatts, volt) and colors as required for the Course Project.
with(data, {
    plot(Global_active_power~Datetime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    plot(Voltage~Datetime, type="l", 
         ylab="Voltage (volt)", xlab="")
    plot(Sub_metering_1~Datetime, type="l", 
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power~Datetime, type="l", 
         ylab="Global Rective Power (kilowatts)",xlab="")
})

## Generating image file type (PNG), dimensions, and file name.
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
