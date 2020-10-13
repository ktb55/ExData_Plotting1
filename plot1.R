################################################################################
##                               plot1.R                                      ##
################################################################################
## This scripts creates a PNG file of a histogram of the Global Active Power. ##
## The plot1.png file can be found in the "plots" folder.                     ##
################################################################################

## Make PNG plot
png(file = "./plots/plot1.png", width = 480, height = 480)
with(powerData, hist(Global_active_power, main = "Global Active Power", 
                     col = "red", xlab = "Global Active Power (kilowatts)"))
dev.off()



