install.packages("dplyr")
library(dplyr)
data()
??mtcars
datos<-mtcars
View(datos)
head(datos)
head(datos,3)
nrow(datos)
ncol(datos)
tail(datos)#muestra las ultimas 6 observaciones de datos
tail(datos,10)
str(datos)
head(select(datos,1:5))
head(select(datos,5:8))
head(datos[,1:5])
head(select(datos,mpg:cyl))
head(select(datos,mpg:disp))
head(select(datos,-(mpg:disp)))
range(datos$hp)
datos.hp<-filter(datos,hp>200)
datos.hp
head(datos.hp<-filter(datos,hp>200),4)
datos.hp<-filter(datos,hp>200 & am==0)
datos.hp
head(datos.hp<-filter(datos,hp>200 & am==0),3)
datos<-arrange(datos,hp)
head(datos<-arrange(datos,hp))
head(datos<-arrange(datos,desc(hp)))
head(datos<-arrange(datos,disp))
datos<-rename(datos,aut.man = am)
names(datos)
datos<-rename(datos,am = aut.man)
names(datos)
datos<-mutate(datos,mpg.t=mpg-mean(mpg))
head(datos)
datos<-mutate(datos,cyl.f=factor(cyl))
head(datos)
datos<-group_by(datos,cyl.f)
summarize(datos,mpg=mean(mpg),carb=min(carb))
summarize(datos,mpg=median(mpg),carb=min(carb))
datos<-mtcars
dat.vs<-group_by(datos,vs.f=factor(vs))
dat.vs
summarize(dat.vs,mean(qsec),max(cyl))

numeros<-scan("num.txt")
numeros
install.packages("xlsx")

ecobici<-read.csv("2017-05.csv",header=T,sep=",",stringAsFactor = F)
str(ecobici)

