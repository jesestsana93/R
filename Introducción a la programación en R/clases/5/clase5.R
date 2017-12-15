############### fechas: Clase Date ####################

a<-"2013-11-28"
fecha<-as.Date(a)

#Si el primer parametro que recibe as.Date no es en el orden año, mes y día, 
#hay que agregar un segundo parámetro llamado format. Ejemplo

as.Date("28/11/2013",format="%d/%m/%Y") 
as.Date("28 Noviembre 2013",format="%d %B %Y")

hoy<-Sys.Date() #fecha actual

dias=c("9/05/2004","9/07/2005","6/4/2006","18/12/2016")
dias<-as.Date(dias,format="%d/%m/%Y")
cumple<-dias[4]
nacimiento<- as.Date("1993-12-18")
hoy-nacimiento #da el numero de dias que llevo viviendo desde que naci hasta la fecha

############ OPERACIONES CON VARIABLES DE CLASE DATE ################

dia1<-as.Date("15/7/2011",format="%d/%m/%Y")
dia2<-as.Date("15/7/2012",format="%d/%m/%Y")

dia2 - dia1

difftime(dia2, dia1, units = "secs") #direfencia entre dia2 y dia2 en segundos

dia2-10
dia2+20

diff(dias)

#extrayendo informacion de dia2
months(dia2)
weekdays(dia2)
mday(dia2)

############### SUCESIONES DE FECHAS ##################

s<- seq(dia1,dia2,length=10)

seq(dia1,dia2,by="month")

#Para que R reconozca ciertos datos como fechas y horas hay que convertirlos a
#clase POSIXt, que ademas de fecha incluye hora y huso horario.

#La clase POSIXt tiene dos subclases: POSIXct y POSIXlt. Se diferencian en la 
#forma que almacenan internamente los datos que reciben.

#POSIXct almacena una fecha y hora como el numero de segundos transcurridos
#desde 1/1/1970

#POSIXlt almacena los datos en forma de lista

#La funcion unclass() muestra la representacion interna de un objeto en R

############ DE CARACTER A POSIXct ###################33

f1<-as.POSIXct("17/11/1999 22:10:00",format="%d/%m/%Y %H:%M:%S")
f2<-as.POSIXct("17/10/1999 22:10:00",format="%d/%m/%Y %H:%M:%S")

Sys.time() #hora actual del sistema en clase POSIXct

difftime(f1,f2,units="days")

# se respeta horario de verano con respecto al del invierno
as.POSIXct("2013-03-10 08:32:07") - as.POSIXct("2013-03-09 23:55:26")

#la funcion strptime es para considerar como caracter al primer parametro 
#que recibe y decirle que se usara para covertir a tipo POSIXct

date<- as.POSIXct(strptime(200405030843,format="%Y%m%d%H%M")) 
date<- strptime(200405030843,format="%Y%m%d%H%M") #lo convierte a clase POSIXlt

unclass(date)

##################### CLASE POSIXlt ######################

#el parametro tz es para definir la zona horaria

f3<-as.POSIXlt("2015-05-14 07:26:04", tz="America/Mexico_City")

unclass(f3)

f3$hour #muestra la hora de f3

OlsonNames() #muestra los nombres de todos los husos horarios

######### PAQUETE lubridate ################################
#Por default las fechas con lubridate toman la zona horaria tz=UTC  (Tiempo Universal)

husos.horarios<-OlsonNames()

fecha1<- ymd_hms("2013-03-17 00:00:00") 
fecha2<- dmy_hm("16/06/2017 08:32",tz=husos.horarios[161])

month(fecha2)

#Si queremos saber que fecha y hora es en Moscu cuando en la CDMX 
#estamos en fecha 2, hay que usar la funcion with_tz(). Ejemplo

Moscu<-with_tz(fecha2,tz=husos.horarios[grep("Moscow",husos.horarios)])

######## OTRAS FUNCIONES EN lubridate ###########

round_date(fecha1,"year")

now() # Hora actual

today()   # Fecha actual

#############CONVERSION DE VARIABLES TIPO FECHA A CARACTER ############
#Para esta parte ya no es necesario lubridate

b<-as.character(dia1)
b<-format(dia1)

#como caracter en distintos formatos

as.character(dia1, format="%A, %d de %B de %Y")
as.character(dia1, format="%d %b. %Y")

format(dia1, "%d/%m/%y")

format(dia1,"%A") #solo partes de la fecha

format(dias,"%B") #operan sobre vectores

format(as.Date("2013-12-25"),"%A") #solo funcionan si convertimos el caracter a fecha



