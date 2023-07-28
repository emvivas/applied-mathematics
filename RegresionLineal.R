regresionLineal <- function(X, Y){
  meanX = mean(X);
  meanY = mean(Y);
  n = length(X);
  productoXY = 0;
  productoX2 = 0;
  for(i in seq(1, n)){
    productoXY = productoXY + Y[i]*X[i];
    productoX2 = productoX2 + X[i]^2;
  }
  beta1Hat = (productoXY - (sum(X)*sum(Y)/n))/(productoX2-sum(X)^2/n);
  beta0Hat = meanY - beta1Hat*meanX;
  return(paste("y = ", round(beta0Hat, 2), " + ", round(beta1Hat, 2), "x", sep = ""));
}

inteligencia = read.table("iqsize.txt", header=T, row.names = 1);
attach(inteligencia)
regresionLineal(Cerebro, IQ);