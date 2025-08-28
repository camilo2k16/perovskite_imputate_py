#código para los datos del filtro 2 despues de aplicar el filtro manual en excel.

install.packages("openxlsx")
library(openxlsx)

filtro<- read.xlsx("C:\\Users\\ufps\\Desktop\\fair\\data_filtro1.xlsx")

#filtrados de las columnas en las que no aplica el llenado de datos
filtro$Cation.A2[is.na(filtro$Cation.A2)] <- "na"
filtro$Cation.A3[is.na(filtro$Cation.A3)] <- "na"


filtro$Concentracion.A2 <- ifelse(filtro$Cation.A2 == "na", 0, filtro$Concentracion.A2)
filtro$Concentracion.A3 <- ifelse(filtro$Cation.A3 == "na", 0, filtro$Concentracion.A3)


filtro$Anion.C2[is.na(filtro$Anion.C2)] <- "na"
filtro$Concentracion.C2 <- ifelse(filtro$Anion.C2== "na", 0, filtro$Concentracion.C2)

filtro$Perovskite_deposition_solvents.1_state2[is.na(filtro$Perovskite_deposition_solvents.1_state2)] <- "na"
filtro$Perovskite_deposition_solvents_mixing_ratios.1_state2 <- ifelse(filtro$Perovskite_deposition_solvents.1_state2== "na", 0, filtro$Perovskite_deposition_solvents_mixing_ratios.1_state2)

filtro$Perovskite_deposition_solvents.2_state1[is.na(filtro$Perovskite_deposition_solvents.2_state1)] <- "na"
filtro$Perovskite_deposition_solvents_mixing_ratios.2_state1 <- ifelse(filtro$Perovskite_deposition_solvents.2_state1== "na", 0, filtro$Perovskite_deposition_solvents_mixing_ratios.2_state1)




filtro$Perovskite_deposition_thermal_annealing_temperature.1_2[is.na(filtro$Perovskite_deposition_thermal_annealing_temperature.1_2)] <- "na"
filtro$Perovskite_deposition_thermal_annealing_temperature.2_1[is.na(filtro$Perovskite_deposition_thermal_annealing_temperature.2_1)] <- "na"

filtro$Perovskite_deposition_thermal_annealing_time.1_2 <- ifelse(filtro$Perovskite_deposition_thermal_annealing_temperature.1_2== "na", 0, filtro$Perovskite_deposition_thermal_annealing_time.1_2)
filtro$Perovskite_deposition_thermal_annealing_time.2_1 <- ifelse(filtro$Perovskite_deposition_thermal_annealing_temperature.2_1== "na", 0, filtro$Perovskite_deposition_thermal_annealing_time.2_1)



filtro$Backcontact_stack_sequence.2[is.na(filtro$Backcontact_stack_sequence.2)] <- "na"


filtro$ETL_stack_sequence.2_1[is.na(filtro$ETL_stack_sequence.2_1)] <- "na"
filtro$ETL_stack_sequence.3_1[is.na(filtro$ETL_stack_sequence.3_1)] <- "na"

filtro$ETL_thickness.2 <- ifelse(filtro$ETL_stack_sequence.2_1== "na", 0, filtro$ETL_thickness.2)
filtro$ETL_thickness.3 <- ifelse(filtro$ETL_stack_sequence.3_1== "na", 0, filtro$ETL_thickness.3)


filtro$Substrate_stack_sequence.2_1[is.na(filtro$Substrate_stack_sequence.2_1)] <- "na"

#filtrado de las columna con x

filtro$Concentracion.A1 <- sub("x", NA, filtro$Concentracion.A1)
filtro$Concentracion.A2 <- sub("x", NA, filtro$Concentracion.A2)
filtro$Concentracion.A3 <- sub("x", NA, filtro$Concentracion.A3)

filtro$Concentracion.B1 <- sub("x", NA, filtro$Concentracion.B1)

filtro$Concentracion.C1 <- sub("x", NA, filtro$Concentracion.C1)
filtro$Concentracion.C2 <- sub("x", NA, filtro$Concentracion.C2)

#filtrado de las columna con Unkown


