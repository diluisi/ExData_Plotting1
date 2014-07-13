source("cleandata.R") #Load function to clean data
plot1 <- function() {
    data <- cleanData() #Call function to clean data
    png(filename = "plot1.png", width = 480, height = 480, units = "px")
    hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
    dev.off()
}

plot1()
