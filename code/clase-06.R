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
library("tidyverse")
filter <- dplyr::filter

## [3.] Adicionar variables a un conjunto de datos

### 3.1. Leer conjuto de datos
db <- import("input/Saber_11__2020-1.csv")

### 3.2 Función `$`



### 3.3 mutate()


  
### 3.4 Generar variables usando condicionales:



## Una condicion



## varias condiciones



### 3.5 Aplicar funciones a variables



## [4.] Remover filas y/o columnas


### 4.1 Seleccionar variables


### 4.2 Remover filas/observaciones





