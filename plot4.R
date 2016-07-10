source("setup.R")
#Plot 4
png("plot4.png")

par(mfrow=c(2,2))
#top left
plot(range$TimeCoord, range$Global_active_power, type="n", xaxt="n", xlab="", ylab="Global Active Power (kilowats)")
lines(range$TimeCoord, range$Global_active_power, type="l")

#label values calculated by looking at the first row of the filtered data (2/1), the first row of 2/2, 
#and the last row of the filtered data
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))

#top right
plot(range$TimeCoord, as.numeric(as.character(range$Voltage)), type="n", xaxt="n", xlab="datetime", ylab="Voltage")
lines(range$TimeCoord, as.numeric(as.character(range$Voltage)), type="l")

#label values calculated by looking at the first row of the filtered data (2/1), the first row of 2/2, 
#and the last row of the filtered data
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))

#bottom left

plot(range$TimeCoord, range$Sub_metering_3, type="n", xaxt="n", yaxt="n", ylim=c(0,50), xlab="", ylab="Energy Sub Meeting")
lines(range$TimeCoord, range$Sub_metering_1, type="l")
lines(range$TimeCoord, range$Sub_metering_2, type="l", col="red")
lines(range$TimeCoord, range$Sub_metering_3, type="l", col="blue")
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))
axis(side=2, at=c(0,10,20,30), labels=c(0,10,20,30))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), 
       cex=1, y.intersp=0.7, lwd=c(2.5,2.5,2.5), col=c("black", "red", "blue"))

#bottom right
plot(range$TimeCoord, range$Global_reactive_power, type="n", xaxt="n", xlab="datetime" , ylab="Global_reactive_power")
lines(range$TimeCoord, range$Global_reactive_power, type="l")

#label values calculated by looking at the first row of the filtered data (2/1), the first row of 2/2, 
#and the last row of the filtered data
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))
dev.off()

