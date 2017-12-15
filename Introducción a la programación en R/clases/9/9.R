install.packages("XLConnect")
library(XLConnect)

archivo<-loadWorkbook("archivo.xlsx")
createSheet(archivo,name="MiLibro")
writeWorksheet(archivo,c(1,4,5,6),sheet="MiLibro",startRow=3,startCol=2)
saveWorkbook(archivo)

archivo<-loadWorkbook("archivo.xlsx",create=T)
createSheet(archivo,name="otro")
writeWorksheet(archivo,c(1,4,5,6),sheet="otro",startRow=1,startCol=1)
writeWorksheet(archivo,c(1,4,5,6),sheet="otro",startRow=1,startCol=1)
saveWorkbook(archivo)

archivo<-loadWorkbook("archivo.xlsx")
vector<-readWorksheet(archivo,sheet="otro",header=T)



#TAREA 2
ecobici<-read.csv("2017-05.csv",header=T,sep=",",stringAsFactor=F)
str(ecobici)
library(dplyr)
summary(ecobici) #Resumen estadistico
Retiro<-paste(ecobici$Fecha_Retiro,ecobici$Hora_Retiro)
View(Retiro)
ecobici<-mutate(ecobici,Retiro=paste(Fecha_retiro,Hora_Retiro))
head(ecobici)