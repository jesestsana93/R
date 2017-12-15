######### CLASE 4 (15/06/2017) ################
###############################################

#Recordemos que la funcion sample(A,k) genera una muestra 
#aleatoria de tamaño k, donde los elementos se toman en el conjunto A. Por 
#default la muestra es sin reemplazo, es decir, no se repiten los elementos de A.

#Ejemplos

sample(1:50,17) #muestra de 17 num. que se pueden escoger de los numeros 1 al 50
sample(c(TRUE,FALSE),20,replace=TRUE) #muestra de 20 valores logicos

#En el comando anterior es necesario que replace=TRUE pues el 
#conjunto A es un vector de 2 elemntos y la muestra se quiere de 20

sample(LETTERS,11) #muestra de 11 letras escogidas entre A,B,C,...,Y,Z

#Para letras en minusculas es con letters

######## EJERCICIO EN CLASE #######

#1.Con la funcion sample generar 50 numeros aleatorios tomados del 21:60,
#usar la semilla pi. 

#2.Con los datos anteriores hacer una matriz que se llame torneos de 10x5 y 
#asignarle nombres a las filas y columnas como 
#Equipo.1, Equipo.2,..., Equipo.10 y Lunes,Martes,...,Viernes respectivamente.

set.seed(pi)
torneos<-matrix(sample(21:60,50,replace=TRUE),10,5)

#Con la funcion colnames se asigna nombres a las columnas  y 
#con rownames nombres de las filas de la matriz

colnames(torneos)<-c("Lunes","Martes","Miercoles","Jueves","Viernes")
rownames(torneos)<-paste0("Equipo.",1:10)
print(torneos) #Se imprime la matriz torneos

#La funcion paste0 concatena vectores y los convierte en caracter. 
#En el caso anterior concatena la palabra "Equipo." con cada uno de los 
#numeros del 1 al 10 y devuelve un vector de caracteres de longitud 10

#Supongamos que la matriz torneos representa el numero de juegos ganados 
#por cada equipo en los dias de la semana

#¿Cuantos juegos ganó el Equipo.6 en el dia Jueves?
#La respuesta se obtiene ejecutando el siguiente comando

torneos["Equipo.1","Jueves"]

#En total cuanto ganó cada equipo durante toda la semana?

rowSums(torneos) #la funcion rowSums suma cada una de los elementos de una fila

#¿En total cuantos juegos se ganaron cada día de la semana?

colSums(torneos) #colSums suma cada una de las entradas de una columna y lo aplica para todas las columnas

#Tambien vimos la funcion grep(pattern, x,...) esta funcion busca 
#cuales elementos del vector x coinciden con el argumento pattern.

#Otros ejemplos

mi.vector<-c("chocolates","helado de chocolate con fresa","helado de fresa")

grep(pattern="chocolate",mi.vector,value=FALSE) #nos dice que entradas de mi.vector
#contiene la palabra chocolate

grep(pattern="chocolate",mi.vector,value=TRUE) # Ahora se cambió el valor
#de value=TRUE y muestra los elementos que cumplen con la caracteristica.


