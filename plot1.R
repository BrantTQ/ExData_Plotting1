setwd("C:/Users/Brant/Documents/Coursera/graphs")



df <- read.csv("~/Coursera/graphs/household_power_consumption.txt", sep=";")

dt <- df

df <- dt


df <- subset(df, df$Date=="1/2/2007" | df$Date =="2/2/2007")

df[df== "?"] <- NA


df$formated <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

df$Global_active_power <- as.numeric(df$Global_active_power)

df$Sub_metering_1 <- as.numeric(df$Sub_metering_1)

df$Sub_metering_2 <- as.numeric(df$Sub_metering_2)

df$Sub_metering_3<- as.numeric(df$Sub_metering_3)

df$Global_reactive_power <- as.numeric(df$Global_reactive_power)

df$Voltage <- as.numeric(df$Voltage)



#Plot 1

png(file="C:/Users/Brant/Documents/Coursera/graphs/plot1.png", width=480, height=480)
hist(df$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
