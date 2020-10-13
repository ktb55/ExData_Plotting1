################################################################################
##                               plot2.R                                      ##
################################################################################
## This script creates a PNG file of a scatterplot of the Global Active Power ##
## vs the day of the week.  The points are connected by lines.                ##
## The plot2.png file can be found in the "plots" folder.                     ##
################################################################################

## Make PNG plot
png(file = "./plots/plot2.png", width = 480, height = 480)
with(powerData, plot(Time, Global_active_power, type = "l", 
                     ylab = "Global Active Power (kilowatts)", xlab = NA))

dev.off()
