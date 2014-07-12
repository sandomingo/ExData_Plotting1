rm(list=ls())
source("load_data.R")
data.all <- loadData("../household_power_consumption.txt")
# plot1: Global Active Power
png(filename="plot1.png", width=480, height=480)
hist(
  data.all$Global_active_power, 
  main="Global Active Power",
  xlab="Global Active Power (kilowatts)",
  col="red")
dev.off()
