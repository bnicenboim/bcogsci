#' Reaction times in milliseconds from a participant repeatedly pressing the space bar.
#'
#' Data from a participant (author) repeatedly pressing the space bar
#' as fast as possible, without paying attention to any stimuli.
#' The data are reaction times in milliseconds.
#'
#' @format A data frame with 361 rows and 2 variables:
#' \describe{
#'   \item{rt}{Reaction time in milliseconds}
#'   \item{trial}{Trial number}
#' }
#' @source \url{}
"df_spacebar"


#' Average pupil size for one participant sampled every 10ms of the control experiment of \insertCite{wahnPupilSizesScale2016;textual}{bcogsci}.
#'
#' The data contain 10 samples of the average pupil size for
#' participant 701 under no load condition of the experiment from
#' \insertCite{wahnPupilSizesScale2016}{bcogsci}.
#' Notice that this experiment was conducted with the Eyelink-II
#' eyetracker which measures the pupils in arbitrary units
#' \insertCite{hayesMappingCorrectingInfluence2016}{bcogsci}.
#'
#'  Full dataset can be found in the file `PLOS_raw_pupildata_controlexperiment.csv` https://osf.io/qtzjb/
#'
#'
#' @format A data frame with 9 rows and 3 variables:
#' \describe{
#'   \item{time}{Time in milliseconds}
#'   \item{p_size}{Pupil size}
#'   \item{load}{Load condition}
#' }
#' @references
#' \insertAllCited{}
"df_pupil_pilot"



#' Average pupil size for one participant of the control experiment of \insertCite{wahnPupilSizesScale2016;textual}{bcogsci}.
#'
#' The data contain trial averaged pupil size (after 100 ms) for the
#' participant (701) of the experiment from
#' \insertCite{wahnPupilSizesScale2016}{bcogsci}.
#' In this experiment, a participant covertly tracked between
#' zero and five objects among several randomly moving objects
#' on a computer screen. This task is called  multiple object tracking
#' or MOT \insertCite{pylyshynTrackingMultipleIndependent1988}{bcogsci} task. First,
#' several objects appear on the screen, and a subset of them are
#' indicated as "targets" at the beginning. Then, the objects start
#' moving randomly across the screen and become indistinguishable. After
#' several seconds, the objects stop moving and the participant need to
#' indicate which objects were the targets.
#
#' Notice that this experiment was conducted with the Eyelink-II
#' eyetracker which measures the pupils in arbitrary units
#' \insertCite{hayesMappingCorrectingInfluence2016}{bcogsci}.
#'
#'  Full dataset can be found in the file `PLOS_raw_pupildata_controlexperiment.csv` https://osf.io/qtzjb/
#'
#' @format A data frame with 31 rows and 4 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{trial}{Trial number.}
#'   \item{p_size}{Pupil size.}
#'   \item{load}{Load condition.}
#' }
#' @references
#' \insertAllCited{}
"df_pupil"


#' Average pupil size for all the participant of the control experiment of \insertCite{wahnPupilSizesScale2016;textual}{bcogsci}.
#'
#' The data contain trial averaged pupil size (after 100 ms) for the
#' participants of the experiment from
#' \insertCite{wahnPupilSizesScale2016}{bcogsci}.
#' In this experiment, a participant covertly tracked between
#' zero and five objects among several randomly moving objects
#' on a computer screen. This task is called  multiple object tracking
#' or MOT \insertCite{pylyshynTrackingMultipleIndependent1988}{bcogsci} task. First,
#' several objects appear on the screen, and a subset of them are
#' indicated as "targets" at the beginning. Then, the objects start
#' moving randomly across the screen and become indistinguishable. After
#' several seconds, the objects stop moving and the participant need to
#' indicate which objects were the targets.
#
#' Notice that this experiment was conducted with the Eyelink-II
#' eyetracker which measures the pupils in arbitrary units
#' \insertCite{hayesMappingCorrectingInfluence2016}{bcogsci}.
#'
#'  Full dataset can be found in the file `PLOS_raw_pupildata_controlexperiment.csv` https://osf.io/qtzjb/
#'
#' @format A data frame with 2,228 rows and 4 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{trial}{Trial number.}
#'   \item{p_size}{Pupil size.}
#'   \item{load}{Load condition.}
#' }
#' @references
#' \insertAllCited{}
"df_pupil_complete"

