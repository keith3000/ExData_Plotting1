#
## plot 4
# !! must run loadfiles.R before running this program to create dataframe used for plot

# open PNG device
png(filename = "plot4.png", width=480, height=480 )

#specifiy multi-paned plot
        par(mfrow=c(2,2))

# call plot to recreate plot 2
        plot(power$Time, power$Global_active_power,
             type="l", ylab="Global Active Power", xlab="")

# plot Voltage versus time
        plot(power$Time, power$Voltage,
             type="l", xlab="datetime")

# recreate plot 3
        # call plot 
        plot(power$Time, power$Sub_metering_1,
             type="l", ylab="Energy sub metering", xlab="")
        
# Call lines for plot 3
        lines(power$Time, power$Sub_metering_2, 
              type="l", col="red")
        lines(power$Time, power$Sub_metering_3,
              type="l", col="blue")
        
        #add legend
        legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col = c(1, 2, 4),
               lty = "solid")

# call plot for reactive power v. time
        plot(power$Time, power$Global_reactive_power,
             type="l", ylab="Global_reactive_power", xlab="datetime")

# close PNG device 
dev.off()

#