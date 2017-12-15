#Clase 3

rep(c(2,6),c(2,9))
rep(c(2,6),7)
rep(c(2,6,4),c(2,9,3))

#Ejercicio 1
rep(c(4,6,3),10)
rep(c(4,6,3),c(10,20,30))

#Ejercicio 2
 n<-1:45
 n
suc<-n*(n+1)/2
suc

#Ejercicio 3
 n<-1:60
 suc_2<-n*(n+1)*(2*n+1)/6
 suc_2

#Ejercicio 4
 x<-seq(3,6,0.1)
 x
 suc<-exp(x)*cos(x)
 suc

#Ejercicio 5
Calcular la suma de i=10 a 100 de i cubica + 4 icuadrada
 i<-seq(10,100)
 c<-(i^3+4*i^2)
 sum(c)


 x<-c(2,5,6,7)+c(6,2,7,9)
 x

 x<-c(2,5,6,7)-c(6,2)
 x 

 x<-c(2,5,6,7)*c(6,2)
 x

 x<-c(2,5,6,7)/c(6,2)
 x

 #Operacion modulo
 x<-seq(3,200)
 x%%2==0
 which(x%%2==0)
 which(x%%2==1)

 v<-which(x%%2==0)
 x[v]

#Matrices
x<-seq(3,16)
length(x)
#dim(x)<-c(filas,columnas)
dim(x)<-c(2,7)
class(x)

x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5) #diag(tamaño)

x<-diag(5) #matriz identidad
x[2,1]<-5
x

x[,4]<-c(2,5,1,8,9)
x

x<-matrix(1:12,6,2)
x

x<-matrix(1:12,6,2,byrow=TRUE)
x

x<-matrix(c(2,1,9,2,5,1),2,3,byrow=TRUE)
x

x<-matrix(c(2,1,9,2,5,1),2,3)
x

matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz

matriz<-cbind(c(2,4,5),c(-3,1,-9))
matriz

 #Multiplica la segunda fila por 5
 matriz[2,]<-matriz[2,]*5
matriz

x
x%*%matriz #producto de matrices (la misma)

mat<-cbind(matriz,c(2,3,5))
mat
det(mat)  #determinante de la matriz

matriz
t(matriz) #transpuesta de la matriz

matriz.1<-t(matriz)
matriz.1
x
matriz.1+x
matriz.1-x


sample(1:15,5)
sample(1:15,17,replace=TRUE)

x<-sample(23:500,30,replace=TRUE)
x

#Para establecer un valor(semilla)
set.seed(10)
x<-sample(23:500,30,replace=TRUE)
x
