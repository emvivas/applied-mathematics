#Solución de ecuaciones por determinante
#2x + 4y + 6z = 18
#4x +5y + 6z = 24
#3x + y - 2z = 4
A <- matrix(c(1, 3, 2, 1, -2, 4, -3, 1, 2, -1, 2, -3, -3, 1, -1, -2), 4, 4)
B <- c(15, -6, 17, -7)
X <- solve(t(A)%*%A)%*%t(A)%*%B
X
#x
#y
#z

#Solución de ecucaciones por matriz inversa
install.packages("matlib")
install.packages("qcc")
library("matlib")
library("qcc")

x <- c(3, 8, 2)