
library(dplyr)
library(lubridate)
library(ggplot2)

## Unzip file 
unzip("exdata-data-household_power_consumption.zip")

## create data table from file
colClasses <- c("character","character",rep("numeric",7)) 
rawpower <- read.table("household_power_consumption.txt", na.strings="?", sep=";", header=TRUE, colClasses=colClasses)
colClasses <- c("character","character",rep("numeric",7)) 

## combine date and time columns into single merged date/time column
power <- mutate(rawpower, Time=(paste(Date,"/", Time)))

## convert time and date columns from character to time variable
power <- mutate(power, Time=dmy_hms(Time)) 

## subset 2 days of interest
power <- power[power$Date=="1/2/2007"|power$Date=="2/2/2007", ]

        
               
                