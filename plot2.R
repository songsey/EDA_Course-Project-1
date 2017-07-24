x<-read.table("household_power_consumption.txt",sep=";",header=T,as.is=F,na.strings = "?")
x[,1]<-as.Date(x[,1],format="%d/%m/%Y")
data<-x[(x[,1]>="2007-02-01" & x[,1]<="2007-02-02"),]


png("plot2.png",width=480,height=480)

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

plot(data[,3]~data$Datetime,type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()