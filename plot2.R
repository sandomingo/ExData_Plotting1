rm(list=ls())
source("load_data.R")
data.all <- loadData("../household_power_consumption.txt")
# plot2: Global Active Power by DateTime
png(filename="plot2.png", width=480, height=480)
plot(
  data.all$DateTime,
  data.all$Global_active_power, 
  xlab="",
  ylab="Global Active Power (kilowatts)",
  type="l")
dev.off()
