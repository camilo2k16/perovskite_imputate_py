install.packages("missForest")
library(missForest)



data_inputada_miss <- read.xlsx("C:\\Users\\LENOVO\\Documents\\datos\\input_dataV2.xlsx")


# Contar NA por columna
na_por_columna <- colSums(is.na(data_inputada_miss))

# Filtrar las columnas que tienen menos de 10,000 NA
df_filtrado <- data_inputada_miss[, na_por_columna <= 10000]




imp <- missForest(df_filtrado,maxiter = 10, ntree = 100, verbose = TRUE, variablewise = TRUE)
imp$OOBerror
  
sapply(data_inputada, class)

dflimpio<-as.data.frame(imp$ximp)
View(dflimpio)


write.xlsx(dflimpio,"missforest2.xlsx")