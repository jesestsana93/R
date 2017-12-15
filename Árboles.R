library(tree)
library(ISLR)
library(randomForest)

#Cargar los datos
data(Carseats)

#Vistazo a los datos
str(Carseats)

#Categorizar la variable Sales
Alto<-ifelse(Carseats$Sales<=8, "No", "Si")

#Le pegamos la variable datos
Carseats<- data.frame(Carseats, Alto)

#El arbol
arbol<- tree(Alto~. -Sales, data = Carseats)   #Relaciona la variable Alto con todos los otros datos "~.", si solo fuera "~" solo tomaría el dato próximo de su derecha

#Grafica del árbol
plot(arbol)
text(arbol, pretty = 0)

#Obteniendo predicciones
set.seed(2)
train<- sample(1:nrow(Carseats), 200)
test<- Carseats[-train,]  #Es una matriz, por eso toma todas las columnas
test.labels <- Carseats$Alto[-train] #Pues Carseats$Alto solo es un vector

arbol<- tree(Alto ~.-Sales, data= Carseats, subset= train)

predicciones <- predict(arbol, test, type ="class")


#Matriz de conf

conf<- table(real= test.labels, predicciones)

sum(diag(conf))/sum(conf)


summary(arbol)

#Podando el árbol
cv.arbol <- cv.tree(arbol, FUN=prune.misclass)
cv.arbol

arbol.podado <- prune.misclass(arbol, best = 9)
plot(arbol.podado)
text(arbol.podado, pretty = 0)

predicciones <- predict(arbol.podado, test, type = "class")

conf<- table(real = test.labels, predicciones)
sum(diag(conf))/sum(conf)

##Usando randomForest
set.seed(4)
rf<- randomForest(Alto~.-Sales, data=Carseats, subset = train, mtry = 6, ntree= 10) #ntree= número de árboles en bosque

predicciones <-predict(rf, test, type = "class")
conf <- table(test.labels, predicciones)

sum(diag(conf))/sum(conf)
