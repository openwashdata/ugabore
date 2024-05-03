# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)

# Read data --------------------------------------------------------------------
# data_in <- read_csv("data-raw/dataset.csv") |>
#  as_tibble()
# codebook <- read_excel("data-raw/codebook.xlsx") |>
#  clean_names()

# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here


# Export Data ------------------------------------------------------------------
usethis::use_data(ugabore, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(ugabore,
                 here::here("inst", "extdata", paste0(ugabore, ".csv")))
openxlsx::write.xlsx(ugabore,
                     here::here("inst", "extdata", paste0(ugabore, ".xlsx")))