filtro$Perovskite_additives_compounds.1 <- sub("Unknown", NA, filtro$Perovskite_additives_compounds.1)
filtro$Perovskite_deposition_solvents.1_state1 <- sub("Unknown", NA, filtro$Perovskite_deposition_solvents.1_state1)
filtro$Perovskite_deposition_solvents.2_state1 <- sub("Unknown", NA, filtro$Perovskite_deposition_solvents.2_state1)
filtro$Perovskite_deposition_thermal_annealing_temperature.1_1 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_temperature.1_1)
filtro$Perovskite_deposition_thermal_annealing_temperature.2_1 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_temperature.2_1)
filtro$Perovskite_deposition_thermal_annealing_temperature.1_2 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_temperature.1_2)
filtro$Perovskite_deposition_thermal_annealing_time.1_1 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_time.1_1)
filtro$Perovskite_deposition_thermal_annealing_time.2_1 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_time.2_1)
filtro$Perovskite_deposition_thermal_annealing_time.1_2 <- sub("Unknown", NA, filtro$Perovskite_deposition_thermal_annealing_time.1_2)
filtro$Backcontact_stack_sequence.1_1 <- sub("Unknown", NA, filtro$Backcontact_stack_sequence.1_1)
filtro$HTL_stack_sequence.1_1 <- sub("Unknown", NA, filtro$HTL_stack_sequence.1_1)
filtro$ETL_stack_sequence.1_1 <- sub("Unknown", NA, filtro$ETL_stack_sequence.1_1)
filtro$Substrate_stack_sequence.1_1 <- sub("Unknown", NA, filtro$Substrate_stack_sequence.1_1)


#filtrado de las columnas con none
filtro$Perovskite_deposition_solvents.1_state1 <- sub("none", "na", filtro$Perovskite_deposition_solvents.1_state1)
filtro$Backcontact_stack_sequence.1_1 <- sub("none", "na", filtro$Backcontact_stack_sequence.1_1)
filtro$HTL_stack_sequence.1_1 <- sub("none", "na", filtro$HTL_stack_sequence.1_1)
filtro$ETL_stack_sequence.1_1 <- sub("none", "na", filtro$ETL_stack_sequence.1_1)
filtro$Substrate_stack_sequence.1_1 <- sub("none", "na", filtro$Substrate_stack_sequence.1_1)
filtro$Perovskite_deposition_solvents.2_state1 <- sub("none", "na", filtro$Perovskite_deposition_solvents.2_state1)

#filtrado de las columnas numericas con nan
filtro$Cation.A3 <- sub("nan", NA, filtro$Cation.A3)
filtro$Perovskite_additives_compounds.1 <- sub("nan", NA, filtro$Perovskite_additives_compounds.1)
filtro$Perovskite_deposition_solvents_mixing_ratios.1_state1 <- sub("nan", NA, filtro$Perovskite_deposition_solvents_mixing_ratios.1_state1)
filtro$Perovskite_deposition_solvents_mixing_ratios.2_state1 <- sub("nan", NA, filtro$Perovskite_deposition_solvents_mixing_ratios.2_state1)
filtro$Backcontact_stack_sequence.1_1 <- sub("nan", NA, filtro$Backcontact_stack_sequence.1_1)
filtro$Backcontact_thickness_list.1 <- sub("nan", NA, filtro$Backcontact_thickness_list.1)
filtro$HTL_stack_sequence.1_1 <- sub("nan", NA, filtro$HTL_stack_sequence.1_1)
filtro$ETL_stack_sequence.1_1 <- sub("nan", NA, filtro$ETL_stack_sequence.1_1)
filtro$ETL_stack_sequence.2_1 <- sub("nan", NA, filtro$ETL_stack_sequence.2_1)
filtro$ETL_thickness.1 <- sub("nan", NA, filtro$ETL_thickness.1)
filtro$ETL_thickness.2 <- sub("nan", NA, filtro$ETL_thickness.2)
filtro$ETL_thickness.3 <- sub("nan", NA, filtro$ETL_thickness.3)


write.xlsx(filtro, "data_filtro2.xlsx")
