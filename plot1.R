## plot histogram as shown in figure 1 of project 1
## must run loadfiles.R before running this program to create dataframe used for plot


## open PNG device
png(filename = "plot1.png", width=480, height=480 )

# call base histogram 
hist(power$Global_active_power, col="red", main="Global Active Power", 
             xlab="Global Active Power (kilowatts)")

## close PNG device 
dev.off()