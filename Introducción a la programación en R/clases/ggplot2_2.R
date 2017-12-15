########### FUNCION GGPLOT ##################
#recordemos la funcion plot
qplot(displ,hwy,data=mpg,geom=c("point","smooth"))
qplot(displ,hwy,data=mpg,geom=c("point","smooth"),facets= . ~ drv)


#ahora veamos como hacer lo mismo con ggplot. Esto se hace en una serie de pasos
g<-ggplot(mpg,aes(displ,hwy)) #aqui solo se guardan en la variable g los datos
#que se usaran pero aun no indicamos que se haran con ellos

summary(g) #vease el resultado

g+geom_point() #ahora se agregan los puntos con los datos que guarda g

g + geom_point() + geom_smooth() #se agrega la ultima funcion para graficar 
#una linea de tendencia y banda de confianza. Ahora agreguemos un argumento a la
#funcion geom_smooth

g + geom_point() + geom_smooth(method="lm")#con el argumento agregado 
#el suavizamiento se hace con un modelo lineal

#ahora se hara lo mismo pero por cada factor de drv un panel
g + geom_point() + geom_smooth(method="lm") + facet_grid(. ~ drv)

#Agreguemos ahora argumentos a geom_point

g + geom_point(color="pink",size=4,alpha=1/2) 

#lo anterior da como resultado una grafica de dispersion de displ y hwy, 
#los circulos son de color rosa con alpha=1/2, esto ultimo indica la 
#transparencia de los puntos. Asi los circulos mas obscuros indican que 
#hay varios datos en esos puntos.

#Ahora diferenciemos los puntos por cada factor de drv
g + geom_point(aes(color=drv),size=4,alpha=1/2)

#cambiemos etiquetas a los ejes
g + geom_point(aes(color=drv),size=4,alpha=1/2)+
	labs (x="Displacement", y="Hwy Mileage")

#tambien podemos cambiar el tema o fondo del grafico

g + geom_point(aes(color=drv)) + theme_bw(base_family="Times")

##################################################################

#Ahora veamos algo interesante que se hace con los limites de los ejes.
#para eso hagamos el sig data frame, introduciendo un outlier o valor atipico

datos <- data.frame(x = 1:100, y = rnorm(100))
datos[50,2] <- 100  # Outlier
miX <- datos$x
miY <- datos$y

g<-ggplot(data=datos,aes(x=miX,y=miY))
g + geom_line() #se ve que el punto(50,100) es el valor atipico

#agreguemos limite del eje y pero con plot para ver que sucede con el outlier
plot(miX,miY,type="l",ylim=c(-3,3))

#Ahora con ggplot

g + geom_line() + ylim(-3,3) #en este caso ggplot solo ignora el outlier y 
#no lo dibuja. Esto está muy padre porque podemos "quitar" los valores
#atipicos de la grafica sin tener que quitarlos de los datos

#En caso de que queramos graficar el outlier añadimos otra funcion

g + geom_line() + coord_cartesian(ylim=c(-3,3))








