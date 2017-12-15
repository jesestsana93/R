######### CLASE 7 (21/junio/2017) #############
###############################################

#Funciones basicas del paquete dplyr

#R tiene muchos conjuntos de datos disponibles
library(help="datasets") #para ver lista de conjuntos de datos

#para esta clase usaremos el conjunto de datos mtcars

#Descripcion de las variables

#1.mpg: Miles/(US) gallon
#2.cyl: Number of cylinders
#3.disp: Displacement (cu.in.)
#4.hp: Gross horsepower
#5.drat: Rear axle ratio
#6.wt: Weight (1000 lbs)
#7.qsec: 1/4 mile time
#8.vs: V/S
#9.am: Transmission (0 = automatic, 1 = manual)
#10.gear: Number of forward gears
#11.carb: Number of carburetors

autos<-mtcars

View(autos) #abre una nueva ventana para visualizar los datos 
head(autos) #muestra las primeras 6 filas u observaciones de autos
# o head(autos,3) muestra 3 observaciones
tail(autos) #muestra las ultimas 6 observaciones de autos
nrow(autos) #muestra el num de filas del data frame autos
ncol(autos) #muestra el numero de columnas

str(autos) #da las caracteristicas del data frame autos: clase y num de variables

# Ahora empezaremos a ver las funciones basicas y muy utiles de dplyr
#ES NECESARIO CARGAR EL PAQUETE dplyr una vez instalado

library(dplyr)

#FUNCION select:regresa un subconjunto de columnas de un data frame. Por ejemplo

select(autos,1:5) #se muestran las 32 filas de autos pero solo las columnas 1 a 5

#Ahora solo se quieren mostrar las primeras 10 filas del conjunto anterior
	head(select(autos,1:5),10)

#tambien se pueden usar los nombres de las variables, por ejemplo:
	head(select(autos,mpg:disp)) 
#O bien todas las columnas excepto mpg,disp y vs
	head(select(autos,-(c(mpg,disp,vs))))
#o todas las columnas excepto mpg hasta disp
	head(select(autos,-(mpg:disp)))

#Notar que no es necesario usar el operador $ para usar las variables

#FUNCION filter:extrae un subconjunto de filas de un data frame basado en condiciones logicas
	autos.hp<-filter(autos,hp>200) #extrae las filas que cumplan con la condicion hp>200 
	autos.hp
#si queremos filtrar los que cumplan hp>200 y los autos sean automaticos, ejecutamos
	datos.hpa<-filter(autos, hp>200 & am==0)
	datos.hpa
	
#FUNCION arrange: reordena filas de un data frame

#El sig. comando ordena el data frame autos de acuerdo a como esté ordenada la variable hp
	autos<- arrange(autos,hp)
head(autos) #se observa que la variable hp está ordenada de manera creciente

#es decir, ordena la variable hp de manera creciente y de acuerdo a eso 
#ordena las otras columnas sin alterar las observaciones.
#Para ordenar hp de manera descendente usamos la funcion descending. Ejemplo:
	autos<-arrange(autos,desc(hp))
	head(autos) #ahora hp está ordenada de manera decreciente

#FUNCION rename: renombra las variables
autos<-rename(autos, horse.p = hp) #ahora la variable hp se llamará horse.p
names(autos) vemos que ya cambió el nombre de la variable hp

#Ahora se quiere cambiar el nombre de la variable horse.p a h.power y la variable am a aut/man
autos<-rename(autos,h.power = horse.p, aut.man=am)
names(autos) #ya cambiaron los nombres de las variables am y hp
	
#FUNCION mutate: agrega nuevas variables (columnas) o transforma las variables existentes
#agregaremos una variable llamada mpg.t que será la variable mpg menos su media 
autos<-mutate(autos,mpg.t = mpg-mean(mpg)) #ahora hay 12 columnas

#ahora agregaremos otra columna llamada cyl.f que será la variable cyl
#pero como variable cualitativa, es decir la convertiremos en factor
	autos<-mutate(autos,cyl.f = factor(cyl)) #ahora hay 13 columnas

#FUNCION group_by: Agrupa los datos de un data frame y con ello se puede 
#obtener un resumen estadistico de cada categoria o estrato. Ejemplo
#Agrupamos los datos de autos de acuerdo a la variable cualitativa carb.f

	cyl.factor<-group_by(autos,cyl.f)
	
#Ahora obtenemos un resumen estadistico de carb.factor. Por ejemplo

summarize(cyl.factor,mpg=mean(mpg),carb=min(carb))

#Devuelve 3 columnas con los nombres que pusimos y 3 observaciones,
#la primera fila nos da el minimo de carburadores y media de mpg para los autos con 4 cilindros
#la segunda fila da el minimo de carburadores y media de mpg para los autos con 6 cilindros
#Analogamente con la tercera fila

#FUNCION summarize: genera un resumen estadistico de las variables del data frame

####EN TODAS LA FUNCIONES DE dplyr EL PRIMER PARAMETRO ES EL NOMBRE DEL DATA FRAME ####

