################################################################################
##                             readData.R                                     ##
################################################################################
## This scripts reads in the household power consumption data from the data   ##
## folder.                                                                    ##
################################################################################

## Libraries
library("dplyr")

## Read in data
powerData <- read.table("./data/household_power_consumption.txt", header = TRUE, 
                        sep = ";", na.strings = "?") %>%
  filter(Date == "1/2/2007" | Date == "2/2/2007") %>% # From specific date range
  mutate(Time = paste(Date, Time), Date = as.Date(Date, "%d/%m/%Y"),
         Time = strptime(Time, "%d/%m/%Y %H:%M:%S")) # Convert date/time