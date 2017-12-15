####### FUNCION while ######

#esta funcion pide escribir el valor de pi hasta el cuarto decimal 
#y hasta que no se de la respuesta correcta la funcion se sigue ejecutando

ppi<-function(){
	R<-0 #inicializamos el valor de R
	while(R!=3.1415){
	cat("Escriba el valor de pi hasta el 4to decimal:\n")
	R<-readLines(n=1) #lee una linea(n=1) y guarda la respuesta en la variable R 
	R<-as.numeric(R) #convierte R en numerico
		if(R==3.1415)
		break  #termina la ejecucion de la funcion una vez que se de la respuesta correcta
		if(R > 3.1415){
		cat("Ese valor es muy alto\n")
		}else{
	cat("Ese valor es muy bajo\n")}
	}
	cat("El resultado es correcto\n")
}