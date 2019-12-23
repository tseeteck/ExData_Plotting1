

########
# Plot 3
########
y1=as.numeric(as.character.factor(dat$Sub_metering_1))
y2=as.numeric(as.character.factor(dat$Sub_metering_2))
y3=dat$Sub_metering_3
plot(dat$DateTime, y1,
     type = 'l', ylab="Energy Sub metering", xlab="")
lines(dat$DateTime, y2, col = "red")
lines(dat$DateTime, y3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ), 
       col = c("black", "red", "blue"), lty = 1)
dev.copy(png,'plot3.png', width = 480, height = 480)
dev.off()