# Some required feilds have already been created in the previous plots
# here we first typecast the sub metering values to numeric
sm1<-as.numeric(df$Sub_metering_1)
sm2<-as.numeric(df$Sub_metering_2)
sm3<-as.numeric(df$Sub_metering_3)
# Plotting and saving as png
png("plot3.png", width=480, height=480)
plot(date_time, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sm2, type="l", col="red")
lines(date_time, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()