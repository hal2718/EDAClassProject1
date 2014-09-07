#.........plot1.R.................

d<-read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=TRUE)
h<-subset(d,Date=="1/2/2007"|Date=="2/2/2007")
rm(d)
#.................................
h$Global_active_power<-as.numeric(h$Global_active_power)
hist(h$Global_active_power,col="red",xlab="Global Active Power (kilowatts",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()