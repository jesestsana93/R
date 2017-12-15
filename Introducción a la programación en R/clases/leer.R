#esta es una funcion para leer las hojas 1 y 2 de un archivo excel, 
#extrae la columna 1 de cada hoja y devuelve la resta de estas columnas

leer<-function(a,b){
	hoja1<-read.xlsx(a,1,header=T,
	stringsAsFactor=F)

	hoja2<-read.xlsx(b,2,header=T,
	stringsAsFactor=F)

	hoja1$C1-hoja2$C1
	}



