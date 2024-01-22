#### Preamble ####
# Purpose: Stimulating annual homicide statistics in Toronto   
# Author: Sarah Lee
# Date: 22 January 2024
# Contact: sarahhhh.lee@utoronto.ca 
# License: MIT
# Prerequisites: Know where to get the homicides data


#### Workspace setup ####
install.packages("tidyverse")
install.packages("janitor")
install.packages("opendatatoronto")
install.packages("tibble")
#install.packages("knitr")
library(tidyverse)
library(janitor)
#library(knitr)
library(lubridate)
library(opendatatoronto)
library(tibble)
#### Simulate data ####
# [...ADD CODE HERE...]

set.seed(1000)

stimulated_homicides_data <- 
  tibble(
    date = rep(x = as.Date("2004-01-03") + c(0:364), times = 3),
    neighbourhood = c(
      rep(x = "Oakdale-Beverley Heights", times = 365),
      rep(x = "West Queen West", times = 365),
      rep(x = "Kennedy Park", times = 365),
      rep(x = "Church-Wellesley", times = 365),
      rep(x = "Moss Park", times = 365)
    ),
    homicide_type = c(
      rep(x = "Stabbing", times = 365),
      rep(x = "Shooting", times = 365),
      rep(x = "Other", times = 365)
    )
  )


