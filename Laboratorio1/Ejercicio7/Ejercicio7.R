#Nombre: Italo Silva Guanilo 20151480F
#Respuesta 7: El codigo es el manejo de los elementos de un vector al diferenciarlos del infinito
#Item a
f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133)
f1
for(i in 1:length(f1)){
  if(f1[i]^75 != Inf){#elevamos a la 75 los elementos y verificamos si son distintos de infinto
    print(f1[i] ) #En caso de no  ser infinitos se imprimiran
  }
}
for(i in 1:length(f1)){
  if(f1[i]^75 != -Inf){#elevamos a la 75 los elementos y verificamos si son distintos de infinto
    print(f1[i] ) #En caso de no  ser infinitos negativos se imprimiran
  }
}

#Item b
matr <- matrix(c(77875.4,-35466.25,-39803.81,27551.45,-73333.85,55976.34,
                 23764.3,36599.69,76694.82,-36478.88,-70585.69,47032),
               nrow=3,ncol=4) #Se crea la matriz
which(is.nan(matr^65/Inf),arr.ind=T)
matr[!is.nan(matr^67+Inf)] 
matr[matr^67!=-Inf]
matr[matr^67==-Inf|is.finite(matr^67)]

#Item c
f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
length(f2)
which(x=is.na(x=f2))
is.null(x=f2)#Devuleve 'FALSE'