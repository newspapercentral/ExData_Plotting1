source("setup.R")
#Plot 2
png("plot2.png")


#Plot 2
plot(range$TimeCoord, as.numeric(as.character(range$Global_active_power)), type="n", xaxt="n", xlab="", ylab="Global Active Power (kilowats)")
lines(range$TimeCoord, as.numeric(as.character(range$Global_active_power)), type="l")
title(main="Plot 2")

#label values calculated by looking at the first row of the filtered data (2/1), the first row of 2/2, 
#and the last row of the filtered data
axis(1, at=c(1170306000, 1170392400, 1170478740) , labels=c("Thu" , "Fri", "Sat"))

dev.off()
