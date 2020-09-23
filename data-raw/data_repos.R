
library(httr)

### pupil data

GET("https://osf.io/z43dz//?action=download",
    write_disk("data-raw/data_repos/PLOS_raw_pupildata_controlexperiment.csv", overwrite = TRUE),
    progress()
)

df_pupil_full_control <- read.csv("data-raw/data_repos/PLOS_raw_pupildata_controlexperiment.csv") %>%
  rename(p_size = Pupilsize, load = Attentionalload, trial = Trial, time = Time) %>%
  as_tibble()

# "Pilot" data
df_pupil_pilot <- df_pupil_full_control %>%
  filter(Subnum==701, load ==0,time < 100, trial == 5) %>%
  select(time, p_size, load)

# Averaged by trial data
df_pupil_complete <- df_pupil_full_control %>%
  filter(time > 100) %>%
  rename(subj = Subnum)   %>%
  group_by(subj, trial, load) %>%
  summarize(p_size = mean(p_size, na.rm= TRUE)) %>%
  filter(!is.na(subj))

df_pupil   <- filter(df_pupil_complete, subj==701)
#### Working memory data

GET("https://osf.io/6r9ka//?action=download",
    write_disk("data-raw/data_repos/PairsRSS1_all.dat", overwrite = TRUE),
    progress()
)

dat <- read.table("data-raw/data_repos/PairsRSS1_all.dat", header = FALSE)
names(dat) <- c("id", "session", "block", "trial", "setsize",
                "rsizeList", "rsizeNPL", "tested", "response", "rcat", "rt")
dat$rsize <- dat$rsizeList + dat$rsizeNPL  # total response set size (NPL = not-presented lures = new words)
dat$correct <- dat$rcat==1
dat$intrusion <- dat$rcat==2
dat$new <- dat$rcat==3

df_recall_complete <- as_tibble(dat) %>%
  rename(subj =id, set_size = setsize,
         response_size_list =rsizeList,
         response_size_new_words = rsizeNPL) %>% #NPL = not-presented lures
  mutate(correct = as.integer(correct),
    response_category = case_when( rcat ==1 ~ "correct",
                                        rcat ==2 ~ "intrusion",
                                        rcat ==3 ~ "new")) %>%
    select(-rsize, -rcat, -new, -intrusion)

df_recall <- df_recall_complete %>%
  # and we only use the data from the free recall task:
  # (when there was no list of possible responses)
  filter(response_size_list + response_size_new_words == 0) %>%
  # We select one subject
  filter(subj == 10)  %>%
  select(subj, set_size, correct, trial, session, block, tested)


usethis::use_data(df_pupil,
                  df_pupil_complete,
                  df_pupil_pilot,
                  df_recall_complete,
                  df_recall,
                  overwrite = TRUE)


