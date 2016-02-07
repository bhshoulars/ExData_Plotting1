hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,na.strings="?")
hpc$Time<-strptime(paste(hpc$Date,hpc$Time),"%d/%m/%Y %H:%M:%S")
hpc$Date<-as.Date(hpc$Date,"%d/%m/%Y")
hpcsub<-hpc[hpc$Date==as.Date("2007-2-1") | hpc$Date==as.Date("2007-2-2"),]
png(filename="plot2.png",width = 480, height = 480)
plot(hpcsub$Time,hpcsub$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()