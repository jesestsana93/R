######### SOLUCION Tarea 1 #######

#Ejercicio 1
i<-1:25
suma<-sum((2^i)/i+(3^i)/(i^2))

#Ejercicio 2

A<-matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3)
A
A%*%A%*%A
A[,3]<-A[,2]+A[,3]
A

#Ejercicio 3

set.seed(13)
libros.vendidos<-sample(0:358,144,TRUE)
libreria<-matrix(libros.vendidos,12,12,byrow=TRUE)
colnames(libreria)<-as.character(2001:2012)
rownames(libreria)<-paste0("suc",1:12)
libreria

#Preguntas
 
#Durante los 12 años ¿qué sucursal ha vendido más libros?
which(rowSums(libreria) == max(rowSums(libreria)))
which.max(rowSums(libreria)) #Equivalente a la linea anterior

#Durante los 12 años ¿qué sucursal ha vendido menos libros?
which(rowSums(libreria) == min(rowSums(libreria)))
which.min(rowSums(libreria)) #Equivalente a la linea anterior

#¿En qué año se vendieron más libros de cálculo?
which(colSums(libreria) == max(colSums(libreria)))
which.max(colSums(libreria)) #Equivalente a la linea anterior

#Entre las sucursales 1,5,8 y 12 ¿en total cuántos libros vendieron en 2008?
total08<-sum(libreria[c(1,5,8,12),"2008"])
total08

#¿En qué año la sucursal 3 vendió más libros de cálculo?
which(libreria["suc3",]==max(libreria["suc3",]))
which.max(libreria["suc3",]) #Equivalente a linea anterior

