x<-2
if(x<3) (print(x))
x<-5
if(x<3)(prit(x))
if(x<3)(x+5)
x=2
if(x<3)(x+5)
if(x<3)(x^4)
if(x<3)(x^4)
if(x>2)(x^4)
if(x>2)(x^4)
if(x==2)(x^4)
if(x<2){
x<-5


ifelse(x==5,x^2,x)
ifelse(x!=5,x^2,x)
for(i in 1:5)(print(x))
cubo<-function(a){a^3}
source("cubo.R")
cubo(7)

raiz<-function(a,b,c){
	if(b^2-4*a*c>0){
		print("Las raices son reales ")
		x1=(-b + sqrt(b^2-4*a*c))/2*a
		x2=(-b - sqrt(b^2-4*a*c))/2*a
		print(c(x1,x2))
	}
	if(b^2-4*a*c<0){
		print("Las raices son complejas ")
	}
	if(b^2-4*a*c==0){
		print("Las raiz es: ")
		x1=(-b + sqrt(b^2-4*a*c))/2*a
		x2=(-b - sqrt(b^2-4*a*c))/2*a
		print(c(x1,x2))
	}
}