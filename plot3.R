x<-read.table("household_power_consumption.txt",sep=";",header=T,as.is=F,na.strings = "?")
x[,1]<-as.Date(x[,1],format="%d/%m/%Y")
data<-x[(x[,1]>="2007-02-01" & x[,1]<="2007-02-02"),]


png("plot3.png",width=480,height=480)


plot(Sub_metering_1~Datetime,type="l", ylab ="Energy sub metering",xlab="",data)
lines(Sub_metering_2~Datetime,type="l", data,col="red")
lines(Sub_metering_3~Datetime,type="l", data,col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty = 1, lwd = 2)

dev.off()
