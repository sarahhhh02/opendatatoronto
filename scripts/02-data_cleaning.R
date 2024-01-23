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
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####
Homicides_data <- read_csv("inputs/data/Homicides_data.csv")

homicides_cleaned_data <-
  Homicides_data |>
  janitor::clean_names() |>
  select(OCC_YEAR, OCC_MONTH, OCC_DAY, OCC_DOW, HOMICIDE_TYPE, HOOD_158, HOOD_140
         ) |>
  rename(year = OCC_YEAR,
         month = OCC_MONTH,
         day = OCC_DAY,
         day_of_week = OCC_DOW,
         homicide_type = HOMICIDE_TYPE,
         neighbourhood_1 = HOOD_158,
         neighbourhood_2 = HOOD_140
         ) |> 
  tidyr::drop_na()

#### Save data ####
write_csv(homicides_cleaned_data, "outputs/data/homicides_cleaned_data.csv")
