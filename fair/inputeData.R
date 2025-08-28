#se selecciona con este código la base de datos de columnas con datos meramente númericos


library(openxlsx)
conjunto<- read.xlsx("C:\\Users\\ufps\\Desktop\\fair\\data_numerica.xlsx")


str(conjunto)
input_data <- conjunto[c("Ref_ID","Cation.A1_N","Concentracion.A1","Cation.A2_N"
                          ,"Concentracion.A2","Cation.A3_N","Concentracion.A3","Cation.B1_N"
                          ,"Concentracion.B1","Anion.C1_N","Concentracion.C1","Anion.C2_N"
                          ,"Concentracion.C2"
                          ,"Perovskite_deposition_solvents.1_state1_N"
                          ,"Perovskite_deposition_solvents_mixing_ratios.1_state1"
                          ,"Perovskite_deposition_solvents.1_state2_N"
                          ,"Perovskite_deposition_solvents_mixing_ratios.1_state2"
                          ,"Perovskite_deposition_solvents.2_state1_N"
                          ,"Perovskite_deposition_solvents_mixing_ratios.2_state1"
                          ,"Perovskite_deposition_thermal_annealing_temperature.1_1"
                          ,"Perovskite_deposition_thermal_annealing_temperature.1_2"
                          ,"Perovskite_deposition_thermal_annealing_temperature.2_1"
                          ,"Perovskite_deposition_thermal_annealing_time.1_1"
                          ,"Perovskite_deposition_thermal_annealing_time.1_2"
                          ,"Perovskite_deposition_thermal_annealing_time.2_1"
                          ,"Backcontact_stack_sequence.1_1_N","Backcontact_stack_sequence.2_N"
                          ,"Backcontact_thickness_list.1","HTL_stack_sequence.1_1_N"
                          ,"HTL_thickness_list.1","ETL_stack_sequence.1_1_N","ETL_thickness.1","ETL_stack_sequence.2_1_N"
                          ,"ETL_stack_sequence.3_1_N","ETL_thickness.2","ETL_thickness.3","Substrate_stack_sequence.1_1_N"
                          ,"Substrate_stack_sequence.2_1_N","Cell_area_measured"
                          ,"JV_default_Voc","JV_default_Jsc","JV_default_FF","JV_default_PCE"
                          ,"Perovskite_band_gap")]

write.xlsx(input_data, "input_data.xlsx")


