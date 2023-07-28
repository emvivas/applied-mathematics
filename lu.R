#Descomposición o Factorización LU
#Emiliano Vivas
#num. = double
n = 3 #no. Renglones
m = 3 #no. Columnas
A <- matrix(c(3, 1, 6, 2, 4, -1, 1, -5, 7), n, m)
B <- matrix(c(10, 5, 1), n, 1)
A
B

b0 <- c(10, 5, -1)
b0
B <- cbind(b0)
colnames(A) <- c("x", "y", "z")
    #j
#i

L <- matrix(0,n,m)
U <- matrix(0,n,m)
L
U

for(r in 1:n){
  for(c in 1:m){
    U[r,c]=A[r,c]
  }
}

for(k in 1:n){
  for(r in 1:m){
    if(k==r){
      L[k,r]=1
    }
    else if(k<r){
      factor = A[r,k]/A[k,k]
      L[r, k] = factor
      for(c in 1:m){
        A[r, c] = A[r, c]-(factor*A[k, c])
        U[r, c] = A[r, c]
      }
    }
  }
}
print("L")
print(L)
print("U")
print(U)

a = L%*%U
a

X1 = solve(L, B)
X1

X = solve(U, X1)
X
