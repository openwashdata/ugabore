# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)
library(DataCombine)
library(tidyverse)
library(tidyr)
library(ggplot2)
library(ggthemes)
library(lubridate)
library(readxl)
library(gt)
library(dplyr)
library(knitr)

# Read data --------------------------------------------------------------------
data_in <- read_csv("data-raw/borehole_repair_data.csv") |>
  as_tibble()

# Tidy data --------------------------------------------------------------------
# Rename variable
# Delete last two rows because of missing values
ugabore <- data_in |>
  rename("well_yield" = "well_yield_(m^3/hr)") |>
  head(-2)

# Export Data ------------------------------------------------------------------
usethis::use_data(ugabore, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(ugabore,
                 here::here("inst", "extdata", "ugabore.csv"))
openxlsx::write.xlsx(ugabore,
                     here::here("inst", "extdata", "ugabore.xlsx"))
