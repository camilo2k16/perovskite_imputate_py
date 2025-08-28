library(openxlsx)
data_evaluar<- read.xlsx("D:\\INFORMACION\\Desktop\\TESIS\\pruebas_escala\\base_paraevaluar.xlsx")
data_evaluar$Perovskite_deposition_thermal_annealing_time.1_1 <- log(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_1 + 1)
data_evaluar$Perovskite_deposition_thermal_annealing_time.1_2 <- log(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_2 + 1)
data_evaluar$Perovskite_deposition_thermal_annealing_time.2_1 <- log(data_evaluar$Perovskite_deposition_thermal_annealing_time.2_1 + 1)
data_evaluar$Backcontact_thickness_list.1 <- log(data_evaluar$Backcontact_thickness_list.1 + 1)
data_evaluar$HTL_thickness_list.1 <- log(data_evaluar$HTL_thickness_list.1 + 1)
data_evaluar$ETL_thickness.1 <- log(data_evaluar$ETL_thickness.1 + 1)
data_evaluar$ETL_thickness.2 <- log(data_evaluar$ETL_thickness.2 + 1)
data_evaluar$ETL_thickness.3 <- log(data_evaluar$ETL_thickness.3 + 1)

data_evaluar$HTL_stack_sequence.1_1_N[data_evaluar$HTL_stack_sequence.1_1_N < 340] <- 340
data_evaluar$ETL_stack_sequence.1_1_N[data_evaluar$ETL_stack_sequence.1_1_N < 268] <- 268
data_evaluar$ETL_stack_sequence.2_1_N[data_evaluar$ETL_stack_sequence.2_1_N < 324] <- 324
data_evaluar$ETL_stack_sequence.3_1_N[data_evaluar$ETL_stack_sequence.3_1_N < 155] <- 155

tabla_frecuencia <- table(data_evaluar$ETL_stack_sequence.3_1_N)
tabla_frecuencia



write.xlsx(data_evaluar, "CATE.xlsx")


data_evaluar<- read.xlsx("D:\\INFORMACION\\Desktop\\TESIS\\pruebas_escala\\real_d.xlsx")




data_evaluar$Perovskite_deposition_thermal_annealing_time.1_1 <- ifelse(
  is.na(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_1),
  NA,
  exp(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_1) - 1
)

data_evaluar$Perovskite_deposition_thermal_annealing_time.1_2 <- ifelse(
  is.na(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_2),
  NA,
  exp(data_evaluar$Perovskite_deposition_thermal_annealing_time.1_2) - 1
)

data_evaluar$Perovskite_deposition_thermal_annealing_time.2_1 <- ifelse(
  is.na(data_evaluar$Perovskite_deposition_thermal_annealing_time.2_1),
  NA,
  exp(data_evaluar$Perovskite_deposition_thermal_annealing_time.2_1) - 1
)

data_evaluar$Backcontact_thickness_list.1 <- ifelse(
  is.na(data_evaluar$Backcontact_thickness_list.1),
  NA,
  exp(data_evaluar$Backcontact_thickness_list.1) - 1
)

data_evaluar$HTL_thickness_list.1 <- ifelse(
  is.na(data_evaluar$HTL_thickness_list.1),
  NA,
  exp(data_evaluar$HTL_thickness_list.1) - 1
)

data_evaluar$ETL_thickness.1 <- ifelse(
  is.na(data_evaluar$ETL_thickness.1),
  NA,
  exp(data_evaluar$ETL_thickness.1) - 1
)

data_evaluar$ETL_thickness.2 <- ifelse(
  is.na(data_evaluar$ETL_thickness.2),
  NA,
  exp(data_evaluar$ETL_thickness.2) - 1
)

data_evaluar$ETL_thickness.3 <- ifelse(
  is.na(data_evaluar$ETL_thickness.3),
  NA,
  exp(data_evaluar$ETL_thickness.3) - 1
)

write.xlsx(data_evaluar, "sin_log.xlsx")






