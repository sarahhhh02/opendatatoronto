#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Sarah Lee 
# Date: 20 January 2024 
# Contact: sarahhhh.lee@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
install.packages("tidyverse")
install.packages("dplyr")
install.packages("janitor")
install.packages("knitr")

library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(janitor)
library(knitr)

#### Download data ####
# get package
Homicides_data <- 
  list_package_resources("7d72bbbe-8adc-4b36-8ad1-5359f1c7a9cc") |>
  filter(name == "Homicides - 4326.csv") |>
  get_resource()

print(Homicides_data)

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(
  x = Homicides_data, 
  file = "inputs/data/Homicides_data.csv"
  ) 

         
