################ LISTAS ##############################

#Las listas son colecciones ordenadas de objetos conocidos 
#como sus componentes # Ejemplo

familia<-list(padres=c("Julio","Sandra"),hijos=c("Luis","Ana"),
	 edadHijos=c(22,28),mascotas=c("perro","gato"))

# Ojo!! las componentes pueden ser de distintas clases

#Se puede extraer elementos individuales de la lista

	familia$padres #O bien familia[[1]]

	familia[4]

#Para acceder al primer elemento del vector padres

	familia$padres[1] #O bien familia[[1]][1]

	familia$edadHijos[2] #para accdecer la edad del 2do hijo

#Se puede extender la lista agregando componentes.Ejemplo

	familia$mascotas<-c("Perro","Gato1","Gato2") #sustituye todo lo que contenia mascotas

	familia$mascotas[4]<-"Gato3" #agrega cuarta mascota

	familia$edadPadres<-c(63,64) #agrega otro elemento a la lista que se llama edad Padres

	familia$hijos[3]<-"Alex" #agregamos un tercer hijo

# O eliminar componentes de la lista, quitemos la cuarta componente
	familia<-familia[-4]
	familia$hijos<-familia$hijos[-3] #elimina el tercer elemento de la componente hijos

#Se puede concatenar listas con la funcion c()
#Por ejemplo, hacemos una segunda lista llamada familia2

familia2<-list(padres2=c("Juan","Luisa"),hijos2=c("Pepe","Enrique"),
	 edadHijos2=c(19,24),mascotas2=c("tortuga"))

familias<-c(familia,familia2) #concatenamos familia y familia2
 

