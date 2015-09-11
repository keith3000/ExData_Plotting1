#
##plot 3
## must run loadfiles.R before running this program to create dataframe used for plot

## open PNG device
png(filename = "plot3.png", width=480, height=480 )

# call plot to recreate plot 3
plot(power$Time, power$Sub_metering_1,
     type="l", ylab="Energy sub metering", xlab="")

# Call lines to add other lines
lines(power$Time, power$Sub_metering_2, 
     type="l", col="red")
lines(power$Time, power$Sub_metering_3,
      type="l", col="blue")

#add legend
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
col = c(1, 2, 4),
lty = "solid")


## close PNG device 
dev.off()