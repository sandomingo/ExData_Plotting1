rm(list=ls())
source("load_data.R")
data.all <- loadData("../household_power_consumption.txt")
# plot4: four in one
# (by row)
# 1. Global Active Power by DateTime
# 2. Voltage by DateTime
# 3. Energy sub metering by DateTime
# 4. Clobal_reactive_power by Datetime
png(filename="plot4.png", width=480, height=480)
par(mfrow = c(2, 2), mar=c(4,4,2,2))
# subplot 1, alike, plot2
plot(
  data.all$DateTime,
  data.all$Global_active_power, 
  xlab="",
  ylab="Global Active Power (kilowatts)",
  type="l")

# subplot 2
plot(
  data.all$DateTime,
  data.all$Voltage,
  xlab="datetime",
  ylab="Voltage",
  type="l")

# subplot 3, alike plot3
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
       bty="n",
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# subplot 4
plot(
  data.all$DateTime,
  data.all$Global_reactive_power,
  xlab="datetime",
  ylab="Global_reactive_power",
  type="l")
dev.off()
