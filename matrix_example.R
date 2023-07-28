#############################
## -------- MATRIX--------##
#############################

## raulvalerio@gmail.com


setwd("C:/Users/vivas/source/repos/Matemáticas y Ciencia de Datos")

###
mymat<- matrix(
  c (
    30,	29,	19,	27,	23,
    27, 15, 18, 13, 21,
    21,	14,	14,	8,	20,
    31,	22,	12,	14,	13,
    25,	22,	17,	20,	16,
    9,	8,	26,	23,	20,
    20,	19,	24,	24,	12,
    26, 6,  14, 13, 22,
    29,	28,	22,	23,	27,
    23,	18,	9,	22,	16),10,5)

mymat   # what are the dimensions?

dim(mymat)  ## how it did it?

str(mymat)

mydata<- as.data.frame(mymat)  # changing to data frame

mydata  # what is the difference??

## lets compare the structure behind
A = matrix( 
  c(2, 4, 3, 1, 5, 7), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE)        # fill matrix by rows 

A                      # print the matrix 

dim(A)

x = matrix(1:12) # nocols nor norow  -> one single column

x = matrix(1:12, ncol=3, nrow = 4)

dim(x)

nrow(x)

ncol(x)

is.matrix(x)

x

colnames(x) <- c("Age","Poid","Haut")

rownames(x) =  c("Pierre","Frank","Quentin","Karl")

apply (x, 1, mean)   #3 by row

apply (x, 2, mean) # by column

apply( x,1, sum)  

x["Frank",]

x[,"Age"]


## let see the structure of mymat matrix ---> see some lines back
# what are the default values?

A[2, 3]      # element at 2nd row, 3rd column

# The entire mth row A can be extracted as A[m, ].

A[2, ]  # the 2nd row

A[ ,3]       # the 3rd column


A[ ,c(1,3)]  # the 1st and 3rd columns 

# possible operations
A^2 the same than  A*A  ,what is it?
  
  B = matrix( c(2, 4, 3, 1, 5, 7), 2,3)

B

A+B, B+A

A*B  # is it multiplication?   2 x 3   2 x 3  not possible
--> it's element times element'

C = matrix( c(2, 4, 3, 1, 5, 7), 3,2)

C


C * A  #, why not??  

C %*% A , what is it?    multiplication of matrices
B %*% A

D = C %*% A

det( D) 

C^T  ,is this what I think?
  A^T

t(C)  # transp

C^-1  , what have you done?  --> not inverse of the matrix
multiplicative inverse of each element

(C %*% A )^-1, what is it?
  
  inv( C %*% A) # library(matlib)

solve(D)   # base function in R

solve( A%*%C)

det(A%*%C)

solve( A%*%C) %*% ( A%*%C)   ??????   A * A^-1  -->   I2