source("cleandata.R")
plot2 <- function() {
    data <- cleanData()
    png(filename = "plot1.png", width = 480, height = 480, units = "px")
    plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

plot2()
