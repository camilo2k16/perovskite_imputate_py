# Project: Data Imputation in Perovskite Solar Cells

## 📂 Project Description

This repository contains the development of data imputation algorithms applied to perovskite solar cells using the **R programming language**. The main goal is to recover missing values in experimental datasets to improve the accuracy of predictive models and facilitate performance analysis of solar cells.

Various imputation methods are implemented and compared, including:

- Amelia II  
- missForest  
- mice  
- Mean/Mode imputation  
- Interpolation and classical statistical methods

The data used comes from **The Perovskite Database Project** and includes key variables such as *Voc*, *Jsc*, *FF*, *PCE*, and others related to fabrication processes and material properties.

## 📊 Applications

- Performance analysis of solar cells  
- Data preparation for machine learning models  
- Evaluation of the robustness of different imputation methods under varying percentages of missing data

## 🧪 Technologies Used

- R (`dplyr`, `Amelia`, `missForest`, `mice`, `ggplot2`)  
- RMarkdown for reproducible reports  
- Excel / CSV for storage and intermediate analysis  

Models were executed in R on a system running **Windows 11** with **64 GB RAM**.  
In **Google Colab**, where Python models were tested, the maximum available RAM was **12 GB**.

---

## 📋 Table 1. Variable Classification and Units

| Numerical                               | Unit          | Categorical                      |
|----------------------------------------|---------------|----------------------------------|
| Concentracion.A                        | Dimensionless | Cation.A                         |
| Concentracion.B                        | Dimensionless | Cation.B                         |
| Concentracion.C                        | Dimensionless | Anion.C                          |
| Deposition_solvents_mixing_ratios     | Dimensionless | Perovskite_deposition_solvents  |
| Deposition_annealing_temperature       | °C            | Backcontact_stack_sequence       |
| Deposition_annealing_time              | min           | HTL_stack_sequence               |
| Backcontact_thickness                  | μm            | ETL_stack_sequence               |
| HTL_thickness                          | μm            | Substrate_stack_sequence         |
| ETL_thickness                          | μm            |                                  |
| Cell_area_measured                     | cm²           |                                  |
| JV_default_Voc                         | V             |                                  |
| JV_default_Jsc                         | mA/(cm²)      |                                  |
| JV_default_FF                          | Dimensionless |                                  |
| JV_default_PCE                         | Dimensionless |                                  |
| Band_gap                               | eV            |                                  |

---

## 📋 Table 2. Final Subdivision of Variables

| Numerical                                      | Categorical                      |
|-----------------------------------------------|----------------------------------|
| Concentracion.A1                              | Cation.A1                        |
| Concentracion.A2                              | Cation.A2                        |
| Concentracion.A3                              | Cation.A3                        |
| Concentracion.B1                              | Cation.B1                        |
| Concentracion.C1                              | Anion.C1                         |
| Concentracion.C2                              | Anion.C2                         |
| Deposition_solvents_mixing_ratios.1_state1    | Deposition_solvents.1_state1     |
| Deposition_solvents_mixing_ratios.1_state2    | Deposition_solvents.1_state2     |
| Deposition_solvents_mixing_ratios.2_state1    | Deposition_solvents.2_state1     |
| Deposition_annealing_temperature.1_1          | Backcontact_stack_sequence.1_1   |
| Deposition_annealing_temperature.1_2          | Backcontact_stack_sequence.2     |
| Deposition_annealing_temperature.2_1          | HTL_stack_sequence.1_1           |
| Deposition_annealing_time.1_1                 | ETL_stack_sequence.1_1           |
| Deposition_annealing_time.1_2                 | ETL_stack_sequence.2_1           |
| Deposition_annealing_time.2_1                 | ETL_stack_sequence.3_1           |
| Backcontact_thickness_list.1                  | Substrate_stack_sequence.1_1     |
| HTL_thickness_list.1                          | Substrate_stack_sequence.2_1     |
| ETL_thickness.1                               |                                  |
| ETL_thickness.2                               |                                  |
| ETL_thickness.3                               |                                  |
| Cell_area_measured                            |                                  |
| JV_default_Voc                                |                                  |
| JV_default_Jsc                                |                                  |
| JV_default_FF                                 |                                  |
| JV_default_PCE                                |                                  |
| Band_gap                                      |                                  |

---

## 📋 Table 3. Comparison of Implemented Models Requirements

| Model              | Execution Time (min) | RAM Usage (MB) |
|--------------------|----------------------|----------------|
| KNN-Imputer        | 0.5                  | 1200           |
| Iterative Imputer  | 5.5                  | 11000          |
| Amelia II          | 15                   | 700            |
| MICE               | 5                    | 1800           |
| MissForest         | 240                  | 3000           |

---

For more information on the dataset used:  
[The Perovskite Database Project](https://perovskitedatabase.com/)


## 🗂️ Files and Code Included in This Repository

This repository includes several R scripts and data files in `.csv` and `.xlsx` formats, which guide the complete preprocessing and imputation pipeline for the perovskite solar cell dataset.

### R Scripts

#### `Seleccion_variable.R`
- **Input**: `Perovskite_database_content_all_data.csv`
- **Output**: `variables_seleccionadas.csv`

This script selects relevant variables from the original database. The resulting file then undergoes **manual preprocessing**, where:
- Outliers and illogical values are removed,
- Grouped columns containing information separated by symbols such as `,`, `|`, `<<`, or `>>` are split into separate columns,
- Non-informative columns are deleted.

The cleaned result is saved as `data_filtro1.xlsx`.

#### `filtradoDeColumnas.R`
- **Input**: `data_filtro1.xlsx`
- Applies additional filters:
  - Empty values are cleaned,
  - "Unknown" entries are reclassified as missing,
  - Some "NA" values are retained when they represent non-applicable fields (e.g., for structures like METALDEHYDE (MA), only concentration A1 is applicable, and A2/A3 should remain as `NA`).

- **Output**: `data_filtro2.xlsx`

#### `Conversor_Cat_to_Num.R`
- **Input**: `data_filtro2.xlsx`
- Converts categorical variables to numeric representations and appends them to the dataset.

#### `imputeData.R`
- Removes all remaining categorical variables from the dataset, leaving only numeric variables for imputation.

This final dataset is ready for running the imputation models described earlier in this repository.

## 📦 Required R Packages

To run the scripts included in this repository, the following R packages are required:

- `openxlsx` – for reading and writing `.xlsx` files  
- `Amelia` – for multivariate imputation using bootstrapped EM algorithms  
- `randomForest` – used by the `missForest` imputation method  
- `mice` – for multiple imputation by chained equations  
- `dplyr` – for data manipulation and cleaning  

You can install them with the following command:

```r
install.packages(c("openxlsx", "Amelia", "randomForest", "mice", "dplyr"))
