######## CLASE 9 ###############
#En esta clase veremos otro paquete para leer y escribir archivos en excel.

install.packages("XLConnect")
library(XLConnect) #carga la biblioteca XLConnect al area de trabajo

datos<-matrix(1:25,5,5)
colnames(datos)<-paste0("C",1:5)

#Para escribir datos en un archivo excel se siguen 4 pasos:

#1.Se carga el archivo "Datos.xlsx" al area de trabajo, 
#en caso de que no exista se crea (por eso el segundo parámetro create=T)

	archivo<-loadWorkbook("Datos.xlsx",create=T)

#2.Se crea un nuevo libro en el archivo cargado o creado en el paso anterior

	createSheet(archivo,name="MiLibro")

#3.Se escriben los datos en archivo, como segundo parametro va el nombre del 
#objeto a escribir, tercer parametro el nombre del libro, cuarto parametro la
#fila en que queremos que se empiece a escribir, y quinto parametro la 
#columna en que empieza.


	writeWorksheet(archivo,datos,sheet="MiLibro",startRow=2,startCol=3)

#4.Por ultimo guardamos lo que acabamos de hacer en archivo

	saveWorkbook(archivo)

######## LEER ARCHIVO EXCEL #####
#Ahora vamos a leer los datos que creamos anteriormente, 
#para ello se siguen 2 pasos:

#1.Cargamos el archivo que se quiere leer

	archivo<-loadWorkbook("Datos.xlsx")

#2.Leemos el libro que queremos

#Si los datos que queremos leer empiezan en fila 1 y columna A, 
#se ejecuta el siguiente comando

	mis.datos<-readWorksheet(archivo,sheet="MiLibro")

#Si no tenemos el caso anterior, como el libro que creamos antes, 
#entonces hay que especificar la fila y columna donde empiezan.
#Recordemos que en "MiLibro" empieza en fila 2 y columna 3

	mis.datos<-readWorksheet(archivo,sheet="MiLibro",startRow = 2, 
		startCol = 3)


#NOTA: para las funciones de esta biblioteca header = TRUE por default,
es decir, siempre tomará la primera fila como nombres de las columnas 
#al leer y escribir datos.

#Si van a leer archivos grandes de excel es mejor guardarlos con 
#extensión .csv y despues leerlos, ya que leer datos desde excel suele ser
#muy lento. Lo mas recomendable es leer archivos de texto plano 
#o en su defecto .csv

