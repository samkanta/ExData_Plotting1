Hello :)


The repository contains nine files for Course Project 1:

* Readme.md (this file)
* R files: plot1.R, plot2.R, plot3.R, plot4.R
* PNG files: plot1.png, plot2.png, plot3.png, plot4.png


## Introduction

The project uses data from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository.

The specific data set from the archive for exploring the data is "Individual household
electric power consumption Data Set" made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset were 
from the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## About the Data


When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. 
* Only data from the dates 2007-02-01 and
2007-02-02 were used. 
* Date and Time variables converted to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.
* Note that in this dataset missing values are coded as `?`.


## Making Plots

The goal was to examine how household energy usage
varied over a 2-day period in February, 2007. 

The objective was to reconstruct the original plots provided for the Course Project all of which were constructed
using the base plotting system.


## Plot characteristics

* Saved as a PNG file with a width of 480
pixels and a height of 480 pixels.





