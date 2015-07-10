household_power_consumption <- read.csv("./household_power_consumption.txt", sep=";",stringsAsFactors=FALSE,dec = ".")

mydata<-household_power_consumption
mydata$Date<-as.Date(household_power_consumption$Date,"%d/%m/%Y")


mydata2<-mydata[mydata$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]

#PLOT 1


png("plot1.png", width=480, height=480)
hist(as.numeric(mydata2$Global_active_power),xlab="Global Active Power (kilowatts)",main = "Global Active Power",col="red")
dev.off()
