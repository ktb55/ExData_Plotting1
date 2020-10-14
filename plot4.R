################################################################################
##                               plot4.R                                      ##
################################################################################
## This script creates a PNG file of four scatterplots in the plotting region:##
##    Top Left      - Global Active Power vs Time                             ##
##    Top Right     - Voltage vs Time                                         ##
##    Bottom Left   - Sub Meterings (1 through 3) vs Time                     ##
##    Bottom Right  - Global Reactive Power vs Time                           ##
## The plot4.png file can be found in the "plots" folder.                     ##
################################################################################

## Make PNG plot
png(file = "./plots/plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(powerData, {
  ## Top left
  plot(Time, Global_active_power, type = "l", 
       ylab = "Global Active Power", xlab = NA)
  
  ## Top right
  plot(Time, Voltage, type = "l", xlab = "datetime")
  
  ## Bottom left
  plot(Time, Sub_metering_1, type = "l", 
       ylab = "Energy sub metering", xlab = NA)
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
  legend("topright", 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col = c("black", "red", "blue"), lty = 1, bty = "n") # Add legend
  
  ## Bottom right
  plot(Time, Global_reactive_power, type = "l", xlab = "datetime")
})

dev.off()

