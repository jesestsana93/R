library(lubridate)

data<-read.table("./CURSO_R/consumo_de_energia_elect.txt")
data$Date<-dmy(data$Date)

#Se localizan los indices donde comienza el día para usar en las ultimas graf
indLab<-c(which(data$Time=="00:00:00"),nrow(data)+1)
lab<-wday(seq(data$Date[1],length = 3, by = "days"),label=T)

#####GRAFICA 1 ######

#Como la variable Global_active_power es una variable cuantitativa, para ver 
la frecuencia de esos datos hay que hacer un histograma.

pdf("grafica1.pdf")
hist(data$Global_active_power,col="cyan",main="Global Active Power 2007",
	xlab="Global Active Power (kilowatts)")
dev.off()

#### GRAFICA 2 ##############

pdf("grafica2.pdf")
plot(data$Global_active_power,type="l",xlab=" ",xaxt = "n",
	ylab="Global Active Power (kilowatts)")
axis(1, at=indLab,labels=lab)
dev.off()

######## GRAFICA3  ################

png("grafica3.png")
plot(data$Sub_metering_1,type="l",xlab=" ",xaxt = "n",
	ylab="Energy sub metering")
axis(1, at=indLab,labels=lab)
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright", paste0("Sub_metering_",1:3), 
	col = c("black", "red", "blue"),lwd = c(1, 1, 1))
dev.off()

########### GRAFICA 4 ################

png("grafica4.png")
par(mfrow = c(2,2))
plot(data$Global_active_power,type="l",xlab=" ",xaxt = "n",
	ylab="Global Active Power")
axis(1, at=indLab,labels=lab)

plot(data$Voltage,type="l",xlab="datetime",xaxt = "n",
	ylab="Voltage")
axis(1, at=indLab,labels=lab)

plot(data$Sub_metering_1,type="l",xlab=" ",xaxt = "n",
	ylab="Energy sub metering")
axis(1, at=indLab,labels=lab)
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright", paste0("Sub_metering_",1:3), 
	col = c("black", "red", "blue"),lwd = c(1, 1, 1))

plot(data$Global_reactive_power,type="l",xlab="datetime",xaxt = "n",
	ylab="Global_reactive_power")
axis(1, at=indLab,labels=lab)
dev.off()




