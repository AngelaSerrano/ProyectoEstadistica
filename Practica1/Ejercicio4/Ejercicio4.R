#Nombre: Italo Silva Guanilo 20151480F
#Solucion 4: Manejo de clases de un objeto asi como dataframe para algunos elementos
#de las matrices

#item a
f1<-array(data=1:36,dim=c(3,3,4))
bar<-as.vector(f1)
baz<-as.character(bar)
qux<-as.factor(baz)
quux<-bar+c(-0,1,0,1)

#Viendo las calses
class(f1)#Devuelve'array'
class(bar)#Devuelve 'integer'
class(baz)#Devuelve 'character'
class(qux)#Devuelve 'factor'
class(quux)#Devuelve 'numeric'

#item b
resul1<- is.numeric(f1)+is.integer(f1)
resul2<- is.numeric(bar)+is.integer(bar)
resul3<- is.numeric(baz)+is.integer(baz)
resul4<- is.numeric(qux)+is.integer(qux)
resul5<- is.numeric(quux)+is.integer(quux)
resultot<-factor(c(resul1,resul2,resul3,resul4,resul5),levels=c(0,1,2))
resultot #Se almacena todos los resultados y se les da los nvelese correspondientes

#item c
a<-c(34,0,1,23,1,2,33,1,0,42,0,1,41,0,2)
A<-matrix(a,nrow=5,byrow=1)#Se crea la matriz
A
datfr<-as.data.frame(A)
as.logical(datfr[[2]])#Usamos el data frame para que los valores de la segunda 
                      #columna sean logicos
as.factor(datfr[[2]])#Usamos el data frame para que los valores de la segunda 
                    #columna tengan valores de un factor
datfr