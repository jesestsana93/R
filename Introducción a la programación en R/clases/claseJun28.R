######## CLASE 28 DE JUNIO 2017 ###########

#En esta clase se vio la graficacion con el paquete base de R
#dependiendo del tipo de datos (cualitativos o cuantitativos) que se tengan,
#en R se pueden hacer graficos de pastel, de barras, dispersion, histogramas
# o de caja (boxplot), entre otros.

#Para ver una demostracion de los graficos que se pueden hacer en R, ejecutamos
demo(graphics)
colors() #colores en R

#El siguiente comando devuelve una lista de los parametros que reciben las 
#distintas funciones de graficacion, se pueden observar los valores por default
par()
names(par()) #nombres de los parametros

#Primero veremos un ejemplo para graficar variables categoricas

#Hagamos la siguiente muestra
set.seed(19)
estaturas<-sample(140:180,100,replace=T)

#Supongamos que el vector estaturas guarda la estatura en centimetros de 
#100 personas, se quiere clasificar estos datos en categorias:"bajo","mediano",
#"alto" y "muy alto". Para esto haremos intervalos con la funcion cut
#los intervalos son: (139,150],(150,160],(160,170],(170,180]

#con breaks se indican los puntos de corte
estaturas2<-cut(estaturas,breaks=c(139,150,160,170,180)) 

#Ahora cambiemos los nombres de estas categorias 
levels(estaturas2)<-c("bajo","mediano","alto", "muy alto")

#Con la siguiente grafica se puede observar rapidamente la frecuencia de cada 
#categoria. El conjunto de datos que reciba barplot debe estar en tabla
barplot(table(estaturas2)) 

#Ahora pongamos un titulo y etiquetas a la grafica
barplot(table(estaturas2),main="Estatura de 100 personas",xlab="Estatura",
	ylab="Frecuencia absoluta")

#Ahora cambiemos color de las barras y color del titulo,ejes y etiquetas de ejes
barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")


#Ahora grafiqueos los mismos datos en una grafica de pastel

pie(table(estaturas2),main="Título de mi grafica",col.main="magenta")

#Ahora se quiere poner la grafica de pie y de barras en una misma ventana,
#para ello hay que cambiar el parametro mfrow

par(mfrow=c(1,2))#mfrow recibe un vector que indica c(num.filas,num.columnas)

barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")

pie(table(estaturas2),main="Título de mi grafica",col.main="magenta")

#Ahora con 4 graficos en la misma ventana

par(mfrow=c(2,2))#Note que mfrow acomoda por filas

barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas 1",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")

pie(table(estaturas2),main="Título de mi grafica 1",col.main="magenta")

barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas 2",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")

pie(table(estaturas2),main="Título de mi grafica 2",col.main="magenta")

#Ahora acomodemos por columnas con mfcol

par(mfcol=c(2,2))#Note que mfrow acomoda por columnas

barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas 1",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")

pie(table(estaturas2),main="Título de mi grafica 1",col.main="magenta")

barplot(table(estaturas2),col="lightcyan",main="Estatura de 100 personas 2",
	col.main="darkblue",col.lab="blue",xlab="Estatura",col.axis="brown",
	ylab="Frecuencia absoluta")

pie(table(estaturas2),main="Título de mi grafica 2",col.main="magenta")








