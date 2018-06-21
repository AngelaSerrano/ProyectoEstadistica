# Nombre : Angela Serrano Sanchez 20151371B
# Respuesta: El codigo recibe una matriz 
# cuadrada, confirma la presencia de una 
#cadena que empieza con 'g' o 'G' en la diagonal
#la reemplaza por 'AQUI' y de no encontrar 
#reemplaza toda la matriz por la identidad de
#la misma dimensión.

found <- function(x){
  #Vector lógico que muestra la presencia de G o g
  tag <- substr(diag(x),1,1)=='g' | substr(diag(x),1,1)=='G'
  
  #NO existe ninguna coincidencia
  if(all(tag==FALSE)){
    #Hace nula la matriz.
    x <- matrix(data=rep(0,length(x)),nrow(x),ncol(x))
    #Reemplaza la diagonal en 1,1,1,...,1
    diag(x) <- rep(1,as.integer(nrow(x)))
    
    
  }
  else {
    #reemplaza cada match por AQUI
    diag(x)[which(tag)] <- 'AQUI'
  
  }
  #Muestra la nueva matriz.
  x
}

print("Prueba_Matriz1")
mymat1 <- matrix(as.character(1:16),4,4)
mymat1
found(mymat1)

print("Prueba_Matriz2")
mymat2 <- matrix(c("DANDELION","Hyacinthus","Gerbera", "MARIGOLD","geranium","ligularia","Pachysandra","SNAPDRAGON","GLADIOLUS"),3,3)
mymat2
found(mymat2)

print("Prueba_Matriz3")
mymat3 <- matrix(c("GREAT","ejercicioss","agua","hey"),2,2,byrow=T)
mymat3
found(mymat3)



