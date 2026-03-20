head(Base_lab1)
attach(Base_lab1)

# B) Tabla de Contingencia
# medicamentos <- table(Medicamento)
# duracion <- table(Duración)
# adherencia <- table(Adherencia)

tabla_b <- table(Medicamento, Adherencia) # Para tabla de dos varaibles
addmargins(tabla_b)
tabla_b

# C) Porcentajes
tabla_c <- round(prop.table(tabla_b, 2) * 100, 1) 
tabla_c
# Round(X,1) redondea a un decimal
# tabla_b, 2 proporción por fila (1 da por columna)

# D) Gráfico de Caja
boxplot(Dosis, horizontal = T, col = "#B57EDC", main = "Distribución de la dosis")
# Se suele usar Celeste (Light Blue)
boxplot(Dosis ~ Medicamento, horizontal = 1, col = "#EC5800", main = "Distribución Dosis por Medicamento", las = 1)

# E) Histograma Glicemia
hist(Glicemia, col = "#004225", main = "Distribución de la Glicemia")

# F) Cuartiles en el Histograma
cuartiles_f <- quantile(Glicemia, probs = c(0.25, 0.50, 0.75))
abline(v=cuartiles_f, col=c("red", "#0080FF", "red"), lwd = 2, lty = 2)
legend("topright", legend = c("C1", "C2", "C3"), col = c("red", "#0080FF", "red"))

# G) Resumen Num
summary(Glicemia) # Resumen
sd(Glicemia) # Desv Est