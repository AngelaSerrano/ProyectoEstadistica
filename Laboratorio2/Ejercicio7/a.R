#Nombre: Angela Serrano Sanchez 20151371B
#Respuesta: 
prob <- 0
cadenab <- "++-+" #Aqui se ingresa la Cadena A
cadenaa <- "+??-" #Cadena A

#Devuelve la posición a la que equivale dicha cadena.
valor <- function(stri){
  pos<-0
  for(i in 1:nchar(stri)){
    if(substr(stri,i,i)=='+') pos<-pos+1
    else pos <- pos -1
  }
  return(pos)
}

#Retorna un vector con los indices de '?' encontrados.
cont <- function(stri){
  #Recibe una cadena y la separa en un vector.
  cadena <- strsplit(stri,"")
  return(which(cadena[[1]] == '?'))
}
#Analisis de cadenas.
  if(length(cont(cadenaa))==0) {
    #Si no hay ningún '?'
    if(valor(cadenaa)==valor(cadenab)) prob <- 1.0000000
  } else {
      #Casos totales
      totcas <- 2^length(cont(cadenaa))
      #Posición correcta
      pos  <- valor(cadenab)
      #Array de matches '?'
      mat <- cont(cadenaa)
      #Número de '?'s
      nmat <- length(mat)
      #Casos favorables
      favcas <- 0
      #Total de combinaciones posibles, |totcas|
      dat <- permutations(2,nmat,c("+","-"),set=TRUE,repeats.allowed = TRUE)
      for(i in 1:nrow(dat)){
        #Reemplaza los '?' por cada combinación posible
        substr(cadenaa,mat[1],mat[nmat]) <- paste(dat[i,],collapse="")
        print(cadenaa)
        #Verifica si el caso es favorable
        if(valor(cadenaa)==pos) favcas <- favcas+1 
        
      }
      #9 decimales.
      prob <- format(round(favcas/totcas,9),nsmall = 9)
        
  }
