#.........plot3.R.................

d<-read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=TRUE)
h<-subset(d,Date=="1/2/2007"|Date=="2/2/2007")
rm(d)
m<-paste(h[,1],h[,2])
v<-as.POSIXlt(m,format="%d/%m/%Y %H:%M:%S")

#...............................
h[,7]<-as.numeric(h[,7])
h[,8]<-as.numeric(h[,8])
h[,9]<-as.numeric(h[,9])
plot(y=h$Sub_metering_1,x=v,type="n",ylab="Energy sub Metering")
lines(y=h$Sub_metering_1,x=v,col="black")
lines(y=h$Sub_metering_2,x=v,col="red")
lines(y=h$Sub_metering_3,x=v,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=c(2,2,2),cex=.8)
dev.copy(png,file="plot3.R")
dev.off()