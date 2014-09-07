#.........plot2.R.................

d<-read.table("household_power_consumption.txt",sep=";",header=TRUE,as.is=TRUE)
h<-subset(d,Date=="1/2/2007"|Date=="2/2/2007")
rm(d)
#.................................
m<-paste(h[,1],h[,2])
v<-as.POSIXlt(m,format="%d/%m/%Y %H:%M:%S")
plot(y=h$Global_active_power,x=v, type="l" ,ylab="Global Active Power (kilwatts)")
dev.copy(png.file="plot2.png")
dev.off()