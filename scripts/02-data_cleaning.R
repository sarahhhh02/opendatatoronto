#### Preamble ####
# Purpose: Cleans the raw homicides data recorded by the Toronto Police
# Author: Sarah Lee 
# Date: 23 January 2024
# Contact: sarahhhh.lee@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
install.packages("dplyr")
library(opendatatoronto)
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####
Homicides_data <- read_csv("inputs/data/Homicides_data.csv")


Homicides_data <- clean_names(Homicides_data)

cleaned_data <-
  Homicides_data |>
  janitor::clean_names() |>
  select(Occurence_year, Occurence_month, Occurence_day, Occurence_dow, Homicide_type, Hood_158, Hood_140) |>
  tidyr::drop_na()|> # drop all non valid entry
  rename(Year = Occurence_year, Month = Occurence_month, OCC_DAY = Occurence_day, Day_of_week = Occurence_dow) 

#### Save data ####
write_csv(x = Homicides_data, file = "outputs/data/edited_homicides_data.csv")

