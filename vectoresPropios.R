#Valores y vectores propios
setwd("C:/Users/vivas/source/repos")
A <- matrix(c(5, 3, 1, -8, -1, 10, 14, -6, 5), 3, 3)
A
#calcular valores y vectores propios
B<-eigen(A)
B
#Extraer arreglo de valores propios
C <- B[1]
C
D <-B[[1]]
#Crear la matriz de valores propios
E <-matrix(data=0, 3, 3)
E
for(i in 1:3){
  E[i, i] = D[i]
}
E
#Extraer la matriz de vectores propios
F <- B[[2]]
F
#Recomposición de la matriz original  A = matriz vectores propios %*% Matriz Diagonal %*% Traspuesta de matriz vectores propios
G <- F%*%E%*%solve(F)
G
