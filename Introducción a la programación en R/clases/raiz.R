#La siguiente funcion recibe como parametro 3 numeros que seran los coeficientes 
#de una ecuacion de segundo grado y devuelve las raices.

raiz<-function(a,b,c){
	d<-b^2-4*a*c
	if(d>0){
		#cat imprime la linea entre "" y \n hace el salto de linea
		cat("Las raices son reales y son:\n")  
		x1<-(-b+sqrt(d))/2*a
		x2<-(-b-sqrt(d))/2*a
		print(c(x1,x2))
	}	
	if(d<0){
		cat("Las raices con complejas y son:\n")
#se debe convertir el discriminante a complejo para que se realize la operacion	
		x1<-(-b+sqrt(as.complex(d)))/2*a 
		x2<-(-b-sqrt(as.complex(d)))/2*a
		print(c(x1,x2))
	}
	if(d==0){
		print("La raiz es: ")
		x1<-(-b+sqrt(d))/2*a
		print(x1)
	}
#Note la diferencia entre cat y print	
}


#este archivo se puede cargar en la consola de R con
#source("raiz.R") 
#el parametro que recibe source es el nombre del archivo, no de la funcion.
#el nombre de la funcion sirve para ejecutar dicha funcion en la consola
#raiz(1,4,4)
#raiz(1,4,2)
#raiz(1,4,6)