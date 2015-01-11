source("loaddata.R")

message("Writing to png file...")
png(file = "plot4.png", height=480, width=480)

# layout canvas
par(mfrow=c(2,2))

# plot 1
plot(powerdata$DateTime,
     powerdata$Global_active_power, 
     type="l",
     ylab="Global Active Power",
     xlab="")

# plot 2

plot(powerdata$DateTime,
     powerdata$Voltage, 
     type="l",
     ylab="Voltage",
     xlab="datetime")

# plot 3

plot(powerdata$DateTime,
     powerdata$Sub_metering_1, 
     type="l",
     ylab="Energy sub metering",
     xlab="")

lines(powerdata$DateTime,
      powerdata$Sub_metering_2,
      col="red")

lines(powerdata$DateTime,
      powerdata$Sub_metering_3,
      col="blue")

legend("topright",
      c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
      lty=c(1,1,1),
      col=c("black","red","blue"),
      bty="n")

# plot 4

plot(powerdata$DateTime,
     powerdata$Global_reactive_power, 
     type="l",
     ylab="Global_reactive_power",
     xlab="datetime")

dev.off()

message("Complete.")
