#### Preamble ####
# Purpose: Simulate the data 
# Author: Shuhan Yang
# Data: 24 January 2024
# Contact: jasminesh.yang@mail.utoronto.ca

# Set up the R packages and library 
install.packages("janitor")
library("janitor")
install.packages("knitr")
library("knitr")
install.packages("lubridate")
library("lubridate")
install.packages("opendatatoronto")
library("opendatatoronto")
install.packages("tidyverse")
library("tidyverse")

# Setting seed for reproducibility
set.seed(123)

# Number of rows in the data-set, assume that in this simulated data, there
# are 100 rows 
num_rows <- 100

# Creating columns inside the simulated data based on the three variables the research will base on: Gender, Age, Hospitalized
gender <- sample(c("FEMALE", "MALE", "UNKNOWN", "NON-BINARY", "OTHER", "TRANSGENDER", "TRANS WOMAN", "TRANS MAN", "NOT LISTED"), num_rows, replace = TRUE)
age <- sample(1:100, num_rows, replace = TRUE)
severity <- sample(c("Yes", "No"), num_rows, replace = TRUE)

# Creating a data frame
simulated_data <- data.frame(Gender = gender, Age = age, Hospitalized = severity)

# Displaying the first six rows of the simulated data to have a glance
head(simulated_data)

# Tests for the simulated data
#Test if the simulated data created will generate integer number for the 'Age' Column 
simulated_data$Age |> class() == "integer" 

#Test if the simulated data created will generate string value for the 'Gender' Column 
simulated_data$Gender |> class() == "character" 

#Test if the simulated data created follow the range we set for the 'Age' Column, which is 0-100
simulated_data$Age |> min() >= 0  
simulated_data$Age |> max() <= 100

#Test if the simulated data created follow the range we set for the 'Gender' Column,, which has 9 different types of gender
simulated_data$Gender |>
  unique() |>
  length() == 9