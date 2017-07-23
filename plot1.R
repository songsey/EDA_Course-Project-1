#1.
x<-read.table("household_power_consumption.txt",sep=";",header=T,as.is=F,na.strings = "?")
x[,1]<-as.Date(x[,1],format="%d/%m/%Y")
data<-x[(x[,1]>="2007-02-01" & x[,1]<="2007-02-02"),]


png("plot1.png",width=480,height=480)
hist(data[,3],col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")

#data[,10]<-as.factor(weekdays(data[,1]))
#plot(data[,3]~data[,10])

dev.off()
