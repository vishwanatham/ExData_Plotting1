##Make sure to add the DataLoad.R file into working directoty before using this code
source("DataLoad.R")

png(filename = "plot1.png",width = 480,height = 480)
hist(pcdata$Global_active_power,col = "Red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()

 
