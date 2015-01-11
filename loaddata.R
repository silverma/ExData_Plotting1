# download, unzip and load power consumption data if not available

if(!exists("powerdata")) {
  if (!file.exists("household_power_consumption.txt")) {
    if (!file.exists("powerdata.zip")) {
      download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="powerdata.zip",
                  method="curl")
    }

    unzip("powerdata.zip")  
  }

  message("loading data into memory...")
  powerdata <- read.csv("household_power_consumption.txt", 
                 header=TRUE,
                 sep=";",
                 na.strings="?")
  
  # convert Date and Time variables to combined Date/Time class
  powerdata$Date <- as.Date(powerdata$Date, format="%d/%m/%Y")
  powerdata = subset(powerdata, powerdata$Date >= '2007-02-01' & powerdata$Date <= '2007-02-02')
  powerdata$DateTime <- paste(powerdata$Date,powerdata$Time)
  powerdata$DateTime <- strptime(powerdata$DateTime, format="%Y-%m-%d %H:%M:%S")
}
