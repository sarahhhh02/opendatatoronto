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
Homicides_data <- read_csv("inputs/data/Homicides_data.csv", show_col_types = FALSE)

Homicides_data <- Homicides_data |> select(OCC_YEAR, OCC_MONTH, OCC_DAY, OCC_DOW, HOMICIDE_TYPE, HOOD_158, HOOD_140)
Homicides_data <- Homicides_data |> rename(year = OCC_YEAR, month = OCC_MONTH, day = OCC_DAY, day_of_week = OCC_DOW) 
                                          
Homicides_data <- clean_names(Homicides_data)

#### Save data ####
write_csv(x = Homicides_data, file = "outputs/data/edited_homicides_data.csv")

