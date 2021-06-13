library(dplyr)
library(httr)
library(readxl)
library(bcogsci)
library(stringr)
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
  select(time, p_size)

# Averaged by trial data
df_pupil_complete <- df_pupil_full_control %>%
  filter(time > 100) %>%
  rename(subj = Subnum)   %>%
  group_by(subj, trial, load) %>%
  summarize(p_size = mean(p_size, na.rm= TRUE)) %>%
  filter(!is.na(subj)) %>%
  ungroup()

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


### N400 data

GET("https://osf.io/q7dsk//?action=download",
    write_disk("data-raw/data_repos/public_noun_data.txt", overwrite = TRUE),
    progress()
    )
get("https://osf.io/acu4r///?action=download",
    write_disk("data-raw/data_repos/stimuli.zip", overwrite = true),
    progress()
    )



df_eeg_complete <- read.csv("data-raw/data_repos/public_noun_data.txt", sep = "\t") %>%
  as_tibble() %>%
  mutate(item = item - 100) %>%
  select(- segment,
         subj = subject)


cloze_xlsx <- unzip("data-raw/data_repos/stimuli.zip",
                    files = "stimuli/sentence materials/replication_items.xlsx", exdir = tempdir())

cloze_n <- read_xlsx(cloze_xlsx) %>%
    {
        bind_rows(
            dplyr::select(., item = `Item Number`,
                          sentence = `Sentence context`,
                                                       article = `Expected...3`,
                                                       cloze = `Norming...8`,
                                                       noun = `Expected...7`,
                                                       end = `Sentence Ending`),
            dplyr::select(., item = `Item Number`,
                          sentence = `Sentence context`,
                                                       article = `Unexpected...5`,
                                                       cloze =  `Norming...10`,
                                                       noun = `Unexpected...9`,
                                                       end = `Sentence Ending`))}

df_eeg_complete <-  df_eeg_complete %>%
  left_join(cloze_n) %>% mutate(
         cloze = cloze /100,
         cloze_ans = round(cloze * 44),
         N = 44)


df_eeg <- df_eeg_complete %>%
 filter(lab=="edin") %>%
  # choose only the relevant columns:
  select(subj, cloze, item, n400, cloze_ans, N) %>%
  # we simplify the subjects id
  mutate(subj = as.factor(subj) %>% as.numeric())

### STROOP data

GET("https://osf.io/n8xa7//?action=download",
    write_disk("data-raw/data_repos/StroopCleanSet.zip", overwrite = TRUE),
    progress()
    )

stroop_csv <- unzip("data-raw/data_repos/StroopCleanSet.zip",
                    files = "StroopCleanSet.csv", exdir = "data-raw/data_repos")

df_stroop_complete <- read.csv("data-raw/data_repos/StroopCleanSet.csv", header = TRUE)  %>%
  # rename unintuitive column names:
  rename(correct= trial_error,
         RT = trial_latency,
         condition = congruent) %>%
  mutate(subj = session_id %>%
           as.factor() %>%
           as.numeric(),
         word = str_match(trial_name,"(.*?)\\|")[,2] %>%
           str_to_lower,
         color = str_match(block_name,"(.*?)\\|")[,2] %>%
           str_to_lower,
         ) %>%
  as_tibble() %>%
  select(subj, trial = trial_number, condition, word, color, response = trial_response, correct, RT)


df_stroop <- df_stroop_complete %>%
  filter(correct == 1, subj <= 50) %>%
  select(subj, trial, condition, RT)


## Meta analysis:
##
##

GET("https://osf.io/du3qp///?action=download",
    write_disk("data-raw/data_repos/MetaAnalysisData.csv", overwrite = TRUE),
    progress()
)

df_sbi_complete <- read.csv("data-raw/data_repos/MetaAnalysisData.csv", sep = ";", header = TRUE) %>%
  select(publication = Publication,
         language = Lang,
         method_measure = Method_Measure,
         cue = Cue,
         int_type = IntType,
         distr_pos = DistrPos,
         effect = Effect,
         SE,
         target_type = TargetType,
         dep_type = DepType,
         verb_type = VerbType,
         prominence1 = Prominence1,
         prominence2 = Prominence2) %>%
  as_tibble()


df_sbi <- df_sbi_complete %>%
  filter(target_type == "Match", dep_type == "nonagreement") %>%
  select(publication, effect, SE)

GET("https://osf.io/ktmhu/////?action=download",
    write_disk("data-raw/data_repos/moving_dots.csv", overwrite = TRUE),
    progress()
)

df_dots <- read.csv("data-raw/data_repos/moving_dots.csv") %>%
  mutate(diff = ifelse(ease == 1, "hard", "easy"),
         emphasis = ifelse(sa == 1, "speed", "accuracy"),
         rt = rt * 1000, fix.dur = fix.dur * 1000) %>%
  select(subj = pp, diff, emphasis, rt, acc = correct, fix_dur = fix.dur, stim, resp,  trial, block, block_trial = block.trial, bias) %>%
  as_tibble()

####
####
GET("https://ndownloader.figshare.com/articles/6834353/versions/1?action=download",
    write_disk("data-raw/data_repos/6834353.zip", overwrite = TRUE),
    progress()
)

df_ab_txt <- unzip("data-raw/data_repos/6834353.zip",
                    files = "ab dataset UK.txt", exdir = tempdir())


df_ab_complete <- read.table(df_ab_txt, header=TRUE,dec = ".")


df_ab_complete <- df_ab_complete %>% select(subj = nsub,
                                            gender = subsex,
                                            age = subage,
                 condition,
                 trial,
                 lag,
                 probe_presence,
                 probe_correct = rispAC_probe,
                 target_correct = rispAC_target,
                 target_position,
                 target_letter,
                 target_letter_response = rispSE_target,
                 probe_response = rispSE_probe,
                 string) %>% as_tibble()

df_ab <- df_ab_complete %>%
  filter(probe_presence == 1, condition == "experimental", target_correct == 1) %>%
  select(subj, probe_correct, trial, lag)


usethis::use_data(df_pupil,
                  df_pupil_complete,
                  df_pupil_pilot,
                  df_recall_complete,
                  df_recall,
                  df_eeg_complete,
                  df_eeg,
                  df_stroop,
                  df_stroop_complete,
                  df_sbi_complete,
                  df_sbi,
                  df_dots,
                  df_ab,
                  df_ab_complete,

                  overwrite = TRUE)
