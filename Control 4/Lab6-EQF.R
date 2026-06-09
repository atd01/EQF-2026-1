#### Lab 6 ####
head(Tratamientos)
attach(Tratamientos)

##### a) <25% Analgésicos (Proporción) #####
# Parámetro: Proporción de analgésicos
# Hipótesis H0: p = 0.25  H1: p < 0.25

# Tabla de Frecuencia para totales
addmargins(table(Medicamento))

# Test de Proporción
prop.test(608, 2500, p = 0.25, alternative = "less", correct = FALSE)
# Alternative indica la desigualdad en H1
# Correct siempre va en falso
# valor p = 0.2162 -> No se rechaza H0 -> Proporción 

##### b) Aumento Dosis Promedio (> 490) #####
# Parámetro: Media de la dosis
# Hipotesis: H0: mu = 490  H1: mu > 490

t.test(Dosis, mu = 490, alternative = "greater", correct = FALSE )
# Valor p = 0.0132 - Se rechaza H0 -> Dosis Aumenta

##### c) Aumento Dosis Promedio en mujeres (> 490)#####
# Parámetro: Media de la dosis en mujeres
# Hipotesis: H0: mu = 490  H1: mu > 490

# Para separar mujeres:
fem = Tratamientos[Sexo == "Fem", ]
# Segundo argumento vació obtiene todos los datos que cumplen con criterio

t.test(fem$Dosis, mu = 490, alternative = "greater", correct = FALSE )
#Valor p = 0.037 -> Se rechaza H0 -> Dosis Aumenta

##### d) Aumento Dosis Promedio en hombres (> 490)#####
# Parámetro: Media de la dosis en hombres
# Hipotesis: H0: mu = 490  H1: mu > 490

masc = Tratamientos[Sexo == "Masc", ]

t.test(masc$Dosis, mu = 490, alternative = "greater", correct = FALSE )
# Valor p = 0.08577 -> No se rechaza H0 -> Dosis no aumenta

##### e) Presión arterial Hombres vs Mujeres #####
# Parámetro 1: Media Presión arterial en mujeres
# Parámetro 2: Media Presión arterial en hombres
# Hipotesis: H0: mu1 = mu2  H1: mu1 != mu2

# Se utiliza Test de Varianzas y Test de media
var.test(Presión~Sexo, alternative = "two.sided", var.equal = TRUE)
# Valor p = 0.6425 -> Si p > 0.05, varianzas iguales
# Si las varianzas son distintas, se usa var.equal = "FALSE" en t.test 

t.test(Presión~Sexo, alternative = "two.sided", var.equal = TRUE)
# Valor p = 0.4005 -> No se rechaza H0 -> No hay diferencias

##### f) Hipertensivo Hombres vs Mujeres #####
# Parámetro 1: Proporción Hipertensivo en mujeres
# Parámetro 2: Proporción Hipertensivo en hombres
# Hipotesis: H0: p1 = p2  H1: p1 != p2

# Tabla de Medicamento por Sexo
addmargins(table(Medicamento, Sexo))

prop.test(x = c(317, 310), n = c(1235, 1265), alternative = "two.sided", 
          correct = FALSE)
# El orden en los conjuntos (c(a,b)) debe ser el mismo para x y n 
# Ej: a = Datos de Mujeres; b = Datos de Hombres
# Valor p = 0.5027 -> No se rechaza H0 -> No hay diferencia

##### g) Duración Media > 12 Meses #####
# Parámetro: Media de duración en meses
# Hipotesis: H0: mu = 12  H1: mu > 12

t.test(Duracion_meses, mu = 12, alternative = "greater", correct = FALSE)
# Valor p = 0.1525 -> No se rechaza H0 -> Duración no mayor a 12 meses