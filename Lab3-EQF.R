# Lab 3
## Modelo Binomial ##
# Prob puntual P(X=x)
obj = 2
tot = 5
prob = .8
dbinom(obj, tot, prob)

#Prob Acum.
pbinom(obj, tot, prob)

# Cuantiles
perc = 0.25
qbinom(perc, tot, prob)

## Modelo Poisson ##
# Prob puntual P(X=x)
lamb = 1
obj = .8
dpois(obj, lamb)

#Prob Acum.
ppois(obj, lamb)

# Cuantiles
perc = 0.25
qpois(obj, lamb)

## Modelo Hipergeométrico ##
# Prob puntual P(X=x)
obj = 0
exito = 4
fracaso = 16
muestra = 7
dhyper(obj, exito, fracaso, muestra)

#Prob Acum.
pbinom(obj, tot, prob)

# Cuantiles
perc = 0.25
qbinom(perc, tot, prob)


# Ejercicio 1 (Binomial)
# a) Muestras que cumplen las especif.  y su recorrido es {0,1,2,3,4,5,6,7,8}
# b) Binomial ya que es una cantidad específica de repeticiones de un exp Bernoulli
#    (8) con una probabilidad de 90%
# c) Prob de que todas cumplan / P(X=8)
c1_obj <- 8
c1_tot <- 8
c1_prob <- .9
c1_dbin <- dbinom(c1_obj, c1_tot, c1_prob) # 0.430

# d) <4 muestras cumplan
d1_obj <- 3
d1_tot <- 8
d1_prob <- .9
d1_pbin <- pbinom(d1_obj, d1_tot, d1_prob) # 0.000431

# e) <= 4 muestras cumplan
e1_obj <- 4
e1_tot <- 8
e1_prob <- .9
e1_pbin <- pbinom(e1_obj, e1_tot, e1_prob) # 0.00502

# f) >= 4 muestras cumplan
f1_obj <- 3
f1_tot <- 8
f1_prob <- .9
f1_pbin <- 1-pbinom(f1_obj, f1_tot, f1_prob) # 0.9995

# g) Probs para cada valor de X
g_probs = dbinom(0:8, 8, 0.9)

# h) Gráfica de probabilidades de g
barplot(g_probs, names=c(0:8), col="#008080") # Cody Colour

# -------------------------------------------------------------
# Ejercicio 2 (Poisson)
# a) >20 accidentes en un año
a2_lamb = 20
a2_obj = 20
a2_prob = 1-ppois(a2_obj, a2_lamb) # 0.4409

# b) <=4 accidentes en un trimestre (3 meses)
b2_lamb = 5
b2_obj = 4
b2_prob = ppois(b2_obj, b2_lamb) # 0.4404

# c) >20 accidentes en un año
c2_lamb = 10
c2_obj = 6
c2_prob = 1-ppois(c2_obj, c2_lamb) # 0.8698

# d) Gráfica de probs en un año
d2_lamb = 20
d2_prob = 0:40 # Número mayor a 20
d2_probs = dpois(d2_prob, d2_lamb)

barplot(d2_probs, col = "#ED9121")

# -------------------------------------------------------------
# Ejercicio 3 (Hipergeométrico)
# a) 0 cajas mal etiquetadas
a3_obj = 0
a3_exito = 4
a3_fracaso = 16
a3_muestra = 7
a3_prob = dhyper(a3_obj, a3_exito, a3_fracaso, a3_muestra) # 0.1475
