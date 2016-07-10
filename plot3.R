source("setup.R")
#Plot 3
png("plot3.png")

plot(range$TimeCoord, range$Sub_metering_3, type="n", xaxt="n", yaxt="n", ylim=c(0,50), xlab="", ylab="Energy Sub Metering")
lines(range$TimeCoord, range$Sub_metering_1, type="l")
lines(range$TimeCoord, range$Sub_metering_2, type="l", col="red")
lines(range$TimeCoord, range$Sub_metering_3, type="l", col="blue")
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))
axis(side=2, at=c(0,10,20,30), labels=c(0,10,20,30))
title(main="Plot 3")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(2.5,2.5,2.5), col=c("black", "red", "blue"))

dev.off()


