#####################
# read in the dataset
#####################
rm("dat")
dat <- read.table(file="household_power_consumption.txt", 
                      header = TRUE, sep = ";")
print(names(dat))
print(head(dat))

####################################
# get proper date object to subset
####################################
#class(dat$Date)
dat$DateNew <- as.Date(dat$Date, format="%d/%m/%Y")

########################
# subset the 2 date only
########################
dat <- subset(dat, dat$DateNew== "2007-02-01" | dat$DateNew == "2007-02-02")

########################
# Create new column of DateTime 
########################
dat <- transform(dat, DateTime=paste(Date,Time, sep=" ")) 
dat$DateTime <- as.POSIXct(dat$DateTime,
                           format="%d/%m/%Y %H:%M:%S")

########
# Plot 1
########
par(mfcol = c(1,1))
hist(as.numeric(as.character.factor(dat$Global_active_power)), 
     col = "red", main = "Global Active Power", 
     xlab = "Global Active power (kilowatts)")
#png(filename = "plot1.png", width = 480, height = 480)
dev.copy(png,'plot1.png', width = 480, height = 480)
dev.off()




