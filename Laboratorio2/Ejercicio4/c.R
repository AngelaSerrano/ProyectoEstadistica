count <- function(lista0){
  #Aplica la función class a cada elemento de la lista
  #Verifica si es matriz, luego cuenta las coincidencias.
  return (length(lista0[lapply(lista0,class)=='matrix']))
}
countlist <- function(unalista){
    contador <- 0
    for(i in 1:length(unalista)){
    #Matrices dentro de las lista.
    if(class(unalista[[i]])=="matrix") contador <- contador +1
    if (class(unalista[[i]])=="list") contador <- contador + count(unalista[[i]])
    }
    print(contador)

}

#Pruebas
list1 <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),
               cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",
               ee=list(c("hola","tu"),matrix(c("hola","there"))),
               ff=matrix(c("red","green","blue","yellow")))
print("Respuesta correcta: 4")
countlist(list1)
print("-----------------------")


list2 <- list("salio algo raro",as.vector(matrix(1:6,3,2)))
print("Respuesta correcta: 0")
countlist(list2)
print("-----------------------")



print("Respuesta correcta: 2")
list3 <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),
               rbind(1:10,100:91))
countlist(list3)
print("-----------------------")
