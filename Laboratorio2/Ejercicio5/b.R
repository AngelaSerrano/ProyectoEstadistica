#Nombre: Serrano Sanchez Angela 20151371B
#Respuesta:
unacadena <- "R fever"
 index <- 1
 ecount <- 0
 resultado <- unacadena
 while(ecount<2 && index<=nchar(unacadena)){
   #Verifica la presencia de 'e' o 'E'
   if(substr(unacadena,index,index)=='e' || substr(unacadena,index,index)=='E'){
     ecount <- ecount+1
   }
   index <- index+1
 }
 #Muestra la nueva cadena hasta la segunda e, si la hay
 if(ecount==2) resultado <- substr(unacadena,1,index-2)
 resultado