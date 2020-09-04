library(dplyr)

df_spacebar <- read.csv("data-raw/datasets/button_press.csv") %>%
  as_tibble() %>%
  rename(trial = trialn)

usethis::use_data(df_spacebar, overwrite = TRUE)
