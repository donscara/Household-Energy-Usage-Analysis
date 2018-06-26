data<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
dataset <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(dataset$Date), dataset$Time)
dataset$Datetime <- as.POSIXct(datetime)


with(dataset, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

