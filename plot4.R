# Proceeding with specifyting variables and plotting data
grp<-as.numeric(df$Global_reactive_power)
volt<-as.numeric(df$Voltage)

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
#plot(1,1)
plot(date_time, gap, type="l", xlab="", ylab="Global Active Power", cex=0.2)
#plot(1,2)
plot(date_time, volt, type="l", xlab="datetime", ylab="Voltage")
#plot(2,1)
plot(date_time, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
#plot(2,2)
plot(date_time, grp, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()