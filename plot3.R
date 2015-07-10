##Make sure to add the DataLoad.R file into working directoty before using this code
source("DataLoad.R")

png(filename = "plot3.png",width = 480,height = 480)
plot(pcdata$DateTime, pcdata$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(pcdata$DateTime, pcdata$Sub_metering_2, col = "red")
lines(pcdata$DateTime, pcdata$Sub_metering_3, col = "blue")
legend("topright", col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1)
dev.off()



