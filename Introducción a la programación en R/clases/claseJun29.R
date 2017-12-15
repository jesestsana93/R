set.seed(19)
estaturas<-sample(140:180,100,replace=T)

#####CLASE 29 DE JUNIO 2017 ########
 #####COLORES ######
#para esta clase se usaran los datos generados en la clase del 28 de junio

set.seed(19)
estaturas<-sample(140:180,100,replace=T)
estaturas2<-cut(estaturas,breaks=c(139,150,160,170,180))  
levels(estaturas2)<-c("bajo","mediano","alto", "muy alto")

#Haremos una grafica de barras para mostrar los distintos colores que 
#nos ofrece el paquete base de R. Ademas de los colores que tenemos con colors()
#hay colores en rgb, con esta funcion se elige la proporcion de los 
#colores rojo,verde y azul, i.e. rgb(rojo,verde,azul) la proporcion va de 0 a 1
#Ejemplo: 

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=rgb(.2,.4,.8))

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=rgb(1,0,.8))

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=rgb(1,0,0))

#Ademas hay paletas de colores: heat.colors(n,alpha),topo.colors(n,alpha)
#n es para indicar el numero de colores que queremos de la paleta y con alpha 
#escogemos la intensidad, alpha = [0,1]
#Ejecutar codigo y cambiar valor de los parametros n y alpha 
#para ver la diferencia

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=heat.colors(4,alpha=.8))

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=heat.colors(7,alpha=.4))

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=topo.colors(4,alpha=.8))


#Ademas de estos colores tambien existe el paquete RColorBrewer que ofrece 
#paletas especiales de colores secuenciales o para datos cualitativos

install.packages("RColorBrewer")
library("RColorBrewer")
??RColorBrewer #para ver parametros y nombres de paletas

#usamos el mismo ejemplo de arriba

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=brewer.pal(4,"BuGn"))

#En este caso nuestros datos son categoricos, asi que usaremos la paleta adecuada

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=brewer.pal(4,"Pastel1"))

#ver mas en la ayuda de R para esta biblioteca, hay muchas paletas para escoger

barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta",col=brewer.pal(4,"Accent"))



