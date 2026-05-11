## code to prepare `DATASET` dataset goes here
library(forecast)
library(tidyverse)
library(here)
library(readxl)
library(viridis)
library(patchwork)
library(kableExtra)
library(ggrepel)
library(tsibble)
library(fable)
library(fabletools)
#data <- read_excel(here("data_august_2025", "Updated_Data_set_11_8_2025.xlsx"))
data <- read_excel(here("data-raw", "Updated_Data_set_11_8_2025.xlsx"))
data <- data |> rename(Latex = `Latex(kg)`,
                       Rainfall = `Rainfall(mm)`)
data$Year <- ts(data$Year, frequency = 1, start = 2013)
data$Uprooted_trees <- as.numeric(data$Uprooted_trees)
data$Fertilizer_applied_trees <- as.numeric(data$Fertilizer_applied_trees)
data$Stimulant_applied_trees <- as.numeric(data$Stimulant_applied_trees)
data$Pests_and_diseases_infected_trees <- as.numeric(data$Pests_and_diseases_infected_trees)
data$Labour_turnover <- as.numeric(data$Labour_turnover)
data$No_of_Sinhala_labours <- as.numeric(data$No_of_Sinhala_labours)
data$No_of_Tamil_labours <- as.numeric(data$No_of_Tamil_labours)
data$RPC <- as.factor(data$RPC)
data$Zone <- as.factor(data$Zone)
data$Estate <- as.factor(data$Estate)
data$Division <- as.factor(data$Division)
data$Month <- factor(data$Month, levels = c("Jan",
                                            "Feb",
                                            "Mar",
                                            "Apr",
                                            "May",
                                            "Jun",
                                            "Jul",
                                            "Aug",
                                            "Sep",
                                            "Oct",
                                            "Nov",
                                            "Dec"))
data$Year <- as.factor(data$Year)
data$Estate <- as.factor(data$Estate)
srilankalatex <- data

usethis::use_data(srilankalatex, overwrite = TRUE)
