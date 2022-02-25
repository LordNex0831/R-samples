# We have already creaed the dataset during plot1, so noo need to repeat the steps here
# Directly moving on to plot2

#Mwrginf the date and tim eto create date_time and typecasting to date
date_time <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(date_time, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()