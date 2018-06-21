# Nombre : Angela Serrano Sanchez 20151371B
# Respuesta: El codigo muestra el estilo de argument matching para cada linea de 
# codigo siguiente.

#1
array(8:1,dim=c(2,2,2))
#Mixto. Para el primer argumento data se usó posicional y en el segundo perfecto pues
#se usó el tag entero dim.

#2
rep(1:2,3)
#Posicional. No usa las etiquetas para argumentos, solo se guía por el orden.

#3
seq(from=10,to=8,length=5)
#Perfecto. Ninguna etiqueta tiene abreviatura. 

#4
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))
#Perfecto. No utiliza abreviaturas y no interviene el orden de los argumentos.

#5
which(matrix(c(T,F,T,T),2,2))
#Posicional. Solo se usa el primer argumento sin etiquetas.

#6
which(matrix(c(T,F,T,T),2,2),a=T)
#Mixto. Primer argumento posicional y el segundo parcial con la abreviación de arr.ind 