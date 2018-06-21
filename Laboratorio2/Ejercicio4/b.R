#Nombre: Serrano Sanchez Angela 20151371B
#Respuesta: El codigo analiza cada elemento de un vector de caracteres
#y devuelve su respectivo valor numérico correspondiente.

#Guarda en cadena1 el vector de caracteres.
cadena1 <- c("Peter","Homer","Lois","Stewie","Maggie","Bart")

#Como switch solo funciona en 1 dimensión usamos..
#La función sapply,  que aplica la función a cada elemento
#de un vector.

sapply(cadena1, switch, Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90, NA)



