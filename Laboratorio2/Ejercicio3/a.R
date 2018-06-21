# Nombre : Angela Serrano Sanchez 20151371B
# Respuesta: Todas las sentencias if imprimen en consola escepto la tercera, pues 
# vec2-vec1[2]=7 que NO es estrictamente menor a 7, falso.

#Comprobar
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)

#Sentencias if 
if((vec1[1]+vec2[2])==10){ cat("Imprime el resultado1!") }

if(vec1[1]>=2&&vec2[1]>=2){ cat("Imprime el resultado2!") }

if(all((vec2-vec1)[c(2,6)]<7)){ cat("Imprime el resultado3!") }

if(!is.na(vec2[3])){ cat("Imprime el resultado4!") }


#Comprobado, no imprime la tercera sentencia.