#' Free recall data for one  participant of Experiment 1 of \insertCite{oberauerWorkingMemoryCapacity2019;textual}{bcogsci}.
#'
#' Subset of the data of one participant (subj = 10) from Experiment 1 of
#' \insertCite{oberauerWorkingMemoryCapacity2019;textual}{bcogsci}.
#' The participant was
#' presented word lists of varying lengths, and then was asked to recall a word
#' given its position on the list, and type the probed word.
#' (Trials with multiple forced choices were removed).
#'
#' Complete dataset can be found in [df_recall_complete]. Original data can be
#' found in PairsRSS1_all.dat in https://osf.io/qy5sd/.
#'
#' @format A data frame with 92 rows and 7 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{set_size}{Set size: 2, 4, 6, or 8 elements.}
#'   \item{correct}{Correct or not.}
#'   \item{trial}{Trial number.}
#'   \item{block}{Block number.}
#'   \item{session}{Session number.}
#' }
#' @references
#' \insertAllCited{}
"df_recall"




#' Recall data for participants of Experiment 1 of \insertCite{oberauerWorkingMemoryCapacity2019;textual}{bcogsci}.
#'
#' Complete data of participants from Experiment 1 of
#' \insertCite{oberauerWorkingMemoryCapacity2019;textual}{bcogsci}. Participants
#' were presented word lists of varying lengths, and then was asked to recall a
#'  word given its position on the list.
#'
#' Original data can be
#' found in PairsRSS1_all.dat in https://osf.io/qy5sd/.
#'
#' @format A data frame with 92 rows and 7 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{session}{Session number.}
#'   \item{block}{Block number.}
#'   \item{trial}{Trial number.}
#'   \item{set_size}{Set size: 2, 4, 6, or 8 elements.}
#'   \item{response_size_list}{Number of options in the multiple choice task, 0 indicates free recall (by typing).}
#'   \item{response_size_new_words}{Number of lures (non presented words) in the multiple choice task.}
#'   \item{response_category}{Type of answer: either correct, intrusion, or new.}
#'   \item{correct}{Correct or not.}
#' }
#' @references
#' \insertAllCited{}
"df_recall_complete"


#' EEG averages in the N400 spatio-temporal window at the noun region of  \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci}.
#'
#' EEG averages in the N400 spatio-temporal window at the noun region together with
#' the noun Cloze probability for all the participants  of
#' \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci}. Participants
#' were presented with sentences word by word, and the EEG signal was recorded.
#'
#' \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci} presented a
#' replication attempt of an original experiment of
#' \insertCite{delongProbabilisticWordPreactivation2005;textual}{bcogsci}
#' with sentences like the following
#'
#'  a. The day was breezy so the boy went outside to fly a kite.
#'  b. The day was breezy so the boy went outside to fly an airplane.
#'
#' The papers focus on the article (an, an), this dataset has the EEG averages
#' and cloze probability of the *nouns* (kite/airplane)
#'
#' Original data and stimuli can be
#' found in public_noun_data.txt (https://osf.io/q7dsk/) and
#' Stimuli.zip (https://osf.io/acu4r/)
#'
#' @format A data frame with 26,176 rows and 11 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{cloze}{Cloze probability (from 0 to 1)}
#'   \item{lab}{Lab name}
#'   \item{item}{Item number}
#'   \item{n400}{Average N400 signal at the noun.}
#'   \item{sentence}{Sentence up to the article.}
#'   \item{article}{Article (either a or an)}
#'   \item{noun}{Critical region, noun.}
#'   \item{end}{End of the sentence}
#'   \item{cloze_ans}{Number of answers for the noun (Cloze prob. multiplied by 44)}
#'   \item{N}{Number of answers, 44}
#' }
#'
#' @references
#' \insertAllCited{}
"df_eeg_complete"

#
#' EEG averages in the N400 spatio-temporal window at the noun region of  \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci} for one lab.
#'
#' EEG averages in the N400 spatio-temporal window at the noun region together with
#' the noun Cloze probability for the participants  of the Edinburgh's lab in
#' \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci}. Participants
#' were presented with sentences word by word, and the EEG signal was recorded.
#'
#' \insertCite{nieuwlandLargescaleReplicationStudy2018;textual}{bcogsci} presented a
#' replication attempt of an original experiment of
#' \insertCite{delongProbabilisticWordPreactivation2005;textual}{bcogsci}
#' with sentences like the following
#'
#'  a. The day was breezy so the boy went outside to fly a kite.
#'  b. The day was breezy so the boy went outside to fly an airplane.
#'
#' The papers focus on the article (an, an), this dataset has the EEG averages
#' and cloze probability of the *nouns* (kite/airplane)
#'
#' Complete dataset can be found in [df_eeg_complete]. Original data and stimuli can be
#' found in public_noun_data.txt (https://osf.io/q7dsk/) and
#' Stimuli.zip (https://osf.io/acu4r/)
#'
#' @format A data frame with 2,863 rows and 6 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{cloze}{Cloze probability (from 0 to 1)}
#'   \item{item}{Item number}
#'   \item{n400}{Average N400 signal at the noun.}
#'   \item{cloze_ans}{Number of answers for the noun (Cloze prob. multiplied by 44)}
#'   \item{N}{Number of answers, 44}
#' }
#'
#' @references
#' \insertAllCited{}
"df_eeg"


