source("loaddata.R")

message("Writing to png file...")
png(file = "plot1.png", height=480, width=480)

hist(powerdata$Global_active_power,
   main="Global Active Power",
   xlab="Global Active Power (kilowatts)",
   col="red")

dev.off()

message("Complete.")
