#Input Data
data2<-read.table("~//household_power_consumption.txt",sep = ";")
data2$V1<-as.Date(data2$V1,format="%d/%m/%Y")

#Subset Data
mydata<-subset(data2,V1=="2007-02-01" | V1=="2007-02-02")
png("plot2.png",width=480,height = 480)

#Plot
plot(as.numeric(mydata$V3)/500,ylab="Global Active Power (kilowatts)",type="l",xlab = "",xaxt="n")
days<-c("Thu","Fri","Sat")
axis(1, at=c(1,length(mydata$V3)/2,length(mydata$V3)), lab=c(days[1],days[2], days[3]))
dev.off()
