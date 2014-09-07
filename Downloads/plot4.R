#.........plot1.R.................

d<-read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=TRUE)
h<-subset(d,Date=="1/2/2007"|Date=="2/2/2007")
rm(d)
m<-paste(h[,1],h[,2])
v<-as.POSIXlt(m,format="%d/%m/%Y %H:%M:%S")
#............................
par(mfrow=c(2,2))
plot(y=h$Global_active_power,x=v, type="l" ,ylab="Global Active Power")
plot(y=h$Voltage,x=v,ylab="Voltage",xlab="datetime",type="l")
plot(y=h$Sub_metering_1,x=v,type="n",ylab="Energy sub Metering")
lines(y=h$Sub_metering_1,x=v,col="black")
lines(y=h$Sub_metering_2,x=v,col="red")
lines(y=h$Sub_metering_3,x=v,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=c(1,1,1),cex=.4,bty="n")
plot(y=h$Global_reactive_power,x=v,ylab="Global_reactive_power",xlab="datetime",type="l")
dev.copy(png,file="plot4.png")
dev.off()
