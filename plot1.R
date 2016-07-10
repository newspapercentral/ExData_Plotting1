source("setup.R")
#Plot 1
png("plot1.png")
freq <- table(unlist(range$group))
barplot(freq[2:12], col="red", xaxt="n", xlab="Global Active Power (kilowats)", 
        ylab="Frequency")#start at two to remove NAs, which are counted as zero
axis(1, at=c(0,4,8,12) , labels=c(0 , 2, 4, 6))
title(main="Global Active Power")
dev.off()
