#### Lab 5 ####
# Para pob. con >30 muestras, se usa Normal, si es menor student-t
library(misty)
head(Datos_vino)
attach(Datos_vino)
##### 1) Media de Calidad #####
###### a) Parámetro de interés: Promedio/Media Poblacional ######
###### b) Media muestral ######
Media_muestral = mean(Calidad)  # 12.43

###### c) Desviación Estándar ######
Desv_Est_muestral = sd(Calidad) # 2.045

###### d) Construir Intervalo de Confianza ######
ci.mean(Calidad, conf.level = 0.95)
# Columnas Low y Upp entregan los márgenes del intervalo
# Lower: 11.76
# Upper: 13.11

###### f) Distintos niveles de confianza ######
ci.mean(Calidad, conf.level = 0.90) # Menos Amplio
ci.mean(Calidad, conf.level = 0.99) # Más Amplio

##### 2) Proporción de Tipo #####
###### a) Proporción vinos dulces ######
###### b) Cantidad vinos dulces ######
Dulces = ifelse(Tipo == "Dulce", 1, 0)
Conteo_dulces = sum(Dulces)

###### c) Proporción muestral ######
num_filas = nrow(Datos_vino) # 38
prop_muestral = Conteo_dulces/num_filas

###### d) Intervalo Confianza Proporción ######
ci.prop(Dulces, method = "wald", conf.level = 0.95)
