## code to prepare `ugabore` dataset goes here
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)


## Export Data -----------------------------------------------------------------
usethis::use_data(ugabore, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(ugabore,
                 here::here("inst", "extdata", paste0(ugabore, ".csv")))
openxlsx::write.xlsx(ugabore,
                     here::here("inst", "extdata", paste0(ugabore, ".xlsx")))
