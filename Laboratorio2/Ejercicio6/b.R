mat <- matrix(NA,4,3)
mat
qux <- array(96:1,dim=c(4,4,2,3))
for(i in 1:3){
  mat[,i] <- diag(qux[,,2,i])
}
mat