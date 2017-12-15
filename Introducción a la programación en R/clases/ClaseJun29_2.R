demo(graphics) #muestra la variedad de gráficos en R
colors() #muestra los colores disponibles en R

#######GRAFICAS PARA DATOS CUANTITATIVOS ##########

plot(c(2,3,4),c(4,4.8,6),pch=21)

#Con el siguiente comando se generara una grafica "vacia" (con parametro type)
#el primer vector define los limites del eje x, y el segundo vector limites del eje y
plot(c(2,7),c(1,8),type="n",xlab="X",ylab="Y")
x<-c(2.7,3,4,5.6,7,4,6,5)
y<-c(4,3,8,6,3,5,2,3)
points(x,y)#traza los puntos

#Ahora se graficara un ajuste de regresion lineal  de los puntos
mi.linea<-lm(y ~ x) #modelo lineal (y explica los valores de x)
abline(mi.linea,col="red",lwd=2)#traza la recta mi.linea con grosor 2 y color rojo
mi.linea #muestra los datos (x e intercepto) con que se graficara la recta

#########GRAFICANDO LINEAS############

#Para graficar lineas o series de tiempo se usa la funcion lines(), aunque
#el paquete base tambien tiene una funcion especial para graficar 
#series de tiempo, con la funcion ts.plot()

#generamos dos vectores
x<-sample(2:27,30,replace=T)
y<-sample(3:50,30,replace=T)

plot(c(1,30),c(1,52),type="n",xlab="Eje X",ylab="Eje Y",col.lab="brown")
lines(x,type="b",col="blue",lwd=2)
#dashed indica linea punteada, tambien se puede poner numero 2, como abajo
lines(y,type="l",col="green",lwd=2,lty="dashed") 
title(main="Grafica de lineas",col.main="darkblue") #se añade titulo
legend("topleft",lty=c(1,2),lwd=2,col=c("blue","green"),
	legend=c("linea azul","linea verde"))
#El primer parametro de legend indica la posicion de la legenda,
#tambien se puede indicar con coordenadas "x" y "y"

legend(10,51,lty=c(1,2),lwd=2,col=c("blue","green"),
	legend=c("linea azul","linea verde"))


#######FUENTE Y TEXTO #################
#Las familias de fuente en R son sans,serif, mono y symbol
#Fuente tipo normal,bold e italica

plot(1:10,1:10,type="n",xlab="Eje X",ylab="Eje Y",col.lab="blue")
text(3,3,"Hola, fuente por default")
text(4,4,family="sans","Hola, fuente con sans",col="magenta")
text(5,5,family="mono","Hola, fuente con mono",col="chocolate")
text(6,6,family="serif","Hola, fuente con serif",col="green")
text(7,7,font=3,"Hola, fuente italica",col="skyblue")
text(8,8,"Hola, fuente con bold",col="purple")
title(main="Fuentes",col.main="red")
 
######GUARDANDO GRAFICOS ##########
#para guardar los graficos en R se puede hacer desde la pestaña de Archivo -> 
#o desde comando, se puede guardar en en formato pdf,png,jpg,postscript entre otros
#para los distintos formatos se hace con los siguientes comandos
#png("nombre.archivo.png")#se puede ver en la ayuda de R otros parametros como dimension,etc.
#jpeg("nombre.archivo.jpg")
#postscript("nombre.archivo.ps")

#En este ejemplo se guardara una grafica en formato pdf, cambiaremos algunos
#parametros que guarda la variable par(). Recordemos que al cambiar los 
#parametros, estos permaneceran en toda la sesion a menos que volvamos a 
#cambiar. 
x<-rnorm(10) #Generamos 10 num aleatorios de la distribucion N(0,1) normal
y<-rnorm(10)

pdf("MiGrafica.pdf") #se abre una ventana grafica
#con el parametro mar se define el margen(abajo,izquierda,arriba,derecha)
par(bg="lightyellow",col.axis="blue",mar=c(4,4,2.5,.5))
plot(x,y,xlab="Diez numeros al azar",ylab="Diez numeros",
	xlim=c(-2,2),ylim=c(-2,2),pch=22,col="green",bg="yellow",
	cex=1.5)
title(main="Mi primera grafica",col.main="darkcyan")
dev.off() #es necesario cerrar la ventana grafica 


#xlim y ylim definen el limite de los ejes x e y en el grafico










