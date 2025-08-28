# Conversión de las variables categoricas a numericas para ser evaluadas usando
# la frecuencia de aparición de cada categoria por variable

library(openxlsx)
data_final<- read.xlsx("C:\\Users\\ufps\\Desktop\\fair\\data_filtro2.xlsx")

data_numeric <- data_final

# Conteo de frecuencias Cation.A1
frecuencias <- table(data_numeric$Cation.A1)

# imputación de la columna numerica Cation.A1
data_numeric$Cation.A1_N <- frecuencias[match(data_numeric$Cation.A1, names(frecuencias))]


frecuencias <- table(data_numeric$Cation.A2)
data_numeric$Cation.A2_N <- frecuencias[match(data_numeric$Cation.A2, names(frecuencias))]


frecuencias <- table(data_numeric$Cation.A3)
data_numeric$Cation.A3_N <- frecuencias[match(data_numeric$Cation.A3, names(frecuencias))]


frecuencias <- table(data_numeric$Cation.B1)
data_numeric$Cation.B1_N <- frecuencias[match(data_numeric$Cation.B1, names(frecuencias))]


frecuencias <- table(data_numeric$Anion.C1)
data_numeric$Anion.C1_N <- frecuencias[match(data_numeric$Anion.C1, names(frecuencias))]


frecuencias <- table(data_numeric$Anion.C2)
data_numeric$Anion.C2_N <- frecuencias[match(data_numeric$Anion.C2, names(frecuencias))]


frecuencias <- table(data_numeric$Perovskite_deposition_solvents.1_state1)
data_numeric$Perovskite_deposition_solvents.1_state1_N <- frecuencias[match(data_numeric$Perovskite_deposition_solvents.1_state1, names(frecuencias))]


frecuencias <- table(data_numeric$Perovskite_deposition_solvents.1_state2)
data_numeric$Perovskite_deposition_solvents.1_state2_N <- frecuencias[match(data_numeric$Perovskite_deposition_solvents.1_state2, names(frecuencias))]


frecuencias <- table(data_numeric$Perovskite_deposition_solvents.2_state1)
data_numeric$Perovskite_deposition_solvents.2_state1_N <- frecuencias[match(data_numeric$Perovskite_deposition_solvents.2_state1, names(frecuencias))]


frecuencias <- table(data_numeric$Backcontact_stack_sequence.1_1)
data_numeric$Backcontact_stack_sequence.1_1_N <- frecuencias[match(data_numeric$Backcontact_stack_sequence.1_1, names(frecuencias))]


frecuencias <- table(data_numeric$Backcontact_stack_sequence.2)
data_numeric$Backcontact_stack_sequence.2_N <- frecuencias[match(data_numeric$Backcontact_stack_sequence.2, names(frecuencias))]


frecuencias <- table(data_numeric$HTL_stack_sequence.1_1)
data_numeric$HTL_stack_sequence.1_1_N <- frecuencias[match(data_numeric$HTL_stack_sequence.1_1, names(frecuencias))]


frecuencias <- table(data_numeric$ETL_stack_sequence.1_1)
data_numeric$ETL_stack_sequence.1_1_N <- frecuencias[match(data_numeric$ETL_stack_sequence.1_1, names(frecuencias))]


frecuencias <- table(data_numeric$ETL_stack_sequence.2_1)
data_numeric$ETL_stack_sequence.2_1_N <- frecuencias[match(data_numeric$ETL_stack_sequence.2_1, names(frecuencias))]


frecuencias <- table(data_numeric$ETL_stack_sequence.3_1)
data_numeric$ETL_stack_sequence.3_1_N <- frecuencias[match(data_numeric$ETL_stack_sequence.3_1, names(frecuencias))]


frecuencias <- table(data_numeric$Substrate_stack_sequence.1_1)
data_numeric$Substrate_stack_sequence.1_1_N <- frecuencias[match(data_numeric$Substrate_stack_sequence.1_1, names(frecuencias))]


frecuencias <- table(data_numeric$Substrate_stack_sequence.2_1)
data_numeric$Substrate_stack_sequence.2_1_N <- frecuencias[match(data_numeric$Substrate_stack_sequence.2_1, names(frecuencias))]


write.xlsx(data_numeric, "data_numerica.xlsx")

