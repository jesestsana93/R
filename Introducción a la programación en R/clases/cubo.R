#en R podemos crear nuestras propias funciones usando function,
#esta funcion recibe los parametros que se utilizaran en la accion de 
#nuestra funcion
#por ejemplo, la siguiente funcion recibe como parametro un objeto a y 
#lo eleva al cubo, si se ejecuta cubo(2) devolvera 8

cubo<-function(a){
	a^3}


#estas funciones podemos definirles un valor por defecto
#por ejemplo, en la siguiente funcion, siempre que se ejecute cubo() 
#nos devolvera 1, 


cubo<-function(a=1){
	a^3}
