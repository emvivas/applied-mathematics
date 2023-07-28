#SERIES DE TIEMPO

#1 Tendencia (T, Trend): Movimiento gradual que tiene la serie, arriba, abajo
#Estacionalidad (S, Seasonality): Fluctuación periódica de la serie
#3 Ciclos (C, Cycles): Largas desviaciones de la tendencia debido a factores distintos de la estacionalidad, tiempo extenso
#4 Variaciones aleatorias (R, Random): Queda después de explicar los movimientos, (ruido, error)
  #Ruido blanco, bien
  #R. cafe
  #R. rojo

#Objeto ts(), para tratamiento de series de tiempo
#Objeto zoo(), para series de tiempo desiguales
gas = read.table("./gas.dat", header=T)
attach(gas)
plot(gas$Dia, gas$Consumo)
plot(Dia, Consumo, type="l")
str(gas)
gas.ts = ts(gas$Consumo, start=c(1966,1), frequency=12)
gas.ts
str(gas.ts)
print(gas.ts)
plot(gas.ts)

#Diagrama de caja y brazos para analizar la tendencia
boxplot(gas.ts~cycle(gas.ts))
cycle(gas.ts)

#Descomposición
gas.ts.desc = decompose(gas.ts)
plot(gas.ts.desc, xlab="Año")

install.packages("forecast")
library(forecast)
pronostico <- ma(gas.ts, order=2) #Orden numero de rezagos
plot(pronostico)
lines(pronostico)

modelo <- arima(gas.ts, order=c(0,0,3))  #MA(3)
gas.ts.add <- decompose(gas.ts, type="additive")

gas.ts.add <- decompose(gas.ts, type="multiplicative")

auto.arima(gas.ts, trace=T); #modelos automatizados
#Método medias movilesm promedio móvil, (MA, Moving Average)
#MA(3) clasico
#MA(3) centrado

#Prediccion
gas.forecast <- forecast(modelo, h=5)
plot(gas.forecast)

#ARIMA(2, 0, 0)(0, 1, 2)[12]
modelo2 <- arima(gas.ts, order=c(2, 0, 0), seasonal =list(order=c(0, 1, 2)))
modelo2
gas.forecast <-forecast(modelo2, h=5)
plot(gas.forecast)


forecast <- predict(modelo2, 5);


installed.packages("smooth")
library(smooth);
ventas.fc = sma(ventas.fc, order=4, h=4, silent=4)
#Suavizar y propósticar
