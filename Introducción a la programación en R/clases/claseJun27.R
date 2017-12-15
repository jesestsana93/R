############### FUNCIONES DE LA FAMILIA APPLY ###########################

set.seed(100)
s<-sample(1:100,500,replace=T)
x<-matrix(s,100,5)

apply(x,2,sum)
apply(x,2,x[4])

###### LAPPLY ###############

aplica la funcion a cada elemento de una lista y devuelve una lista

A<- matrix(3:11,3,3)
B<- matrix(6:17,4,3)
C<- matrix(10:12,3,2)

mi.lista<- list(A,B,C)

lapply(mi.lista,"[", ,2) #Los parametros despues de "[" son los parametros que recibe esta funcion

sapply(mi.lista,"[",2 ,2) #simplifica la salida de lapply a un vector siempre que es posible

F<- matrix(c(rep(2,4),rep(3,4),rep(5,4),rep(7,4)),4,4)
mapply(rep,c(2,3,5,7),4)

mapply(rep,c(2,3,5,7),4:1)

mapply(rep, times = 1:4, x = 4:1)

############una utilidad de la funcion lapply

nombre.de.lista <- lapply(nombres.archivos,leer)
tb16<- do.call(rbind,nombre.de.lista)
