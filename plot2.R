source("loaddata.R")

message("Writing to png file...")
png(file = "plot2.png", height=480, width=480)

plot(powerdata$DateTime,
     powerdata$Global_active_power, 
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="")

dev.off()

message("Complete.")
