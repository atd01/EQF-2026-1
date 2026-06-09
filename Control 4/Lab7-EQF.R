#### Lab 7 ####
head(ENS1)
attach(ENS1)
# Este lab es mucho texto
##### a) Diferencia en Colesterol en grupos de edad #####
# Unidad Experimental: Pacientes
# Variable Respuesta (Var. Cuantitativa): Colesterol
# Factor (Var. Cualitativa): Rango de Edades
# Niveles (posibilidades del factor): 3 (Jóvenes, Adultos, A. Mayores)
# Parámetros: mu1: Colesterol Prom. Jóvenes
#             mu2: Col. Prom. Adultos
#             mu3: Col Prom A. Mayores

anova_a = aov(Colesterol~RangoEdades)
# Primero Cuantitativa y luego Cualitativa
# Para ver resultados se usa Summary
summary(anova_a)

# H0: mu1 = mu2 = mu3
# H1: Al menos una media es diferente
# Nivel de Significancia (indicado en enunciado): 0.05
# Valor Estadsítico: 32.97
# P-Value: 7.79e-14
# Decisión: Se rechaza H0, p < alpha
# Conclusión: Existen diferencias significativas en la media de colesterol de
# los distintos rangos de edad en base a la evidencia estadítica.

##### b) Grupos con diferencias en colesterol (estudio posterior) #####
# Intervalos de Tukey en base a resultados del test
TukeyHSD(anova_a)
# Se utiliza lwr (Lower o inferior) y upr (Upper o superior)
# IC (mu3 - mu2, 0.95%): (-,+) 
# -> 0 pertence al intervalo -> mu3 == mu2
# IC (mu1 - mu2, 0.95%): (-,-) -> distintas medias (mu1 != mu2)
# mu1 - mu2 < 0 -> mu1 < mu2
# IC (mu1 - mu3, 0.95%): (-,-) -> distintas medias (mu1 != mu3)
# mu1 - mu3 < 0 -> mu1 < mu3
# mu1 < mu2 = mu3

plot(TukeyHSD(anova_a))
# Genera un gráfico de los intervalos de confianza

##### c) Cumple supuesto de normalidad #####
shapiro.test(anova_a$residuals)
# Se usa para comprobar la normalidad a partir de los residuos
# H0: Residuos siguen una dist. normal
# H1: Residuos no siguen una dist. normal
# Estadístico: W = 0.98885
# Valor-P: 0.008881
# Se rechaza H0 (p-value < alpha)
# Conclusión: Residuos no cumplen dist. normal
library(lmtest)
bptest(anova_a)
# Se usa para comprobar la diferencia de la var. pob./Homogeneidad
# H0: Var. Pob. son iguales
# H1: Var. Pob. no son iguales
# Estadístico: BP = 1.769
# Valor-P: 0.4129
# No se rechaza H0 -> Se cumple el supuesto de Homogeneidad