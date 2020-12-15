library(dplyr)

df_spacebar <- read.csv("data-raw/datasets/button_press.csv") %>%
  as_tibble() %>%
  rename(trial = trialn)

df_contrasts1 <- read.csv("data-raw/datasets/contrasts1.csv") %>%
  as_tibble() %>% mutate(F = factor(F))

df_contrasts2 <- read.csv("data-raw/datasets/contrasts2.csv") %>%
  as_tibble() %>% mutate(F = factor(F))

df_contrasts3 <- read.csv("data-raw/datasets/contrasts3.csv") %>%
  as_tibble() %>% mutate(F = factor(F))

df_contrasts4 <- read.csv("data-raw/datasets/contrasts4.csv") %>%
  as_tibble() %>% mutate(A = factor(A), B = factor(B))

df_contrasts5 <- read.csv("data-raw/datasets/contrasts5.csv") %>%
  as_tibble() %>% mutate(F = factor(F), id = factor(id))

df_contrasts6 <- read.csv("data-raw/datasets/contrasts6.csv") %>%
  as_tibble() %>% mutate(F = factor(F), id = factor(id))

df_contrasts7 <- read.csv("data-raw/datasets/contrasts7.csv") %>%
  as_tibble() %>% mutate(A = factor(A), B = factor(B))

df_BF <- read.csv("data-raw/datasets/BF.csv") %>%
  as_tibble() %>% mutate(F = factor(F))

usethis::use_data(df_spacebar, df_contrasts1, df_contrasts2, df_contrasts3, df_contrasts4, df_contrasts5, df_contrasts6, df_contrasts7, df_BF, overwrite = TRUE)
