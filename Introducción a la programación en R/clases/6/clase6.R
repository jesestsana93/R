#Los factores son variables categóricas, aquellas que no se les puede 
#identificar con un valor numerico, sino con una cualidad o caracteristica
#Por ejemplo: marca,sexo,codigo postal,clima,colores,idioma,mes de nacimiento

#los factores tienen levels que son los posibles valores que pueden tomar

#Suponga que se tiene un vector con el sexo de 5 personas

g<-c('f','m','m','f','f')

#Podemos transformar el vector en factor

g<-factor(g)  #Son equivalentes
g<-as.factor(g)

#Otra de las cosas que se puede hacer con los factores es ver la frecuencia
#de cada valor posible

table(g)

#La funcion table() se puede usar para obtener tablas "cruzadas"
#de varios factores

#Por ejemplo suponga que tiene otra variable categorica de las 5 personas

a<-factor(c('joven','joven','adulto','joven','adulto'))

#Podemos obtener la tabla cruzada como sigue

table(a,g)

#################### DATA FRAMES ########################################

#Los data frames son una clase especial de listas, muy similar a 
#las matrices en estructura pero pueden incluir datos de distintos tipos

#Se puede pensar cada fila de un data frame como una 
#observacion de un conjunto de variables (columnas)

#A partir de los siguientes vectores construir un data frame

nombre<-c("Jose","Ana","Luis","Raul","Liz")
edad<-c(20,34,56,27,32)
sexo<-c("H","M","H","H","M")
peso<-c(80,57,76,68,65)

#Construyamos el data frame pacientes

pacientes<-data.frame(nombre,edad,sexo,peso)

#Para extraer elementos del data frame se hace igual que en una matriz

pacientes[3,2]

#Se puede usar el nombre de la columna para extraer toda la columna

pacientes$edad

pacientes[pacientes$sexo == "M",]

subset(pacientes,select=c(nombre,peso))
subset(pacientes,sexo=="M")
 attach(pacientes)
 detach(pacientes)


############### OTRAS FUNCIONES ############################

month.name #escribe los meses del año

month.abb #escribe los meses del año abreviados



