#Nombre: Italo Silva Guanilo 20151480F
#Respuesta1: En esta pregunta se ve el manejo de algunos comandos
#básicos como hacer secuencias, encontrar la longitud de un vector

#Parte a
n<-seq(from =5, to = -11, by = -0.3)#Se hace una secuenciade números desde 5 hasta -11 con razon 0.3

#Parte b
n<-seq(from =-11, to = 5, by = 0.3)#Se hace una secuenciade números desde -11 hasta 5 con razon 0.3

#Parte c
x<-c(-1,3,-5,7,-9)
y<-rep(x,time=2,each=10)#Se repite el vector x dos veces repitiendo 10 veces los elementos
sort(y)

#Parte d
m<-length(y)
vec<-c(6:12,rep(5.3,3),-3,seq(from=102,to=m,by=-(102-m)/8))
#Se hace una secuencia de numeros que contiene una subsecuencia de 6 al 12, una repetición triple
#del número 5.3, la inclusión del número -3, una subsecuencia desde 102 hasta la longitud del vector
#creado en el item c
vec
length(vec)