#### Preamble ####
# Purpose: Acquire the actual data from public source: open data toronto
# Author: Shuhan Yang
# Data: 24 January 2024
# Contact: jasminesh.yang@mail.utoronto.ca

# Setting up the R packages and library 
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

# Load in the data that the paper is interested in working on
covid <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
  list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe") |>
  # Within that package, we are interested in the most up-to-date (year 2024) data-set
  filter(name == 
           "COVID19 cases.csv") |>
  # Having reduced the data-set to one row we can get the resource
  get_resource()

# Save the actual data into a csv file
write_csv(
  x = covid,
  file = "unedited_data.csv"
)

