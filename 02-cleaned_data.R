#### Data Cleaning ####
library(dplyr)
library(lubridate)

# Read in the dataset
covid_data_clean <- read.csv("unedited_data.csv")

# Check for missing values
summary(covid_data_clean)

# Convert the date formats 
covid_data_clean$Episode.Date <- ymd(covid_data_clean$Episode.Date)
covid_data_clean$Reported.Date <- ymd(covid_data_clean$Reported.Date)

# Standardize categorical data
covid_data_clean$Client.Gender <- tolower(covid_data_clean$Client.Gender)
covid_data_clean$Outcome <- tolower(covid_data_clean$Outcome)

# Save the cleaned data
write_csv(
  x = covid_data_clean,
  file = "cleaned_data.csv"
)

