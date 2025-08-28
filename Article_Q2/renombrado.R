library(openxlsx)
data_impute_numerica<- read.xlsx("D:\\INFORMACION\\Desktop\\TESIS\\data_completa\\final\\final_final_v3\\missforest2.xlsx")
data_final<- read.xlsx("D:\\INFORMACION\\Desktop\\TESIS\\data_completa\\final\\final_final_v3\\data_filtro_columnasv51.xlsx")

#variable cation.A1
frecuencias <- table(data_numeric$Cation.A1)
resultados_filtrados <- subset(frecuencias, frecuencias > 90)
resultados_filtrados
     
tabla_referencia <- c(185, 91, 229, 5962, 4065, 23752)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Cation.A1_N <- ifelse(data_impute_numerica$Cation.A1_N<90,'otro',sapply(data_impute_numerica$Cation.A1_N, valor_mas_cercano))


data_impute_numerica$Cation.A1_N <- names(resultados_filtrados)[match(data_impute_numerica$Cation.A1_N, resultados_filtrados)]
data_impute_numerica$Cation.A1_N <- ifelse(is.na(data_impute_numerica$Cation.A1_N), 'otro', data_impute_numerica$Cation.A1_N)

frecuencias2 <- table(data_impute_numerica$Cation.A1_N)
frecuencias2

#variable cation.A2
frecuencias <- table(data_numeric$Cation.A2)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

data_impute_numerica$Cation.A2_N <- ifelse(data_impute_numerica$Cation.A2_N<100,'otro',data_impute_numerica$Cation.A2_N)


data_impute_numerica$Cation.A2_N <- names(resultados_filtrados)[match(data_impute_numerica$Cation.A2_N, resultados_filtrados)]
data_impute_numerica$Cation.A2_N <- ifelse(is.na(data_impute_numerica$Cation.A2_N), 'otro', data_impute_numerica$Cation.A2_N)

frecuencias2 <- table(data_impute_numerica$Cation.A2_N)
frecuencias2

#variable cation.A3
frecuencias <- table(data_numeric$Cation.A3)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(3412, 31466)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Cation.A3_N <- ifelse(data_impute_numerica$Cation.A3_N<90,'otro',sapply(data_impute_numerica$Cation.A3_N, valor_mas_cercano))


data_impute_numerica$Cation.A3_N <- names(resultados_filtrados)[match(data_impute_numerica$Cation.A3_N, resultados_filtrados)]
data_impute_numerica$Cation.A3_N <- ifelse(is.na(data_impute_numerica$Cation.A3_N), 'otro', data_impute_numerica$Cation.A3_N)

frecuencias2 <- table(data_impute_numerica$Cation.A3_N)
frecuencias2

