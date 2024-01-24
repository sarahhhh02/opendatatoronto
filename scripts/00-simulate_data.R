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

set.seed(853)

#gather data for samples: date; type of homicide in which neighbourhood intersection
num_rows <- 888

simulated_data <-data.frame(
    dates = seq(ymd("2004-01-01"), ymd("2020-12-31"), by = "week"),
    #year = sample(2004:2023, num_rows, replace = TRUE),
    #month = sample(x = c("January", "Febuary", "March", "April", "May", "June", 
    #                     "July", "August", "September", "October", "November",
    #                     "December"), num_rows, replace = TRUE),
    #day = sample(1:31, num_rows, replace = TRUE),
    #weekday = sample(x = c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday",
    #                       "Friday", "Saturday"), num_rows, replace = TRUE),
    homicide_type = sample(x = c("Stabbing", "Shooting", "Other"), num_rows, replace = TRUE),
    neighbourhood_1 = sample(1:158, num_rows, replace = TRUE),
    neighbourhood_2 = sample(1:140, num_rows, replace = TRUE)
  )


print(simulated_data)






