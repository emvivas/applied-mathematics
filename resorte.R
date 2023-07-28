m<-c(2, 4, 6, 8, 10)
l <- c(42, 48.4, 51.3, 56.3, 58.6)
  plot(m,l,pch=16)
modelo <- lm(l~m);
modelo
summary(modelo)
abline(modelo)
