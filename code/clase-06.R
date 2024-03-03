## Clase 06
## Eduard Martinez
## Update: 2024-02-13
## [1.] Checklist
### Lectures previas
### Script de la clase
### Versión de R
R.version.string


### Librerías
# Instalar/llamar pacman
require("pacman")

# Usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, skimr, janitor, tidyverse)

## [2.] ¿Qué es tidy-data?
### 2.1. Raw data y tidy data
### 2.2. Reglas de un conjunto de datos tidy
### 2.3. tidyverse
# Instalar y cargar el tidyverse en su entorno de R
##install.packages("tidyverse")
library("tidyverse")
filter <- dplyr::filter

## [3.] Adicionar variables a un conjunto de datos



### 3.1. Leer conjuto de datos
db <- import("input/Saber_11__2020-1.csv")
skim(db)
hist(db$PUNT_GLOBAL)


### 3.2 Función $
db$punt_norm <- rnorm(n=15435)
db$punt_global12 <- db$PUNT_GLOBAL/mean(db$PUNT_GLOBAL)

### 3.3 mutate()
df <- mutate(db, constante =1,
             norm=rnorm(15435),
             global_ingles=PUNT_GLOBAL/PUNT_INGLES)




### 3.4 Generar variables usando condicionales:



## Una condicion
df <- mutate(df, 
             d_global=ifelse(test=PUNT_GLOBAL>=mean(PUNT_GLOBAL), yes=1, no= 0))


## varias condiciones
df <- mutate(df, 
             d_250_f=ifelse(ESTU_GENERO=="F" & PUNT_GLOBAL>=250,1,0))
table(df$d_250_f)


set.seed(123)
df <-mutate(df, edad=runif(15435,15,35))

df <- mutate(df,
             rango_Edad=case_when(edad>=15&edad<18~"15-18",
                                  edad>=18&edad<28~"18-28",
                                  edad>=28~">=28"))
table(df$rango_Edad)


### 3.5 Aplicar funciones a variables



## [4.] Remover filas y/o columnas
df$edad =NULL




### 4.1 Seleccionar variables
df2 <- select(.data=df, ESTU_TIPODOCUMENTO, PUNT_GLOBAL)
df3<- select(.data=df, ESTU_TIPODOCUMENTO, )

### 4.2 Remover filas/observaciones