########### CLASE 8 ##############

#En la clase de hoy se vieron las funciones para leer 
#y escribir datos desde archivos externos

#Creamos una matriz de 15x14 con numeros aleatorios del 1 al 210 
#y le asignamos nombres a las columnas

datos<-matrix(1:210,15,14)
colnames(datos)<- paste0("C",1:14)

########## ARCHIVOS txt ##########

#vamos a escribir la matriz datos en un archivo txt

write.table(datos,"Datos.txt") #el primer parametro es el objeto que se quiere guardar

#el segundo parametro es el nombre del archivo en el que se va a guardar

#Al abrir el archivo Datos.txt vemos que escribio los nombres de filas y columnas

#con el siguiente comando sobrescribimos el archivo pero sin nombres de filas
#Para nombres de las columnas es analogo

write.table(datos,"Datos.txt",row.names=F)

#Ahora leemos el archivo Datos.txt desde R

read.table("Datos.txt") #En este caso no es necesario añadir el argumento sep=""
#pero a veces si lo es, ya que algunos archivos txt definen las columnas por espacio
#en ese caso sep=" "

########## ARCHIVOS csv##########

#Este tipo de archivos están separados por coma o punto y coma, 
#en cualquier caso tendra que especificarse en el parametro sep=""

#ahora escribimos la matriz datos en un archivo datos y posteriormente leemos

write.csv(datos,"Datos.csv",row.names=F)
mis_datos<-read.csv("Datos.csv",header=T,sep=",")
#el argumento header es para indicar que la primera fila del archivo contiene 
#los nombres de las columnas, sep="," para indicar que las columnas estan separadas por ","

En este tipo de archivos a veces los decimales

###### ARCHIVO EXCEL #############

#Para abrir archivos excel hoy usamos el paquete xlsx, este paquete necesita
#de otros dos: xlsjars y rJava, este ultimo necesita java. Así que tuvimos 
#que descargar e instalar el JDK.

#Hasta aquí tenemos la matriz datos, vamos a crear datos2

datos2<-t(datos)
colnames(datos2)<-paste0("C",1:15)

#El siguiente comando escribe la matriz datos en un archivo Datos.xlsx, 
#le indicamos que no escriba nombres de las filas, y que al escribirse, 
#ese libro se llame Mi. Libro1
write.xlsx(datos,"Datos.xlsx",sheetName="Mi.Libro1", row.names=F)

#Ahora se quiere escribir datos2 en el mismo archivo pero en otro libro que se llame Mi.Libro2
write.xlsx(datos2,"Datos.xlsx",sheetName="Mi.Libro2", row.names=F,append=T)

#Notese que si no ponemos el parametro append=T el archivo se sobreescribe