#' Reaction times and accuracy for the Stroop task in \insertCite{ManyLabs3;textual}{bcogsci}.
#'
#'  Reaction times and accuracy  together with condition type and color
#' for the trials of all the participants  of the Stroop task \insertCite{stroop1935studies}{bcogsci} in
#' \insertCite{ManyLabs3;textual}{bcogsci}. For this variant of the Stroop task, participants were presented with one word at the center of the screen, which was either "red", "blue", and "green" (*word*) written in either red, blue, or green font (*color*). In one third of the trials the *word* matched the *color* of the text ("congruent" condition) and in the rest of the trials it did not match ("incongruent" condition). Participants were instructed to only pay attention to the color, and press `1` if the color of the word was red, `2` if it was blue, and `3` if it was green.  The Stroop effect, that is, the difficulty in identifying the color when it mismatches the word in the incongruent condition (e.g., green in color blue) in comparison to a baseline condition, here, the congruent condition (e.g., green in color green) is extremely robust across variations of the task.
#'
#'
#' The complete procedure can be found in https://osf.io/5ykuj/ and the dataset can be found in https://osf.io/n8xa7/.
#'
#' @format A data frame with  rows and  variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{trial}{Trial number.}
#'   \item{condition}{"Congruent" if color and word match, "Incongruent" otherwise.}
#'   \item{word}{Word presented at the screen.}
#'   \item{color}{Color of the word presented at the screen.}
#'   \item{response}{Color responded by the participant}
#'   \item{correct}{Whether the participant answered correctly or not (color==response)}
#'   \item{RT}{Reaction time}
#' }
#'
#' @references
#' \insertAllCited{}
"df_stroop_complete"


#' Reaction times for the correct answers of 50 participants of the Stroop task in  \insertCite{ManyLabs3;textual}{bcogsci}.
#'
#'  Reaction times for the correct answers of 50 participants of the Stroop task  \insertCite{stroop1935studies}{bcogsci} of
#' \insertCite{ManyLabs3;textual}{bcogsci}. For this variant of the Stroop task, participants were presented with one word at the center of the screen, which was either "red", "blue", and "green" (*word*) written in either red, blue, or green font (*color*). In one third of the trials the *word* matched the *color* of the text ("congruent" condition) and in the rest of the trials it did not match ("incongruent" condition). Participants were instructed to only pay attention to the color, and press `1` if the color of the word was red, `2` if it was blue, and `3` if it was green.  The Stroop effect, that is, the difficulty in identifying the color when it mismatches the word in the incongruent condition (e.g., green in color blue) in comparison to a baseline condition, here, the congruent condition (e.g., green in color green) is extremely robust across variations of the task.
#'
#'
#'  Complete dataset can be found in [df_stroop_complete]. The complete procedure can be found in https://osf.io/5ykuj/ and the original dataset can be found in https://osf.io/n8xa7/.
#'
#' @format A data frame with 3058 rows and 4 variables:
#' \describe{
#'   \item{subj}{Subject id.}
#'   \item{trial}{Trial number.}
#'   \item{condition}{"Congruent" if color and word match, "Incongruent" otherwise.}
#'   \item{RT}{Reaction time}
#' }
#'
#' @references
#' \insertAllCited{}
"df_stroop"


#' Mean reading times of interference/facilitation effects in the experiments of the meta analysis of \insertCite{JaegerEngelmannVasishth2017;textual}{bcogsci}.
#'
#' Mean reading times of interference effects in subject-verb dependencies and reflexive/reciprocal-antecedent dependencies in the experiments of the meta analysis of \insertCite{JaegerEngelmannVasishth2017;textual}{bcogsci}. According to similarity-based interference accounts when two nouns are more similar to each other, there is greater processing difficulty (i.e., longer reading times at a critical region). The data contains 77 estimates from twelve experiments.
#'
#' The is dataset is a slightly modified version (namely, column names were changed) of the dataset that can be found in https://osf.io/du3qp. The complete description of the experiments included in the dataset can be found in https://osf.io/4ehyw/.
#'
#' @format A data frame with 3058 rows and 4 variables:
#' \describe{
#'  \item{publication}{}
#'  \item{language}{EN = English, CN = Chinese, HI = Hindi, FR = French, SP = Spanish, AR = Arabic}
#'  \item{method_measure}{Either SPR_RT = Reading times from self-paced reading, or ET_FPRT, first pass reading times from eye-tracking while reading}
#'  \item{cue}{}
#'  \item{int_type}{Type of interference, either pro = proactive, or retro = retroactive}
#'  \item{distr_pos}{Indicates where the distractors are in the sentence}
#' \item{effect}{Estimated mean effect in milliseconds}
#' \item{SE}{Standard error of the effect}
#' \item{target_type}{Match or Mismatch}
#' \item{dep_type}{Type of the dependency investigated: relf = reflexive-antecedent, reci =  reciprocal-antecedent, agreement = subject-verb/agreement attraction, nonagreement = subject-verb}
#' \item{verb_type}{}
#' \item{prominence1}{}
#' \item{prominence2}{}
#' }
#'
#' @references
#' \insertAllCited{}
"df_sbi_complete"


