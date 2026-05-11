##### Lab 4 #####
#### Gráficas de Densidad ####
min = 0
max = 50
aumento = 1
x = seq(min, max, aumento)

media = 25
desvest = 5
plot(x, dnorm(x, mean = media, sd = desvest), type = "l", lwd = 2, 
     col = "#BF5700")

miny = 0
maxy = 70
aumentoy = 1

y = seq(miny, maxy, aumentoy)

mediay = 35
desvesty = 8
plot(y, dnorm(y, mean = mediay, sd = desvesty), type = "l", lwd = 2, 
     col = "#004225")

# Para graficar ambos en un solo gráfico: Usar lines y ejecutar juntos 
plot(x, dnorm(x, mean = media, sd = desvest), type = "l", lwd = 2, 
     col="#BF5700")
lines(y, dnorm(y, mean = mediay, sd = desvesty), type = "l", lwd = 2, 
      col = "#004225")

#### Probabilidades ####
# Media: 25, Desvest: 5, Prob X < 24 kg
media_p1 = 25
desvest_p1 = 5
obj_p1 = 24

pnorm(obj_p1, media_p1, desvest_p1) # 0.4207

# Prob X > 24 kg
1 - pnorm(obj_p1, media_p1, desvest_p1) # 0.5792

# Prob 24kg  < X < 25 kg
pnorm(25, media_p1, desvest_p1) - pnorm(24, media_p1, desvest_p1) # 0.0792

# Muestra de 10, X <= 2 pesen < 23 kg
prob_muestra = pnorm(23, media_p1, desvest_p1) # Primero Normal, 
                                               # luego binomial (es una muestra)
pbinom(2, 10, prob) # 0.2734

#### Percentiles ####
media_q = 25
desvest_q = 5
percentil_q1 = 0.25

qnorm(percentil_q1, media_q, desvest_q) # 21.62 

percentil_q2 = 0.75

qnorm(percentil_q2, media_q, desvest_q) # 28.37

percentil_q3 = 0.5
qnorm(percentil_q3, media_q, desvest_q) # 25

#### Ejercicio 4 Guía ####
# a)
media_g4 = 1.48
desvest_g4 = 0.28
pnorm(1.3, media_g4, desvest_g4) - pnorm(1, media_g4, desvest_g4) # 0.2169

