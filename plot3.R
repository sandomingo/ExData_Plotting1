rm(list=ls())
source("load_data.R")
data.all <- loadData("../household_power_consumption.txt")
# plot3: Energy sub metering
png(filename="plot3.png", width=480, height=480)
plot(
  data.all$DateTime,
  data.all$Sub_metering_1, 
  xlab="",
  ylab="Energy sub metering",
  type="l")
lines(
  data.all$DateTime,
  data.all$Sub_metering_2,
  col="red"
  )
lines(
  data.all$DateTime,
  data.all$Sub_metering_3,
  col="blue"
)
legend("topright", 
       lty=1,
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
