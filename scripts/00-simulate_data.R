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

#### Simulate data####
# Setting seed for reproducibility
set.seed(123)

# Number of rows in the dataset, assume that in this simulated data, there
# are 100 rows 
num_rows <- 100

# Creating columns inside the simulated data
gender <- sample(c("MALE", "FEMALE"), num_rows, replace = TRUE)
age <- sample(1:100, num_rows, replace = TRUE)
icu <- sample(c("Yes", "No"), num_rows, replace = TRUE)

# Creating a data frame
simulated_data <- data.frame(Gender = gender, Age = age, Ever_In_ICU = icu)

# Displaying the first few rows of the simulated data
head(simulated_data)
