#Input Data
data2<-read.table("~//household_power_consumption.txt",sep = ";")
data2$V1<-as.Date(data2$V1,format="%d/%m/%Y")
#Subset Data
mydata<-subset(data2,V1=="2007-02-01" | V1=="2007-02-02")
#Plot 
png("plot1.png",width=480,height = 480)
hist(x=as.numeric(mydata$V3)/500,main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col="red")
dev.off()