#Introducción a las Series de Tiempo.
#Emiliano Vivas Rodríguez (a01424732@tec.mx).

datos = read.csv(paste(getwd(),"/datosJ&J.csv", sep=""));
data = ts(datos$Beneficios, start=c(1960, 1), frequency = 3)
print(data)
plot(datos$Obs, datos$Beneficios)
plot(datos$Obs, datos$Beneficios, type="l")
plot(data)
boxplot(data~cycle(data))
cycle(data)
descData = decompose(data)
plot(descData, xlab="Año")
#La tendencia es creciente, no se puede determinar una estacionalidad precisa.