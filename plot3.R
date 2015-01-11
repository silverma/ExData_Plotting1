source("loaddata.R")

message("Writing to png file...")
png(file = "plot3.png", height=480, width=480)

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
      col=c("black","red","blue"))

dev.off()

message("Complete.")
