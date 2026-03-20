# install.packages("rio")
library(rio)

# A) Carga de Datos
#Base_lab1 <- rio::import(file.choose())
head(Base_lab1)    # Resumen de Variables y chequea carga de la base
attach(Base_lab1)  # Para referirse directamente a un elemento de la tabla

# B) Tipos de Medicamentos
freq <- table(Medicamento) # Carga variable con datos de la columna Medicamentos
freq_perc <- prop.table(freq) * 100 # prop.table() entrega la proporción

freq_table <- cbind(freq, freq_perc) # primer arg separa los elementos de 
                                     # las columnas y el segundo los datos
View(freq_table)
colnames(freq_table) <- c("Frecuencia Absoluta", "Frecuencia Relativa")
