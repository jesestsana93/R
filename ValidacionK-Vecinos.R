
cancer<- read.table(file.choose(),  sep = ",")

 #Mochar el id

cancer<- cancer[,-1]
n<- nrow(cancer)
cancer<- cancer [sample(n),]

normaliza<- function(x)
{
  
  return((x- min(x))/(max(x)-min(x)))
}
  

cancer.n<- data.frame(apply(cancer[,-1], 2, normaliza))

#Definir los conjuntos

cancer.train<- cancer.n[1:399,]
cancer.test<- cancer.n [400:569,]
cancer.train.labels<- cancer[1:399,1]
cancer.test.labels<-cancer[400:569,1]

library(class)

predicciones<-knn(cancer.train, cancer.test, cancer.train.labels, 50)
conf<- table(cancer.test.labels, predicciones)
print(conf)
sum(diag(conf))/sum(conf)

#Validación

k<-1:50
precision<-numeric(50)

for(i in k)
{
  cancer.train<- cancer.n[1:285,]
  cancer.test<- cancer.n [286:569,]
  cancer.train.labels<- cancer[1:285,1]
  cancer.test.labels<-cancer[286:569,1]
  
  library(class)
  
  predicciones<-knn(cancer.train, cancer.test, cancer.train.labels, i)
  conf<- table(cancer.test.labels, predicciones)
  precision[i]<- sum(diag(conf))/sum(conf)
  
}

paste("La desviación estándar es:", sd(precision))
