#download file and unzip the contents
#set your working directory to the location of the zip file
library("dplyr")
#function to divide data into 12 groups based on factor and 0.5 ranges
findGroup <- function(factor){
  number <- as.numeric(as.character(factor))
  result <- 0
  if(number > 0 && number < 0.5){
    result <- 1
  }else if (number > 0.5 && number < 1){
    result <- 2
  }else if(number > 1 && number < 1.5){
    result <- 3
  }else if (number > 1.5 && number < 2){
    result <- 4
  }else if (number > 2 && number < 2.5){
    result <- 5
  }else if (number > 2.5 && number < 3){
    result <- 6
  }else if (number > 3 && number < 3.5){
    result <- 7
  }else if (number > 3.5 && number < 4){
    result <- 8
  }else if (number > 4 && number < 4.5){
    result <- 9
  }else if (number > 4.5 && number < 5){
    result <- 10
  }else if (number > 5 && number < 5.5){
    result <- 11
  }else if (number > 5.5 && number < 6){
    result <- 12
  }
  result
}
#Read in data and mutate to include all necesary calculations
data <- read.table("household_power_consumption.txt", sep =";", header = TRUE)
bgnDT <- as.Date("01/02/2007", format="%d/%m/%Y")
endDT <- as.Date("02/02/2007", format="%d/%m/%Y")

datayr <- mutate(data, DateC = as.Date(data$Date, format="%d/%m/%Y"))
range <- datayr[(datayr$DateC == bgnDT | datayr$DateC == endDT),]
range <- mutate(range, TimeCoord = as.double(strptime(paste(range$Date , range$Time), format="%d/%m/%Y %H:%M:%S")))
range <- mutate(range, group = lapply(as.numeric(as.character(range$Global_active_power)), findGroup))
