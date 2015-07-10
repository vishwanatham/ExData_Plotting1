##Make sure to add the DataLoad.R file into working directoty before using this code
source("DataLoad.R")

png(filename = "plot4.png",width = 480,height = 480)

par(mfrow = c(2,2))

#Top Left
plot(pcdata$DateTime,pcdata$Global_active_power,xlab = "", ylab = "Global Active Power",type = "l",mfrow = c(1,1))
     
#Top Right
plot(pcdata$DateTime,pcdata$Voltage,xlab = "datetime", ylab = "Voltage",type = "l",mfrow = c(1,2))

#Bottom Left
plot(pcdata$DateTime, pcdata$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering",mfrow = c(2,1))
lines(pcdata$DateTime, pcdata$Sub_metering_2, col = "red")
lines(pcdata$DateTime, pcdata$Sub_metering_3, col = "blue")
legend("topright",bty = "n", col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1)

#Bottom Right
plot(pcdata$DateTime,pcdata$Global_reactive_power,xlab = "datetime", ylab = "Global_reactive_power" ,type = "l",mfrow = c(2,2))

dev.off()

