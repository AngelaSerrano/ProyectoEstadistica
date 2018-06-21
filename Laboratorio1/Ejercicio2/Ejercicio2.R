#Nombre: Italo Silva Guanilo 20151480F
#Solucion 2: Manejo de matrices con sus operaciones basicas

#Iten a
n<-c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5)
x<-matrix(n,nrow = 4, ncol = 2)
x
#iten b
x1<-x[-1,]
x1
dim(x1)
#item c
x[,2] <- sort(x[,2])
x
#item d
x2 <- matrix(x[-4,-1])
x2
# Muestra la matriz de una sola columna

#iten e
y<-matrix(x2,nrow = 2, ncol = 2)
y
#item f
z1=c(x[4,2],x[1,2],x[4,1],x[1,1])
z<-matrix(z1,nrow = 2, ncol =2)
z
#item g
