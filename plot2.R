source("cleandata.R") #Load function to clean data
plot2 <- function() {
    data <- cleanData() #Call function to clean data
    png(filename = "plot2.png", width = 480, height = 480, units = "px")
    plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

plot2()
