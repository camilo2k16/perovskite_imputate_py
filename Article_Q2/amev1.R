install.packages("Amelia")
library(Amelia)
??Amelia
AmeliaView()
install.packages("openxlsx")
library(openxlsx)

data_impute<- read.xlsx("C:\\Users\\LENOVO\\Documents\\datos\\input_dataV2.xlsx")

# Contar NA por columna
na_por_columna <- colSums(is.na(data_impute))

# Filtrar las columnas que tienen menos de 10,000 NA
df_filtrado_amelia <- data_impute[, na_por_columna <= 10000]

# Excluir la columna Ref_ID de la imputación
imputar_amelia <- df_filtrado_amelia[, !names(df_filtrado_amelia) %in% "Ref_ID"]

# Definir los límites inferiores como 0 para asegurar valores positivos
lower_bounds <- rep(0, ncol(imputar_amelia))  # Establece el límite inferior como 0 para todas las variables
upper_bounds <- rep(Inf, ncol(imputar_amelia)) # Establece el límite superior como infinito

# Crear una matriz de límites (bounds)
bounds_matrix <- cbind(1:ncol(imputar_amelia), lower_bounds, upper_bounds)

  
# Realizar la imputación excluyendo la variable Ref_ID y aplicando los límites
impute_v3 <- amelia(imputar_amelia, bounds = bounds_matrix)


# Extraer las imputaciones
impute_v3_data1 <- impute_v3$imputations$imp1
impute_v3_data2 <- impute_v3$imputations$imp2
impute_v3_data3 <- impute_v3$imputations$imp3
impute_v3_data4 <- impute_v3$imputations$imp4
impute_v3_data5 <- impute_v3$imputations$imp5

# Guardar los resultados en archivos Excel
write.xlsx(impute_v3_data1, "ameliav1_2.xlsx")
write.xlsx(impute_v3_data2, "ameliav2_2.xlsx")
write.xlsx(impute_v3_data3, "ameliav3_2.xlsx")
write.xlsx(impute_v3_data4, "ameliav4_2.xlsx")
write.xlsx(impute_v3_data5, "ameliav5_2.xlsx")


install.packages("dplyr")
library(dplyr)

# Combinar las cinco imputaciones en un solo conjunto de datos
combined_imputations_v2 <- bind_rows(
  impute_v3_data1 %>% mutate(imputation = 1),
  impute_v3_data2 %>% mutate(imputation = 2),
  impute_v3_data3 %>% mutate(imputation = 3),
  impute_v3_data4 %>% mutate(imputation = 4),
  impute_v3_data5 %>% mutate(imputation = 5)
)




# Extrae las imputaciones
lista_imputaciones <- impute_v3$imputations

# Nombre de las variables en el conjunto de datos
nombres_variables <- names(df_filtrado_amelia)

# Inicializa una lista para almacenar las desviaciones estándar por variable
desviaciones_por_variable <- list()

# Calcula la desviación estándar para cada variable en cada imputación
for (variable in nombres_variables) {
  desviaciones <- sapply(lista_imputaciones, function(imputacion) {
    sd(imputacion[[variable]], na.rm = TRUE)
  })
  
  # Calcula la desviación estándar promedio para la variable
  desviacion_promedio <- mean(desviaciones)
  desviaciones_por_variable[[variable]] <- desviacion_promedio
}

# Convierte la lista a un data frame para una visualización más clara
desviaciones_df <- data.frame(Variable = names(desviaciones_por_variable),
                              Desviacion_Promedio = unlist(desviaciones_por_variable))

print(desviaciones_df)
