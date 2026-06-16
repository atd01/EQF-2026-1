#### Lab 8 ####
# Último Laboratorio, yay!
# Regresión Lineal, I guess?
head(Data_Lab8)
attach(Data_Lab8)

##### a) Variables #####
# Independiente: Temperatura (°C)
# Respuesta: Producción (%)

##### b) Diagrama de Dispersión #####
plot(Temperatura, Producción)
# Parece tener relación lineal positiva

##### c) Coef. de Correlación #####
cor(Temperatura, Producción) # 0.6831
# Correlación lineal positiva moderada entre temp. y prod.

##### d) Test de Hipótesis para corr. lineal en Población #####
# H0: rho == 0 (No hay corr.)
# H1: rho != 0 (Hay corr.)
cor.test(Producción, Temperatura)
# Estadístico: t = 4.3872
# p-value = 0.0002343
# Se rechaza H0 (p < alpha)
# Existe correlación en la Población entre la temp. y la prod.

##### e) Modelo ajustado a la producción #####
modelo = lm(Producción~Temperatura)
summary(modelo)
# Beta 0: 20.1618 (Intercepto)
# Beta 1: 1.2691 (Pendiente)
# 20.1618 + 1.2691*x (x = Temperatura)

##### f) Interpretación temperatura en Modelo #####
# Por cada °C adicional en la temp., la producción aumenta en 1.27 veces

##### g) Temperatura Significativa #####
# Significancia: Coef. != 0
# H0: Beta 1 == 0 (No significativa)
# H1: Beta 1 != 0 (Significativa)
# Datos de lm(modelo): Fila temperatura
# Estadístico = 4.387
# p-value = 0.000234
# Se rechaza H0

##### h) Coef. de Determinación #####
# Datos de lm(modelo): Multiple R-squared
# R^2 = 0.4666
# 46.66% de la variabilidad se explica por la temperatura

##### i) Prod. calculada a 45°C #####
# Se usa modelo/regresión lineal a 45°C
20.1618 + 1.2691*45 # 77.2713
