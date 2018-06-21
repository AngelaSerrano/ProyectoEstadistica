# Nombre : Angela Serrano Sanchez 20151371B
# Respuesta: El codigo analiza si la suma 
# mayor a 3, de serlo un tercer vector 
# almacena el producto. Por el contrario si 
# no cumple la condicion solo conserva la suma.

vec3 <- vec1+vec2>3
for(i in c(1:7)){
  if(vec3[i]) vec3[i]=vec1[i]*vec2[i]
  else vec3[i]=vec1[i]+vec2[i]
}
vec3