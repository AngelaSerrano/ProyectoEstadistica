#Nombre: Serrano Sanchez Angela 20151371B
#Respuesta: El código muestra el producto de todos los elementos de
#los dos vectores usando solo un bucle for.
loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1

for(i in 1:length(loopvec1)){
  mat1[i,] <-loopvec1[i]*loopvec2
}
mat1