#Nombre: Italo Silva Guanilo 20151480F
#Solución 5: En este codigo nos muestra el como realizar una gráfica y explicamos como realizar
#cada acción

plot.new()#Inicia un nuevo gráfico
#Estableceremos los limites para las coordenadas x e y
plot.window(range(pressure$temperature),
            range(pressure$pressure))
box() #Creamos el margen de la parte gráfica
axis(1)#Asignamos los indicadores del eje de las ordenadas
axis(2)#Ponemos los indicadores de las abcisas
points(pressure$temperature, pressure$pressure)#Imprimes los puntos en donde corresponden siendo
                                    #los primeros para temperatura y los segundos para presion
mtext("temperatura",side=1,line=3)#Se nombra al eje de las ordenadas con una separacion de 3 
                                  #lineas y para ponerlo en horizontal se utliza el side=1
                                  #para ponerlo en la parte inferior de la gráfica
mtext("presion",side=2,line=3)#Se nombra  al eje de las absisas con una separacion de 3 lineas
                              #y se utiliza side=2 para poner la palabra en vertical en la
                              #parte izquierda de la gráfica
#Asignaremos un nombre a la gráfica en la linea 1 y se usa side=3 para ponerlo en la parte
#superior y la forma de letra 4(negrita y cursiva)
mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",
      side=3,line=1,font=4)
