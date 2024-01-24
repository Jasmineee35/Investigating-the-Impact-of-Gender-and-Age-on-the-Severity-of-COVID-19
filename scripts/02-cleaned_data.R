#### Preamble ####
# Purpose: Clean the actual data acquire from open data toronto for graphical analysis 
# Author: Shuhan Yang
# Data: 24 January 2024
# Contact: jasminesh.yang@mail.utoronto.ca

# Workplace Set up
library(dplyr)
library(lubridate)

# Read in the data-set
covid_data_clean <- read.csv("unedited_data.csv")

# Check if there is any missing values
summary(covid_data_clean)

# Convert the date formats 
covid_data_clean$Episode.Date <- ymd(covid_data_clean$Episode.Date)
covid_data_clean$Reported.Date <- ymd(covid_data_clean$Reported.Date)

# Save the cleaned data
write_csv(
  x = covid_data_clean,
  file = "cleaned_data.csv"
)
