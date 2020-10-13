################################################################################
##                               plot3.R                                      ##
################################################################################
## This script creates a PNG file of a scatterplot of the sub metering 1      ##
## through 3, vs the day of the week.  The points are connected by lines.     ##
## The plot3.png file can be found in the "plots" folder.                     ##
################################################################################

## Make PNG plot
png(file = "./plots/plot3.png", width = 480, height = 480)
with(powerData, {
  plot(Time, Sub_metering_1, type = "l", 
                     ylab = "Energy sub metering", xlab = NA)
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
  legend("topright", 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col = c("black", "red", "blue"), lty = 1) # Add legend
  })

dev.off()
