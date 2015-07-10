#Check if the text file exists in the workking directory
if ( file.exists("household_power_consumption.txt") == FALSE)
{
  #File doesn't exist, so dowload the zip file and unzip it
  
  #The Zip file will be dowloaded to the working directory
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile = "exdata-data-household_power_consumption.zip")
  
  #Unzip the file in the working directory  
  unzip(zipfile = "exdata-data-household_power_consumption.zip",exdir = getwd())
  
  #As we have the file now we no longer need the zip file, delete it.
  unlink("exdata-data-household_power_consumption.zip")
} 

#As the data is huge, read sample data to determine the colClasses.
sampledata <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE,na.strings = c("?"), nrows = 20)
colClass <- sapply(colnames(sampledata),function(colname) class(sampledata[,colname]))

pcdata <- read.table("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors = FALSE,colClasses = colClass,na.strings = c("?"))

#remove unwanted data from memory
rm(sampledata,colClass)

#we need the data of only '2007-02-01' and '2007-02-02'
pcdata <- pcdata[pcdata[,"Date"] == "1/2/2007"|pcdata[,"Date"] == "2/2/2007",]

temp <- paste(pcdata$Date,pcdata$Time)

#Covert data types
pcdata$DateTime <- strptime(temp,format = '%d/%m/%Y %H:%M:%S')

rm(temp)