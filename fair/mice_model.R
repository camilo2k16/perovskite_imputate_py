# Cargar la librería mice
library(mice)
library(dplyr)
library(purrr)
library(openxlsx)



data_paraevaluar<- read.xlsx("D:\\INFORMACION\\Desktop\\TESIS\\data_completa\\final\\final_final_v3\\input_dataV2.xlsx")

# Contar NA por columna
na_por_columna <- colSums(is.na(data_paraevaluar))

# Filtrar las columnas que tienen menos de 10,000 NA
df_filtrado_mice <- data_paraevaluar[, na_por_columna <= 10000]



# Calcular la matriz de predicción excluyendo predictores problemáticos
pred_matrix <- mice::quickpred(df_filtrado_mice, minpuc = 0.5, include = NULL)

# Cambiar el método de imputación para la variable con tendencia al error
method <- mice::make.method(df_filtrado_mice)
method["Cation.A1_N"] <- "mean"

imp <- mice(df_filtrado_mice, method = method, predictorMatrix = pred_matrix, ridge =1.05939e-17)



# Crear una lista con todos los conjuntos de datos imputados
imputations_list <- lapply(1:imp$m, function(i) complete(imp, i))

# Calcular el promedio para cada posición
average_imputations_mice <- imputations_list %>%
  reduce(`+`) %>%
  mutate(across(everything(), ~ ./length(imputations_list)))

write.xlsx(average_imputations_mice, "MICE.xlsx")  # Dividir por el número de imputaciones para obtener el promedio
