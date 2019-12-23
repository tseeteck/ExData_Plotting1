########
# Plot 2
########
plot(dat$DateTime, as.numeric(as.character.factor(dat$Global_active_power)),
     type = 'l', ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,'plot2.png', width = 480, height = 480)
dev.off()