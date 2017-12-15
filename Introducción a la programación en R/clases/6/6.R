#Tipos de variables
#Cuantitativas: num. de personas
#Cualitativas: sexo, estado civil
g<-c('f','m,','m','f','f')
g

as.factor(g)
g<-factor(g) #Son equivalentes
g
table(g) #Nos da las frecuencias de cada categoria

a<-factor(c('joven','joven','adulto','joven','adulto'))
g
a
table(a,g)

#Dataframes: tablas de datos. Pueden ser de distintas clases de datos pero deben tener la misma longitud
nombre<-c("Jose","Ana","Luis","Raul","Liz")
edad<-c(20,34,56,27,32)
sexo<-c("H","M","H","H","M")
peso<-c(80,57,76,68,65)
pacientes<-data.frame(nombre,edad,sexo,peso)
pacientes
pacientes[3,2]
pacientes$nombre
pacientes$nombre<-as.character(pacientes$nombre)
pacientes$nombre
pacientes[3,]
pacientes[pacientes$sexo == "H"]
pacientes[pacientes$sexo == "M"]
subset(pacientes,select=c(nombre,peso))
subset(pacientes,select=nombre:sexo)
subset(pacientes,select=edad:peso)
pacientes[,c(1,2,3)]
attach(pacientes)
pacientes[sexo == "H"]
detach(pacientes)

