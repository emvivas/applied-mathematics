x <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24)
# Media móvil simple
n <- 3
media3 = filter(x, rep(1 / n, n), sides = 1)
media3

n <- 6
media6 = filter(x, rep(1 / n, n), sides = 1)
media6

plot(media3)
library(smooth)
graphica = sma(media3, order=3, h=3, silent=FALSE)
summary(graphica)
f = forecast(graphica)
plot(f)

HoltWinters()