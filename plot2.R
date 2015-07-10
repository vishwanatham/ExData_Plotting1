source("DataLoad.R")

png(filename = "plot2.png",width = 480,height = 480)
plot(pcdata$DateTime, pcdata$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()



