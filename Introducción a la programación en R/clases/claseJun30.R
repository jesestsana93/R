#Para los ejemplos de esta clase se usan datos de calidad del aire 
#incluidos en el paquete base

data(airquality) #se cargan los datos 
str(airquality) #viendo las caracteristicas del data frame

#para graficar la distribucion de frecuencias de una variable cuantitativa se 
#usa la funcion hist(). Ejemplo:

	hist(airquality$Ozone) #grafica el histograma de la variable Ozone

#A veces, para ver mejor como se distribuyen los datos es necesario agregar 
#el parametro breaks, checar la ayuda de R.

#########################################################################

#otra funcion para graficar con el paquete base es la funcion with
#con esta funcion se puede usar como parametros los nombres de las variables
#el ejemplo anterior se haria de la siguiente forma

	with(airquality,hist(Ozone))

#Ahora una grafica de dispersion

	with(airquality,plot(Wind,Ozone))


#Para graficar graficas de caja y brazos se usa la funcion boxplot
#Por ejemplo:

	boxplot(airquality$Ozone)

#Ahora se hara una grafica de boxplot de la variable Ozone pero por cada mes
#primero se convierte la columna Month a factor
airquality<-transform(airquality,Month=factor(Month))
boxplot(Ozone ~ Month, airquality, xlab="Month",  ylab="Ozone")

#Ahora se quiere ver la relacin entre las variables Wind y Ozone en el mes 
#de mayo y comparar esta misma relacion pero para los otros meses
#para ello se hara una grafica de dispersion para los meses correspondientes

with(airquality,plot(Wind,Ozone,type="n",main="Ozone and Wind")) #primero se hace la grafica vacia

#Ahora se agregan los puntos deseados
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))
legend("topright",pch=1,col=c("blue","red"),legend=c("Mayo","Otros meses"))

######################### CURVAS #########################

#Para graficar curvas usamos la funcion curve()
#grafiquemos la funcion seno de 0 a 2pi
curve(sin(x),from=0,to=2*pi,xaxt="n",col="blue",lwd=2) #xaxt="n" es para no etiquetar el eje X
#se etiqueta el eje X pero en notacion matematica usando la funcion expression
axis(1, at=c(0,pi,2*pi),labels=c(expression(0,pi,2*pi)))
#agregamos una linea roja en y=0 para con:
abline(h=0) #se agrega una linea horizontal(h) en y=0

#ahora se agregara la curva de sin(2x), para ello es importante el parametro 
#add=TRUE y se graficara sobre los mismos limites del eje X de la curva anterior
curve(sin(2*x),add=TRUE,col="red",lty="dashed",lwd=2)

#Otro ejemplo. Definimos la sig funcion

mifun <- function(x) {
1/(1 + exp(-x + 10))
}

curve(mifun(x), from=0, to=20) 
title(main=expression(paste("Grafica de: ",f = over(1, 1 + exp(-x + 10)))))

# agrega otra curva
curve(1-mifun(x), add = TRUE, col = "red")


