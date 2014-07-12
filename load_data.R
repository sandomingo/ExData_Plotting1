loadData <- function(filename) {
  # get the data's header
  data.header <- read.csv(filename, header=F, sep=";", nrow=1, stringsAsFactors=F)
  
  # We will only be using data from the dates 2007-02-01 and 2007-02-02,
  # which are between line 66638 to 69517.(I reveal this by vim pattern matching)
  num.record = 69517 - 66638 + 1
  data.all <- read.csv(filename, header=F, sep=";", skip=66637,
                       nrow=num.record, stringsAsFactors=F, na.string="?")
  names(data.all) <- unname(unlist(data.header[1,]))
  data.all$DateTime <- paste(data.all$Date, data.all$Time)
  data.all$DateTime <- strptime(data.all$DateTime, "%d/%m/%Y %H:%M:%S")
  data.all
}

x <- loadData("../household_power_consumption.txt")
