par(mfcol = c(2,2))
par(mar=c(4,4,1,1))
source("plot2.R")
source("plot3.R")
plot(dat$DateTime, as.numeric(as.character.factor(dat$Voltage)),
     type = 'l', ylab="voltage", xlab="datetime")
plot(dat$DateTime, as.numeric(as.character.factor(dat$Global_reactive_power)),
     type = 'l', ylab="Global_reactive_power", xlab="datetime")
dev.copy(png,'plot4.png', width = 480, height = 480)
dev.off()