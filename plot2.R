hpc<-read.table(file="household_power_consumption.txt",na.strings = "?", sep = ";", header = T)
hpc_subset<-subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")
#add a column with date and time
hpc_subset<-cbind(hpc_subset,dateTime=as.POSIXct(paste(hpc_subset$Date, hpc_subset$Time), format="%d/%m/%Y %H:%M:%S"))
png(filename = "plot2.png")
plot(hpc_subset$Global_active_power~hpc_subset$dateTime,type="l",xlab = NA, ylab = "Global Active Power (Kilowatts)")
dev.off()