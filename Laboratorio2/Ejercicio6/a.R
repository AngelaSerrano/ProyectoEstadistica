#Nombre: Serrano Sanchez Angela 20151371B
#Respuesta: El codigo muestra la aplicación de la transpuesta a cada
#objeto de la lista dada.
matlist <- list(matrix(c(T,F,T,T),2,2),
                 matrix(c("a","c","b","z","p","q"),3,2),
                 matrix(1:8,2,4))
matlist
matlist <- lapply(matlist,t)
matlist
