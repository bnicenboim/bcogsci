library(dplyr)

df_spacebar <- read.csv("data-raw/datasets/button_press.csv") %>%
  as_tibble() %>%
  rename(trial = trialn)

df_contrasts1 <- read.csv("data-raw/datasets/contrasts1.csv") %>%
  as_tibble()

df_contrasts2 <- read.csv("data-raw/datasets/contrasts2.csv") %>%
  as_tibble()

df_contrasts3 <- read.csv("data-raw/datasets/contrasts3.csv") %>%
  as_tibble()

df_contrasts4 <- read.csv("data-raw/datasets/contrasts4.csv") %>%
  as_tibble()

usethis::use_data(df_spacebar, df_contrasts1, df_contrasts2, df_contrasts3, df_contrasts4, overwrite = TRUE)
