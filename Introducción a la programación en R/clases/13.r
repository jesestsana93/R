precisiones[i]<-sum(diag(conf)/sum(conf))
}
plot(k,precisiones,type = "l")#Conviene tomar la k para las cuales la presiciòn sea la mayor
k<-1:50
precisiones<-numeric(50)
for(i in k){
predicciones<-knn(iris.train,iris.test,iris.train.labels,i)
conf<-table(iris.test.labels,predicciones)
precisiones[i]<-sum(diag(conf)/sum(conf))
}
plot(k,precisiones,type = "l")#Conviene tomar la k para las cuales la presiciòn sea la mayor
which(precisiones==max(precisiones))
getwd()
cancer<-read.table("C:/Users/usuario/Documents/Aprendizaje Supervisado/cancer.txt")
head(cancer)
sumary(cancer)
summary(cancer)
?read.table
cancer<-read.table("C:/Users/usuario/Documents/Aprendizaje Supervisado/cancer.txt",header=FALSE,sep=",")
head(cancer)
str(cancer)
table(iris$V2)
table(cancer$V2)
table(cancer$V2)
head(cancer)
tail(cancer)
n<-nrow(cancer)
cancer<-cancer[sample(n),]#me agarra las n filas de la base tomadas aleatoriamente
head(cncer)#Ya està desordenada
head(cancer)#Ya està desordenada
grafica<-ggplot(data=cancer,aes(x=V1,y=V3,col=V2))
grafica+geom_point#Vemos que hay una correlaciòn positiva entre pl y PW
boxplot<-ggplot(data=cancer,aes(x=V1,y=V3))
boxplot+geom_boxplot()
library(class)#Tiene funciòn para usar k-vecinos màs cercanos
normaliza<-function(x){
return((x-min(x))/(max(x)-min(x)))
}
normaliza(c(1,2,3,4,5))
str(cancer)
cancer.n<-data.frame((apply(cancer[,3:32],2,normaliza)))
head(cancer.n)
cancer[,1,2]
cancer.n<-data.frame((apply(cancer[,3:2],2,normaliza)))
cancer.n<-data.frame((apply(cancer[,3:3],2,normaliza)))
cancer.n<-data.frame((apply(cancer[,3:32],2,normaliza)))
head(cancer.n)
str(cancer)
cancer.train<-cancer.n[1:568,]#Tomo los primero 149 renglones para mi grupo entrenamiento
cancer.test<-cancer.n[569,]#Tomo el ùltimo renglòn para mi prueba
str(cancers.n)#Ya no tiene la variable categorica
str(cancer.n)#Ya no tiene la variable categorica
str(iris)
str(cancer)
cancer.train.labels<-iris[1:568,32]
cancer.test.labels<-iris[569,32]
predicciones<-knn(cancer.train,cancer.test,cancer.train.labels,94)#El mìnimo valor de k es 1 y el màx en este caso es 149
predicciones<-knn(cancer.train,cancer.test,cancer.train.labels,40)#El mìnimo valor de k es 1 y el màx en este caso es 149
cancer.train<-cancer.n[1:568,]#Tomo los primero 149 renglones para mi grupo entrenamiento
cancer.test<-cancer.n[569,]#Tomo el ùltimo renglòn para mi prueba
str(cancer.n)#Ya no tiene la variable categorica
cancer.train.labels<-iris[1:568,32]
cancer.test.labels<-iris[569,32]
predicciones<-knn(cancer.train,cancer.test,cancer.train.labels,40)#El mìnimo valor de k es 1 y el màx en este caso es 149
iris[,2,3]
head(iris)
rep(c(2,6),c(2,9))
rep(c(2,6),7)
rep(c(2,6),c(2,9))
rep(c(2,6),7)
rep(c(2,6,4),c(2,9,3))
rep(c(2,6,4),c(2,9))
rep(c(4,6,3),10)
rep(c(4,6,3),c(10,20,30))
n<-1:45
n
suc<-n*(n+1)/2
suc
n<-1:60
suc_2<-n*(n+1)*(2*n+1)/6
suc_2
x<-seq(3,6,0.1)
x
suc<-exp(x)*cos(x)
suc
i<-seq(10,100)
i^3+4*i^2
i
c<-(i^3+4*i^2)
sum(c)
save.image("C:\\Users\\usuario\\Documents\\clase3")
save(a,file="clase3.RData")
x<-c(2,5,6,7)+c(6,2,7,9)
x
x<-c(2,5,6,7)+c(6,2,7,9)
x
x<-c(2,5,6,7)*c(6,2)
x
x<-c(2,5,6,7)-c(6,2,7,9)
x
x<-c(2,5,6,7)*c(6,2)
> x
x<-c(2,5,6,7)*c(6,2)
x<-c(2,5,6,7)*c(6,2)
x<-c(2,5,6,7)/c(6,2)
x
x<-seq(3,200)
x
x%%2==0
which(x%%2==0)
which(x%%2==1)
v[200]
v<-which(x%%2==0)
x[v]
x<-seq(3,16)
length(x)
x
dim(x)<-c(2,7)
class8x)
class(x)
#Matrices
x<-seq(3,16)
length(x)
dim(x)<-c(2,7)
class(x)
dim(x)<-c(2,7)
dim(x)<-c(2,2)
x
dim(x)<-c(2,2)
x-<seq(0,0)
x<-seq(0,9)
dim(x)<-c(2,2)
x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5)
x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5)
#Matrices
x<-seq(3,16)
length(x)
#dim(x)<-c(filas,columnas)
dim(x)<-c(2,7)
class(x)
x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5)
x[2,1]<-5
x
x[,4]<-c(2,5,1,8,9)
#Matrices
x<-seq(3,16)
length(x)
#dim(x)<-c(filas,columnas)
dim(x)<-c(2,7)
class(x)
x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5)
x[2,1]<-5
x
x<-diag(5)
x
x[2,1]<-5
x
x[,4]<-c(2,5,1,8,9)
x
#Matrices
x<-seq(3,16)
length(x)
#dim(x)<-c(filas,columnas)
dim(x)<-c(2,7)
class(x)
x<-vector("numeric",length=4)
x
dim(x)<-c(2,2)
x
diag(5)
x<-diag(5)
x[2,1]<-5
x
x[,4]<-c(2,5,1,8,9)
xx[,4]<-c(2,5,1,8,9)
x[,4]<-c(2,5,1,8,9)
x
x[,4]<-c(2,5,1,8,9)
x
x<-matrix(1:12,6,2)
x
x<-matrix(1:12,6,2,byrow=TRUE)
x
x<-matrix(c(2,1,9,2,5,1),2,3,byrow=TRUE)
x
x<-matrix(c(2,1,9,2,5,1),2,3)
x
matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz
matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz
matriz<-cbind(c(2,4,5),c(-3,1,-9))
matriz
matriz[2,]<-matriz[2,]*5
matriz
x
x%%matriz
x%*%matriz
matriz<-rbind(c(2,4,5),c(-3,1,-9))
matriz
matriz<-cbind(c(2,4,5),c(-3,1,-9))
matriz
#Multiplica la segunda fila por 5
matriz[2,]<-matriz[2,]*5
matriz
x
x%*%matriz #producto de matrices
mat<-cbind(matriz,c(2,3,5))
mat
det(mat)
t(matriz)
mat
mat
det(mat)
t(matriz)
matriz
mat
det(mat)
matriz
t(matriz)
matriz.1<-t(matriz)
matriz.1
x
matriz.1+x
matriz.1-x
?sample
sample(1:15,5)
sample(1:15,17,replace=TRUE)
x<-sample823:500,300,replace=TRUE)
x<-sample823:500,300,replace=TRUE)
sample(1:15,5)
sample(1:15,17,replace=TRUE)
x<-sample(23:500,30,replace=TRUE)
x
set.seed(10)
x<-sample(23:500,30,replace=TRUE)
x
x<-sample(23:500,30,replace=TRUE)
x
q()
q()
library(ISLR)
library(MASS)
library(ISLR)
acciones<- read.table(file.choose(),sep=",")
View(acciones)
datos<-acciones[-1,]
View(datos)
summary(datos)
train<-datos[1:883,]
lda<-lda(Direction~V1+V2,train)
predicciones<-predict(lda,test,type="class")
lda<-lda(V9~V1+V2,train)
train<-datos[2:883,]
lda<-lda(V9~V1+V2,train)
View(acciones)
datos<-acciones[-1,-8]
View(datos)
datos<-datos[,-1]
datos<-acciones[,-8]
View(datos)
summary(datos)
train<-datos[2:883,]
lda<-lda(Direction~V1+V2,train)
lda<-lda(V9~V1+V2,train)
acciones<- read.table(file.choose(),sep=",",header = T)
View(acciones)
datos<-acciones[,-8]
View(datos)
summary(datos)
train<-datos[1:882,]
lda<-lda(Direction~Lag1+Lag2,train)
test<- read.table(file.choose(),sep=",",header = T)
View(test)
datos.test<-test[,-8]
train<-datos[1:882,]
test<-datos.test[1:882,]
test.labels<-test$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test,type="class")
datos.test<-test[,-8]
train<-datos[1:882,]
test<-datos.test[1:882,]
test.labels<-test$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test,type="class")
train<-datos[1:882,]
test2<-datos.test[1:882,]
test.labels<-test2$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
View(test)
test<- read.table(file.choose(),sep=",",header = T)
test<- read.table(file.choose(),sep=",",header = T)
View(test)
datos.test<-test[,-8]
View(datos.test)
train<-datos[1:882,]
test2<-datos.test[1:882,]
test.labels<-test2$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test2,type="class")
train<-datos[1:882,-1]
test2<-datos.test[1:882,-1]
test.labels<-test2$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test2,type="class")
train<-datos[1:882,-1]
test2<-datos.test[1:207,-1]
test.labels<-test2$Direction
lda<-lda(Direction~Lag1+Lag2,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag1+Lag2+Lag3+Lag4+Lag5,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag2+Lag3+Lag4+Lag5,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag1+Lag3+Lag4+Lag5,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag1+Lag2+Lag4+Lag5,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag1+Lag2+Lag3+Lag5,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
lda<-lda(Direction~Lag1+Lag2+Lag3+Lag4,train)
predicciones<-predict(lda,test2,type="class")
conf<-table(reales=test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2+Lag3,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2+Lag3+Lag4+Lag5,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2+Lag3+Lag4,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag5+Lag3+Lag4,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag5+Lag2+Lag4,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag3,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag4,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag5,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag6,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
qda<-qda(Direction~Lag1+Lag2,train)
predicciones<-predict(qda,test2,type="class")
conf<-table(test.labels,predicciones$class)
sum(diag(conf))/sum(conf)
normaliza<- function(x){
return((x-min(x))/(max(x)-min(x)))
}
datos.n<-data.frame(apply(datos[,-1],2,normaliza))
datos.train<- datos.n[1:882,]
datos.n<-data.frame(apply(datos[,2:7],2,normaliza))
datos.train<- datos.n[1:882,]
test2<-datos.test[1:207,-1]
datos.train.labels <- datos[1:882,8]
datos.test.labels<-test2$Direction
library(class)
predicciones <- knn(datos.train, datos.test,datos.train.labels, 170)
library(caret)
library(doSNOW)
titanic <- read.table(file.choose(),sep=",",header = T,stringsAsFactors = F)
sum(is.na(titanic$Age))
table(titanic$Embarked)
table(titanic$Cabin)
prop.table(table(titanic$Survived))
table(titanic$Survived,titanic$Sex)
titanic$Embarked[titanic$Embarked==''] <- 'S'
table(titanic$Embarked)
mediana.edad <- median(titanic$Age,na.rm=T)
titanic$Age[is.na(titanic$Age)] <- mediana.edad
titanic$Survived <- as.factor(titanic$Survived)
titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic.Embarked)
titanic$Embarked <- as.factor(titanic$Embarked)
str(titanic)
set.seed(500)
indices <- caret::createDataPartition(titanic$Survived,p = 0.7,list = F)
indices
titanic.train <- titanic[indices,]
titanic.test <- titanic[-indices,]
prop.table(table(titanic.train$Survived))
prop.table(table(titanic.test$Survived))
?trainControl
train.control <- trainControl(method = 'cv',number = 10,repeats = 3)
variables <- c('Survived','Pclass','Sex','Age','SibSp','Parch','Fare','Embarked')
titanic <- titanic[,variables]
set.seed(500)
indices <- caret::createDataPartition(titanic$Survived,p = 0.7,list = F)
titanic.train <- titanic[indices,]
titanic.test <- titanic[-indices,]
prop.table(table(titanic.train$Survived))
prop.table(table(titanic.test$Survived))
train.control <- trainControl(method = 'cv',number = 10,repeats = 3)
View(titanic)
?train
knn <- train(Survived~.,method = 'knn',data = titanic.train,
trControl = train.control,preProcess = c('center','scale'),
tuneLength = 200)
install.packages("e1071")
knn <- train(Survived~.,method = 'knn',data = titanic.train,
trControl = train.control,preProcess = c('center','scale'),
tuneLength = 200)
knn
predicciones <- predict(knn,titanic.test)
confusionMatrix(titanic.test$Survived,predicciones)

I§È;³gf][xß¿ÿû<÷³|Ï¸æï\3×�úÕ1ég
install.packages("xtable")
x<-c(2,5,6,7)
y<-c(4,8,1,9)
plot(x,y)
plot(x,y,pch=25)
plot(x,y,pch=25,bg="red")
plot(x,y,pch=10)
plot(x,y,pch="g")
plot(c(1,3),c(1,8),type="n",xlab="Eje X",ylab="EjeY")
 plot(c(1,3),c(1,8),type="n",xlab="Eje X",ylab="EjeY")
plot(c(1,7),c(1,9),type="n",xlab="Eje X",ylab="EjeY")
points(x,y)
x
y
points(x,y)
points(x,y)
mi.linea<-lm(y~x)
abline(mi.linea)
 plot(x,y,pch="g")
points(x,y)
mi.linea<-lm(y~x)
abline(mi.linea)
set.seed(7)
x<-sample(3:20,30,replace=T)
y<-sample(2:50,30,replace=T)
plot(x,type="1")
plot(x,type="l")
lines(x,type="l",col="blue")
plot(c(1,7),c(1,9),type="n",xlab="Eje X",ylab="EjeY")
 plot(x,type="l"
 plot(x,type="l")
 plot(x,type="l")
lines(x,type="l",col="blue")
title(main="Grafica de lineas",col.main="red",col.lab="brown")
legend("topright",lty=c(1,2),col=c(1,3),legend=c("con puntos")
text(3,3,"Hola")
legend("topright",lty=c(1,2),col=c(1,3),legend=c("con puntos"))
opar<-par()
par(bg="lightyellow",col.axis="blue",mar=c(4,4,2.5,.5))
plot(x,y,xlab="Diez numeros al azar",ylab="Diez numeros",xlim=c(-2,-2),ylim=c(-2,-2),pch=22,col="green",bg="yellow",col.axis="blue",mar=c(4,4,2.5,.5))
pdf("Migrafica.pdf")
par(bg="lightyellow",col.axis="blue",mar=c(4,4,2.5,.5))
plot(x,y,xlab="Diez numeros al azar",ylab="Diez numeros",xlim=c(-2,-2),ylim=c(-2,-2),pch=22,col="green",bg="yellow",col.axis="blue",mar=c(4,4,2.5,.5))
dev.off()
