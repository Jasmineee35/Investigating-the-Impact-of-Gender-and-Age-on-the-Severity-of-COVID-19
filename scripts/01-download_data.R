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

#### Acquire the actual data from opendatatoronto ####
covid <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
  list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe") |>
  # Within that package, we are interested in the most up-to-date dataset
  filter(name == 
           "COVID19 cases.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = covid,
  file = "unedited_data.csv"
)