#variable cation.B1
frecuencias <- table(data_numeric$Cation.B1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(247, 34108, 457)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Cation.B1_N <- ifelse(data_impute_numerica$Cation.B1_N<100,'otro',sapply(data_impute_numerica$Cation.B1_N, valor_mas_cercano))


data_impute_numerica$Cation.B1_N <- names(resultados_filtrados)[match(data_impute_numerica$Cation.B1_N, resultados_filtrados)]
data_impute_numerica$Cation.B1_N <- ifelse(is.na(data_impute_numerica$Cation.B1_N), 'otro', data_impute_numerica$Cation.B1_N)

frecuencias2 <- table(data_impute_numerica$Cation.B1_N)
frecuencias2

#variable Anion.C1
frecuencias <- table(data_numeric$Anion.C1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(8515, 26345)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Anion.C1_N <- ifelse(data_impute_numerica$Anion.C1_N<100,'otro',sapply(data_impute_numerica$Anion.C1_N, valor_mas_cercano))


data_impute_numerica$Anion.C1_N <- names(resultados_filtrados)[match(data_impute_numerica$Anion.C1_N, resultados_filtrados)]
data_impute_numerica$Anion.C1_N <- ifelse(is.na(data_impute_numerica$Anion.C1_N), 'otro', data_impute_numerica$Anion.C1_N)

frecuencias2 <- table(data_impute_numerica$Anion.C1_N)
frecuencias2


#variable Anion.C2
frecuencias <- table(data_numeric$Anion.C2)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(7718, 27210)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Anion.C2_N <- ifelse(data_impute_numerica$Anion.C2_N<100,'otro',sapply(data_impute_numerica$Anion.C2_N, valor_mas_cercano))


data_impute_numerica$Anion.C2_N <- names(resultados_filtrados)[match(data_impute_numerica$Anion.C2_N, resultados_filtrados)]
data_impute_numerica$Anion.C2_N <- ifelse(is.na(data_impute_numerica$Anion.C2_N), 'otro', data_impute_numerica$Anion.C2_N)

frecuencias2 <- table(data_impute_numerica$Anion.C2_N)
frecuencias2


#variable Perovskite_deposition_solvents.1_state1
frecuencias <- table(data_numeric$Perovskite_deposition_solvents.1_state1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(129, 27293, 4511, 914, 684)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Perovskite_deposition_solvents.1_state1_N <- ifelse(data_impute_numerica$Perovskite_deposition_solvents.1_state1_N<100,'otro',sapply(data_impute_numerica$Perovskite_deposition_solvents.1_state1_N, valor_mas_cercano))


data_impute_numerica$Perovskite_deposition_solvents.1_state1_N <- names(resultados_filtrados)[match(data_impute_numerica$Perovskite_deposition_solvents.1_state1_N, resultados_filtrados)]
data_impute_numerica$Perovskite_deposition_solvents.1_state1_N <- ifelse(is.na(data_impute_numerica$Perovskite_deposition_solvents.1_state1_N), 'otro', data_impute_numerica$Perovskite_deposition_solvents.1_state1_N)

frecuencias2 <- table(data_impute_numerica$Perovskite_deposition_solvents.1_state1_N)
frecuencias2



#variable Perovskite_deposition_solvents.1_state2
frecuencias <- table(data_numeric$Perovskite_deposition_solvents.1_state2)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(13555, 2892, 17866, 17866, 271)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Perovskite_deposition_solvents.1_state2_N <- ifelse(data_impute_numerica$Perovskite_deposition_solvents.1_state2_N<100,'otro',sapply(data_impute_numerica$Perovskite_deposition_solvents.1_state2_N, valor_mas_cercano))


data_impute_numerica$Perovskite_deposition_solvents.1_state2_N <- names(resultados_filtrados)[match(data_impute_numerica$Perovskite_deposition_solvents.1_state2_N, resultados_filtrados)]
data_impute_numerica$Perovskite_deposition_solvents.1_state2_N <- ifelse(is.na(data_impute_numerica$Perovskite_deposition_solvents.1_state2_N), 'otro', data_impute_numerica$Perovskite_deposition_solvents.1_state2_N)

frecuencias2 <- table(data_impute_numerica$Perovskite_deposition_solvents.1_state2_N)
frecuencias2


#variable Perovskite_deposition_solvents.2_state1
frecuencias <- table(data_numeric$Perovskite_deposition_solvents.2_state1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(166, 6964, 306, 27282)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Perovskite_deposition_solvents.2_state1_N <- ifelse(data_impute_numerica$Perovskite_deposition_solvents.2_state1_N<100,'otro',sapply(data_impute_numerica$Perovskite_deposition_solvents.2_state1_N, valor_mas_cercano))


data_impute_numerica$Perovskite_deposition_solvents.2_state1_N <- names(resultados_filtrados)[match(data_impute_numerica$Perovskite_deposition_solvents.2_state1_N, resultados_filtrados)]
data_impute_numerica$Perovskite_deposition_solvents.2_state1_N <- ifelse(is.na(data_impute_numerica$Perovskite_deposition_solvents.2_state1_N), 'otro', data_impute_numerica$Perovskite_deposition_solvents.2_state1_N)

frecuencias2 <- table(data_impute_numerica$Perovskite_deposition_solvents.2_state1_N)
frecuencias2


#variable Backcontact_stack_sequence.1_1
frecuencias <- table(data_numeric$Backcontact_stack_sequence.1_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(10450, 2470, 17750, 275, 1967, 363, 764, 131)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Backcontact_stack_sequence.1_1_N <- ifelse(data_impute_numerica$Backcontact_stack_sequence.1_1_N<100,'otro',sapply(data_impute_numerica$Backcontact_stack_sequence.1_1_N, valor_mas_cercano))


data_impute_numerica$Backcontact_stack_sequence.1_1_N <- names(resultados_filtrados)[match(data_impute_numerica$Backcontact_stack_sequence.1_1_N, resultados_filtrados)]
data_impute_numerica$Backcontact_stack_sequence.1_1_N <- ifelse(is.na(data_impute_numerica$Backcontact_stack_sequence.1_1_N), 'otro', data_impute_numerica$Backcontact_stack_sequence.1_1_N)

frecuencias2 <- table(data_impute_numerica$Backcontact_stack_sequence.1_1_N)
frecuencias2

#variable Backcontact_stack_sequence.2
frecuencias <- table(data_numeric$Backcontact_stack_sequence.2)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(749, 437, 174, 33290)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Backcontact_stack_sequence.2_N <- ifelse(data_impute_numerica$Backcontact_stack_sequence.2_N<100,'otro',sapply(data_impute_numerica$Backcontact_stack_sequence.2_N, valor_mas_cercano))


data_impute_numerica$Backcontact_stack_sequence.2_N <- names(resultados_filtrados)[match(data_impute_numerica$Backcontact_stack_sequence.2_N, resultados_filtrados)]
data_impute_numerica$Backcontact_stack_sequence.2_N <- ifelse(is.na(data_impute_numerica$Backcontact_stack_sequence.2_N), 'otro', data_impute_numerica$Backcontact_stack_sequence.2_N)

frecuencias2 <- table(data_impute_numerica$Backcontact_stack_sequence.2_N)
frecuencias2

#variable HTL_stack_sequence.1_1
frecuencias <- table(data_numeric$HTL_stack_sequence.1_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 340)
resultados_filtrados

tabla_referencia <- c(2206, 1517, 842, 5276, 1603, 18380)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$HTL_stack_sequence.1_1_N <- ifelse(data_impute_numerica$HTL_stack_sequence.1_1_N<340,'otro',sapply(data_impute_numerica$HTL_stack_sequence.1_1_N, valor_mas_cercano))


data_impute_numerica$HTL_stack_sequence.1_1_N <- names(resultados_filtrados)[match(data_impute_numerica$HTL_stack_sequence.1_1_N, resultados_filtrados)]
data_impute_numerica$HTL_stack_sequence.1_1_N <- ifelse(is.na(data_impute_numerica$HTL_stack_sequence.1_1_N), 'otro', data_impute_numerica$HTL_stack_sequence.1_1_N)

frecuencias2 <- table(data_impute_numerica$HTL_stack_sequence.1_1_N)
frecuencias2


#variable ETL_stack_sequence.1_1
frecuencias <- table(data_numeric$ETL_stack_sequence.1_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 340)
resultados_filtrados

tabla_referencia <- c(1578, 7196, 1692, 1505, 18743, 891, 392)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$ETL_stack_sequence.1_1_N <- ifelse(data_impute_numerica$ETL_stack_sequence.1_1_N<340,'otro',sapply(data_impute_numerica$ETL_stack_sequence.1_1_N, valor_mas_cercano))


data_impute_numerica$ETL_stack_sequence.1_1_N <- names(resultados_filtrados)[match(data_impute_numerica$ETL_stack_sequence.1_1_N, resultados_filtrados)]
data_impute_numerica$ETL_stack_sequence.1_1_N <- ifelse(is.na(data_impute_numerica$ETL_stack_sequence.1_1_N), 'otro', data_impute_numerica$ETL_stack_sequence.1_1_N)

frecuencias2 <- table(data_impute_numerica$ETL_stack_sequence.1_1_N)
frecuencias2


#variable ETL_stack_sequence.2_1
frecuencias <- table(data_numeric$ETL_stack_sequence.2_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 340)
resultados_filtrados

tabla_referencia <- c(3320, 959, 406, 13785, 733, 11431)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$ETL_stack_sequence.2_1_N <- ifelse(data_impute_numerica$ETL_stack_sequence.2_1_N<340,'otro',sapply(data_impute_numerica$ETL_stack_sequence.2_1_N, valor_mas_cercano))


data_impute_numerica$ETL_stack_sequence.2_1_N <- names(resultados_filtrados)[match(data_impute_numerica$ETL_stack_sequence.2_1_N, resultados_filtrados)]
data_impute_numerica$ETL_stack_sequence.2_1_N <- ifelse(is.na(data_impute_numerica$ETL_stack_sequence.2_1_N), 'otro', data_impute_numerica$ETL_stack_sequence.2_1_N)

frecuencias2 <- table(data_impute_numerica$ETL_stack_sequence.2_1_N)
frecuencias2


#variable ETL_stack_sequence.3_1
frecuencias <- table(data_numeric$ETL_stack_sequence.3_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 300)
resultados_filtrados

tabla_referencia <- c(575, 32755, 645)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$ETL_stack_sequence.3_1_N <- ifelse(data_impute_numerica$ETL_stack_sequence.3_1_N<340,'otro',sapply(data_impute_numerica$ETL_stack_sequence.3_1_N, valor_mas_cercano))


data_impute_numerica$ETL_stack_sequence.3_1_N <- names(resultados_filtrados)[match(data_impute_numerica$ETL_stack_sequence.3_1_N, resultados_filtrados)]
data_impute_numerica$ETL_stack_sequence.3_1_N <- ifelse(is.na(data_impute_numerica$ETL_stack_sequence.3_1_N), 'otro', data_impute_numerica$ETL_stack_sequence.3_1_N)

frecuencias2 <- table(data_impute_numerica$ETL_stack_sequence.3_1_N)
frecuencias2

#variable Substrate_stack_sequence.1_1
frecuencias <- table(data_numeric$Substrate_stack_sequence.1_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(217, 450, 34098)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Substrate_stack_sequence.1_1_N <- ifelse(data_impute_numerica$Substrate_stack_sequence.1_1_N<100,'otro',sapply(data_impute_numerica$Substrate_stack_sequence.1_1_N, valor_mas_cercano))


data_impute_numerica$Substrate_stack_sequence.1_1_N <- names(resultados_filtrados)[match(data_impute_numerica$Substrate_stack_sequence.1_1_N, resultados_filtrados)]
data_impute_numerica$Substrate_stack_sequence.1_1_N <- ifelse(is.na(data_impute_numerica$Substrate_stack_sequence.1_1_N), 'otro', data_impute_numerica$Substrate_stack_sequence.1_1_N)

frecuencias2 <- table(data_impute_numerica$Substrate_stack_sequence.1_1_N)
frecuencias2


#variable Substrate_stack_sequence.2_1
frecuencias <- table(data_numeric$Substrate_stack_sequence.2_1)
resultados_filtrados <- subset(frecuencias, frecuencias > 100)
resultados_filtrados

tabla_referencia <- c(22506, 12016, 142)

valor_mas_cercano <- function(valor) {
  distancias <- abs(tabla_referencia - valor)
  indice_cercano <- which.min(distancias)
  valor_cercano <- tabla_referencia[indice_cercano]
  return(valor_cercano)
}

data_impute_numerica$Substrate_stack_sequence.2_1_N <- ifelse(data_impute_numerica$Substrate_stack_sequence.2_1_N<100,'otro',sapply(data_impute_numerica$Substrate_stack_sequence.2_1_N, valor_mas_cercano))


data_impute_numerica$Substrate_stack_sequence.2_1_N <- names(resultados_filtrados)[match(data_impute_numerica$Substrate_stack_sequence.2_1_N, resultados_filtrados)]
data_impute_numerica$Substrate_stack_sequence.2_1_N <- ifelse(is.na(data_impute_numerica$Substrate_stack_sequence.2_1_N), 'otro', data_impute_numerica$Substrate_stack_sequence.2_1_N)

frecuencias2 <- table(data_impute_numerica$Substrate_stack_sequence.2_1_N)
frecuencias2


write.xlsx(data_impute_numerica, "perovsvf_2.xlsx")
