#
##plot 2
## must run loadfiles.R before running this program to create dataframe used for plot

## open PNG device
png(filename = "plot2.png", width=480, height=480 )

# call plot to recreate plot 2
plot(power$Time, power$Global_active_power,
     type="l", ylab="Global Active Power (kilowatts)", xlab="")

## close PNG device 
dev.off()