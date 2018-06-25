#Nombre: Italo Silva Guanilo 20151480F
#Solucion 3: Manejo de vectores a partir de diferenciar niveles de un vector
#Item a
genero <- matrix(nrow = 20, ncol = 1)#Se crea el vector género
partidos <- matrix(nrow = 20, ncol = 1)#Se crea el array Partidos politicos

for(i in 1:20){ #En este bucle le daremos valores a "género"
  if(i==1 || (i>=5 && i<=7) || i==12 || (i>=14 && i<=16)){
    genero[i][1] <- 'F' #Para los valores que nos dan se les ubica donde ira femenino
  }  
  else {genero[i][1]<-'M'}  #Los otros casos serán masculino
}

for(j in 1:20){   # en este bucle daremos valores a "partidos"
  if(j==1 ||j==4 ||j==12 ||j==15 ||j==16 ||j==19){
    partidos[j][1] <-'LABORISTAS' #Se pone en las posiciones que nos indican a los 'Laboritas'
  }
  else if(j==6 || j==9 || j==1){
    partidos[j][1] <- 'VERDES'#Se pone en las posiciones que nos indican a los 'Verdes'
  }
  else if(j==10 || j==20)
    partidos[j][1] <- 'OTROS'#Se pone en las posiciones que nos indican a los que estan en otros
  else{
    partidos[j][1] <- 'NACIONALES' #Se pone en las posiciones que nos indican a los 'Nacionales'
  }
}
#Se imprimirá ambos vectores
genero 
partidos

#Item b
fgenero<-factor(genero)
fpartidos<-factor(partidos)
#En este caso no tiene sentido usar ordered=TRUE ya que esta sentencia se usa cuando
#Se tiene un order por ejemplo 0,1,2 pero en este caso solo es masculino y femenino que
#no tiene un orden definido
levels(fgenero)
levels(fpartidos)
#R organiza levels mediante el agrupamiento los elementos iguales y estos a su vez se les 
#asigna un numero por orden alfabetico lo cual por ejemplo para genero sería femenino en el
#primer nievel y en el segundo irá masculino

#Item c
fpartidos[as.numeric(fgenero)==2]#Como el nivel de Masculino es 2 entonces bucamos los partidos
                                #que estan en este nivel
fgenero[as.numeric(fpartidos)==2]#Se ubica primero el nivel donde estan los 'Nacionales' y se
                                #muestra el genero de este nivel

#Item d
partidos2 <- c("Nacional","Maori","Maori","Laborista","Verdes","Laborista")
genero2 <- c("M","M","F","F","F","M")
#Anexamos los resultados anteriores
fgenero <- factor((c(as.vector(fgenero),genero2)))
fpartidos <- factor(c(as.vector(fpartidos),partidos2))
