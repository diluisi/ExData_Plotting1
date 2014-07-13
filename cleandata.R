cleanData <- function() {
	#Save file on dir
	#This function download the file from website and clean data
	nameFile<-"clean_data.csv"  
	data <- download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip", method="curl")
	unzipData<-unzip("household_power_consumption.zip")
	cleanData <- read.table(unzipData, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
	cleanData <- cleanData[(cleanData$Date == "1/2/2007") | (cleanData$Date == "2/2/2007"),]
	cleanData$DateTime <- as.POSIXct(strptime(paste(cleanData$Date, cleanData$Time), "%d/%m/%Y %H:%M:%S"))
	write.csv(cleanData, nameFile)##creates a new .csv file for plotting
	cleanData
}
