#### Preamble ####
# Purpose: Stimulating annual homicide statistics in Toronto   
# Author: Sarah Lee
# Date: 22 January 2024
# Contact: sarahhhh.lee@utoronto.ca 
# License: MIT
# Prerequisites: Know where to get the homicides data


#### Workspace setup ####
#install.packages("tidyverse")
#install.packages("janitor")
#install.packages("opendatatoronto")
#install.packages("tibble")
#install.packages("knitr")
library(tidyverse)
library(janitor)
library(knitr)
library(lubridate)
library(opendatatoronto)
library(tibble)
#### Simulate data ####
# Create a sequence of dates from 2004-01-01 to 2020-12-31

set.seed(225)

#gather data for 20 samples: year; type of homicide in which neighbourhood
homicides_sim <- 
  tibble(
    year = sample(x = 2001:2020, size = 20, replace = TRUE),
    homicide_type = sample(x = c("Stabbing", "Shooting", "Other"), size = 20, replace = TRUE),
    neighbourhood = sample(x = c("Oakdale-Beverley Heights", "Queen West", 
                                 "Kennedy Park", "Church-Wellesley", "Moss Park"), size = 20, replace = TRUE)
  )
print(homicides_sim)