#' Mean reading times of interference effects in subject-verb dependencies in the experiments of the meta analysis of \insertCite{JaegerEngelmannVasishth2017;textual}{bcogsci}.
#'
#' Mean reading times of interference effects in subject-verb dependencies in the experiments of the meta analysis of \insertCite{JaegerEngelmannVasishth2017;textual}{bcogsci}. According to similarity-based interference accounts when two nouns are more similar to each other, there is greater processing difficulty (i.e., longer reading times at a critical region). The data contains 12 estimates.
#'
#' Complete dataset can be found in [df_sbi_complete].
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{publication}{}
#' \item{effect}{Estimated mean effect in milliseconds}
#' \item{SE}{Standard error of the effect}
#' }
#'
#' @references
#' \insertAllCited{}
"df_sbi"


#' Simulated data with response times as a function of a between-subject 2-level factor F.
#'
#' The condition means are exactly 0.8 and 0.4 seconds.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#' d <- mvrnorm(n=5, mu=c(0.8, 0.4), Sigma=diag(2)*0.2^2, empirical=TRUE)
#' df_contrasts1 <- d %>% as.data.frame() %>% gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#' levels(df_contrasts1$F) <- c("F1", "F2")
#'
#' @format A data frame with 10 rows and 3 variables:
#' \describe{
#' \item{F}{Between subject factor with factor levels F1 and F2}
#' \item{DV}{Dependent variable, response time in seconds}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts1"


#' Simulated data with response times from a lexical decision task as a function of a 3-level between-subject factor "word frequency".
#'
#' The simulated data contains data from word frequency levels "low", "medium", and "high". Word frequency is manipulated between subjects here (usually it is a within-subject manipulation).
#' The condition means are exactly 500, 450, and 400 milliseconds for low, medium, and high frequency words.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#' d2 <- mvrnorm(n=4, mu=c(500, 450, 400), 
#'               Sigma=diag(3)*20^2, empirical=TRUE)
#' df_contrasts2 <- d2 %>% as.data.frame() %>% 
#'   gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#' levels(df_contrasts2$F) <- c("low", "medium", "high")
#' df_contrasts2$DV <- round(df_contrasts2$DV)
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{F}{Between subject factor word frequency with factor levels "low", "medium", and "high"}
#' \item{DV}{Dependent variable, response time in milliseconds}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts2"


#' Simulated data with response times as a function of a 4-level between-subject factor.
#'
#' The condition means are exactly 10, 20, 10, and 40.
#' It could be assumed that the four factor levels `F1` to `F4` reflect levels of word frequency, including the levels `low`, `medium-low`, `medium-high`, and `high` frequency words, and that the dependent variable (DV) reflects some response time.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#' d3 <- mvrnorm(n=5, mu=c(10, 20, 10, 40), Sigma=diag(4)*10^2, empirical=TRUE)
#' df_contrasts3 <- d3 %>% as.data.frame() %>% gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#' levels(df_contrasts3$F) <- c("F1", "F2", "F3", "F4")
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{F}{Between subject factor with factor four levels (F1, F2, F3, F4)}
#' \item{DV}{Dependent variable}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts3"


#' Simulated data with response times from a 2 x 2 between subject design.
#'
#' The condition means are exactly 10, 20, 10, and 40; means and standard deviations are exactly the same as in `df_contrasts3`.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#' d4 <- mvrnorm(n=5, mu=c(10, 20, 10, 40), Sigma=diag(4)*10^2, empirical=TRUE)
#' df_contrasts4 <- d4 %>% as.data.frame() %>% gather(key="A", value="DV") %>%
#'   mutate(id=1:nrow(.), B=factor(A), A=factor(A))
#' levels(df_contrasts4$A) <- c("A1","A1","A2","A2")
#' levels(df_contrasts4$B) <- c("B1","B2","B1","B2")
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{A}{Between subject factor with factor two levels (A1, A2)}
#' \item{B}{Between subject factor with factor two levels (B1, B2)}
#' \item{DV}{Dependent variable}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts4"
