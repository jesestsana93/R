#El paquete ggplot2 es un nuevo sistema de graficacion basado en la 
#gramatica de graficos. Automaticamente trata con espacios, texto y titulos.

#ggplot2 combina lo mejor del paquete base y el paquete 
#lattice (para datos multivariados). Como parte de su filosofia gramatica, 
#ggplot2 se compone de aesthetics(atributos tales como size, shape, color) y 
#geoms(points, lines, y bars).

#ggplot2 tiene dos funciones de caballo de batalla: qplot y ggplot
#qplot es el mas basico y trabaja como la funcion plot del paquete base.
#Puede realizar varios tipos de graficos (histogramas, diagramas de caja y brazos, 
#graficas de dispersion)

#primero veremos como trabaja qplot, para esto usaremos el data frame mpg 
#que contiene datos de 38 modelos de autos fabricados entre 1999 y 2008

library(ggplot2) #una vez instalado ggplot2 hay que cargarlo
str(mpg) #veamos que contiene mpg

#supongamos que queremos ver si hay una correlacion entre displ y hwy

qplot(displ,hwy,data=mpg) #en los dos primeros parametros van las variables 

#y hay que especificar el nombre del data frame

#el primer argumento se muestra en el eje X y el segundo en el eje Y
#Se puede ver que hay una tendencia negativa, es decir, 
#mientras displ aumenta hwy baja

#Ahora supongamos que queremos ver lo mismo pero distinguiendo entre tres 
#factores (diferentes tipos de drv)

qplot(displ,hwy,data=mpg,color=drv) #solo se agrega el cuato argumento (color)

#Ahora agregaremos un quinto argumento para producir una linea de tendencia
qplot(displ,hwy,data=mpg,color=drv,geom=c("point","smooth")) 

#lo anterior regresa una linea de tendencia de acuerdo a cada factor y 
#un intervalo del 95% de confianza 

####### BOXPLOTS ########

#Ahora llamamos qplot con 4 argumentos para hacer una grafica de caja y 
#brazos por cada factor de drv
qplot(drv,hwy,data=mpg,geom="boxplot")

#Agreguemos un quinto argumento (color)
qplot(drv,hwy,data=mpg,geom="boxplot",color=manufacturer)

#Se puede ver que hay tres regiones de graficas, una por cada factor de drv
#cada region esta dividida en varios boxplot, uno por fabricante 

########## HISTOGRAMAS ###################

#los histogramas muestran la frecuencia de los datos para una sola variable,
#primero especificamos la variable que queremos ver su frecuencia, luego 
#el data frame y agregamos el aesthetic fill.

qplot(hwy,data=mpg,fill=drv)

#el grafico muestra la frecuencia para cada factor de drv con un color, 
#se puede ver que los autos con drv=4-wheel no exceden  de 30 hwy

#Ahora grafiquemos de nuevo la grafica de dispersion de displ y hwy por cada 
#categoria de drv pero ahora en diferentes paneles

qplot(displ,hwy,data=mpg, facets= . ~ drv)

qplot(hwy,data=mpg,facets=drv ~ .) #ahora el histograma por cada categoria 
3de drv en cada panel
