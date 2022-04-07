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

#' Reading times of the self-paced reading experiment 1 conducted by  \insertCite{grodnergibson2005;textual}{bcogsci}.
#'
#' Reading times of every region of Experiment 1 of \insertCite{grodnergibson2005;textual}{bcogsci}.
#'
#' The experiment examined sentences with object-RC (relative clauses) vs sentences with subject-RC, such as the following (regions are indicated with |):
#'
#' - (SRC) The reporter | who | the photographer | sent | to the editor | hoped for a story.
#' - (ORC) The reporter | who | sent | the photographer | to the editor | hoped for a story.
#'
#' The is dataset is a slightly modified version (namely, column names were changed, and a an error in word position column was fixed) of the original dataset. The complete description of the experiments included in the dataset can be found in \insertCite{grodnergibson2005;textual}{bcogsci}.
#'
#' @format A data frame with 10,331 rows and 8 variables:
#' \describe{
#'  \item{subj}{}
#'  \item{item}{}
#' \item{condition}{ Either object-RC (objgap) or subject-RC (subjgap).}
#' \item{word_position}{Word number in the sentence.}
#' \item{region_position}{Region position (see example above)}
#' \item{RT}{Reading times in milliseconds}
#' \item{residRT}{Residual reading times computed by subtracting variance due to length from unadjusted reading times (using the procedure described by Frazier & Clifton, 1986).}
#' \item{qcorrect}{Whether the comprehension question was answered correctly or not.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_gg05_complete"

#' Reading times at the critical regions of the self-paced reading experiment 1 conducted by  \insertCite{grodnergibson2005;textual}{bcogsci}.
#'
#' Reading times at the critical regions of sentences of Experiment 1 of \insertCite{grodnergibson2005;textual}{bcogsci}.
#'
#'
#' The experiment examined sentences with object-RC (relative clauses) vs sentences with subject-RC, such as the following (the critical region is indicated in bold).
#'
#' - (SRC) The reporter who the photographer *sent* to the editor hoped for a story.
#' - (ORC) The reporter who *sent* the photographer to the editor hoped for a story.
#'
#' Complete dataset can be found in [df_gg05_complete]
#'
#' @format A data frame with 673 rows and 6 variables:
#' \describe{
#'  \item{subj}{}
#'  \item{item}{}
#' \item{condition}{ Either object-RC (objgap) or subject-RC (subjgap).}
#' \item{RT}{Reading times in milliseconds}
#' \item{residRT}{Residual reading times computed by subtracting variance due to length from unadjusted reading times (using the procedure described by Frazier & Clifton, 1986).}
#' \item{qcorrect}{Whether the comprehension question was answered correctly or not.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_gg05_rc"


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
#'
#' d <- mvrnorm(n=5, mu=c(0.8, 0.4), Sigma=diag(2)*0.2^2, empirical=TRUE)
#'
#' df_contrasts1 <- d %>% as.data.frame() %>% gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#'
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


#' Simulated data with response times from a lexical decision task as a function of a 3-level between-subject factor "word class".
#'
#' The simulated data contains data from word classes "nouns", "verbs", and "adjectives". Word class is manipulated between subjects here (usually it is a within-subject manipulation).
#' The condition means are exactly 500, 450, and 400 milliseconds for nouns, verbs, and adjectives words.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#'
#' d2 <- mvrnorm(n=4, mu=c(500, 450, 400),
#'               Sigma=diag(3)*20^2, empirical=TRUE)
#'
#' df_contrasts2 <- d2 %>% as.data.frame() %>%
#'   gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#'
#' levels(df_contrasts2$F) <- c("nouns", "verbs", "adjectives")
#'
#' df_contrasts2$DV <- round(df_contrasts2$DV)
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{F}{Between subject factor word class with factor levels "nouns", "verbs", and "adjectives"}
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
#'
#' d3 <- mvrnorm(n=5, mu=c(10, 20, 10, 40), Sigma=diag(4)*10^2, empirical=TRUE)
#'
#' df_contrasts3 <- d3 %>% as.data.frame() %>% gather(key="F", value="DV") %>%
#'   mutate(id=1:nrow(.), F=factor(F))
#'
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
#'
#' d4 <- mvrnorm(n=5, mu=c(10, 20, 10, 40), Sigma=diag(4)*10^2, empirical=TRUE)
#'
#' df_contrasts4 <- d4 %>% as.data.frame() %>% gather(key="A", value="DV") %>%
#'   mutate(id=1:nrow(.), B=factor(A), A=factor(A))
#'
#' levels(df_contrasts4$A) <- c("A1","A1","A2","A2")
#'
#' levels(df_contrasts4$B) <- c("B1","B2","B1","B2")
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{A}{Between subject factor with two levels (A1, A2)}
#' \item{B}{Between subject factor with two levels (B1, B2)}
#' \item{DV}{Dependent variable}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts4"


#' Simulated data with response times with a 2-level between subject factor and IQ as covariate: no interaction.
#'
#' In the data, the influence of IQ on response time is exactly the same in both conditions F1 and F2. However, the mean response time and mean IQ differs between conditions F1 and F2.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#'
#' N <- 30
#'
#' mu1 <- c(225, 85)
#'
#' mu2 <- c(200,115)
#'
#' sd1 <- 40
#'
#' sd2 <- 15
#'
#' r1 <- r2 <- -0.4
#'
#' sigma1 <- matrix(c(sd1^2,r1*sd1*sd2,r1*sd1*sd2,sd2^2),nrow=2)
#'
#' sigma2 <- matrix(c(sd1^2,r2*sd1*sd2,r2*sd1*sd2,sd2^2),nrow=2)
#'
#' d5a <- mvrnorm(n=N, mu=mu1, Sigma=sigma1, empirical=TRUE)
#'
#' d5b <- mvrnorm(n=N, mu=mu2, Sigma=sigma2, empirical=TRUE)
#'
#' df_contrasts5 <- rbind(data.frame(F="F1", d5a), data.frame(F="F2", d5b))
#'
#' names(df_contrasts5)[2:3] <- c("RT","IQ")
#'
#' df_contrasts5$id <- 1:nrow(df_contrasts5)
#'
#' df_contrasts5$F  <- factor(df_contrasts5$F)
#'
#' @format A data frame with 60 rows and 4 variables:
#' \describe{
#' \item{F}{Between subject factor with factor two levels (F1, F2)}
#' \item{RT}{Dependent variable response time (RT)}
#' \item{IQ}{Between-subject covariate (IQ)}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts5"


#' Simulated data with response times with a 2-level between subject factor and IQ as covariate: interaction present.
#'
#' In the data, the influence of IQ on response time differs between conditions F1 and F2.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#'
#' N <- 30
#'
#' mu1 <- c(200,100)
#'
#' mu2 <- c(220,100)
#'
#' sd1 <- 40
#'
#' sd2 <- 15
#'
#' r1 <-  0.0
#'
#' r2 <- -0.6
#'
#' sigma1 <- matrix(c(sd1^2,r1*sd1*sd2,r1*sd1*sd2,sd2^2),nrow=2)
#'
#' sigma2 <- matrix(c(sd1^2,r2*sd1*sd2,r2*sd1*sd2,sd2^2),nrow=2)
#'
#' d6a <- mvrnorm(n=N, mu=mu1, Sigma=sigma1, empirical=TRUE)
#'
#' d6b <- mvrnorm(n=N, mu=mu2, Sigma=sigma2, empirical=TRUE)
#'
#' df_contrasts6 <- rbind(data.frame(F="F1", d6a), data.frame(F="F2", d6b))
#'
#' names(df_contrasts6)[2:3] <- c("RT","IQ")
#'
#' df_contrasts6$id <- 1:nrow(df_contrasts6)
#'
#' df_contrasts6$F  <- factor(df_contrasts6$F)
#'
#' @format A data frame with 60 rows and 4 variables:
#' \describe{
#' \item{F}{Between subject factor with factor two levels (F1, F2)}
#' \item{RT}{Dependent variable response time (RT)}
#' \item{IQ}{Between-subject covariate (IQ)}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts6"


#' Simulated data with a binomial response from a 2 x 2 between subject design.
#'
#' The dependent variable could be successful task performance. The condition means are exactly 0.2, 0.5, 0.2, and 0.8.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#'
#' N <- 50
#'
#' d7 <- data.frame(A  =factor(rep(c("A1","A1","A2","A2"), each=N)),
#'
#'                  B  =factor(rep(c("B1","B2","B1","B2"), each=N)),
#'
#'                  pDV=       rep(c( 0.2, 0.5, 0.2, 0.8), each=N))
#'
#' tmp <- c(seq(0,1,length=N)[sample(N)], seq(0,1,length=N)[sample(N)],
#'
#'          seq(0,1,length=N)[sample(N)], seq(0,1,length=N)[sample(N)])
#'
#' d7$pDV <- ifelse(d7$pDV > tmp, 1, 0)
#'
#' d7$id <- 1:nrow(d7)
#'
#' df_contrasts7 <- tibble(d7)
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#' \item{A}{Between subject factor with two levels (A1, A2)}
#' \item{B}{Between subject factor with two levels (B1, B2)}
#' \item{pDV}{Dependent variable: successful task performance (0 = no success versus 1 = success)}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_contrasts7"




#' Simulated data with a binomial response with one between subject factor with 2 levels.
#'
#' The dependent variable could be successful task performance in two groups.
#'
#' The data were simulated using the following R-code:
#'
#' set.seed(123)
#'
#' N <- 50
#'
#' df_BF <- data.frame(F=factor(rep(c("F1","F2"),each=N)))
#'
#' df_BF$pDV <- c( c(rep(0,N*0.02),rep(1,N*0.98))[sample(N)],
#'
#'                 c(rep(0,N*0.3 ),rep(1,N*0.7 ))[sample(N)] )
#'
#' df_BF$id <- 1:(N*2)
#'
#' df_BF <- tibble(df_BF)
#'
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#' \item{F}{Between subject factor with two levels (F1, F2)}
#' \item{pDV}{Dependent variable: successful task performance (0 = no success versus 1 = success)}
#' \item{id}{Subject index}
#' }
#'
#' @references
#' \insertAllCited{}
"df_BF"

#' Responses for the conjunction fallacy or Linda problem Experiment \insertCite{TverskyKahneman1983}{bcogsci}
#'
#' Responses from the replication of \insertCite{Paolaccietal;textual}{bcogsci} of the conjunction fallacy experiment or Linda problem \insertCite{TverskyKahneman1983}{bcogsci}. The dataset is adapted (and simplified) from https://osf.io/wzsf5/
#'
#' \insertCite{Paolaccietal;textual}{bcogsci} examined whether the results of some classic experiments differ between a university pool population and participants recruited from Mechanical Turk among them the conjunction fallacy.
#'
#' The conjunction fallacy shows that people often fail to regard a combination of events as less probable than a single event in the combination. In the experiment a text as the following appears followed
#'
#' *Linda is 31 years old, single, outspoken, and very bright. She majored in philosophy. As a student, she was deeply concerned with issues of discrimination and social justice, and also participated in anti-nuclear demonstrations.*
#'
#' *Which is more probable?*
#'
#' a. *Linda is a bank teller.*
#' b. *Linda is a bank teller and is active in the feminist movement.*
#'
#' The majority of those asked chose option b. Even if it's less probable since Pr(a & b) is smaller or equal than Pr(b).
#'
#' In this dataset `0` indicates option "a" and `1` option `b`.
#'
#'
#' @format A data frame with 268 rows and 2 variables:
#' \describe{
#' \item{source}{Whether the data is from the university or Mechanical Turk.}
#' \item{answer}{0 indicates option a, 1 indicates option b}
#' }
#'
#' @references
#' \insertAllCited{}
"df_fallacy"

#' Data of a global motion detection task from \insertCite{Dutilh2019quality;textual}{bcogsci}
#'
#' The dataset from \insertCite{Dutilh2019quality;textual}{bcogsci} contains the trials of each of the 20 subjects participating in a global motion detection task. There were two level of coherence yielding hard and easy trials (`diff`), and the trials where done under instructions that emphasized either accuracy or speed (`emphasis`).
#'
#' This is a slightly modified version of the original dataset that can be found   in https://osf.io/utkjf/.
#'
#' @format A data frame with 56,097 rows and 12 variables:
#' \describe{
#' \item{subj}{}
#' \item{diff}{Difficulty of the trial (easy or hard).}
#' \item{emphasis}{Whether the instructions emphasize 'speed' or 'accuracy'.}
#' \item{rt}{Response time in milliseconds.}
#' \item{acc}{1 if stim == resp, 0 otherwise.}
#' \item{fix_dur}{Duration of the presentation of the fixation cross before stimulus in milliseconds.}
## \item{stim}{Direction of the moving dots stimulus.}
#' \item{resp}{Button pressed}
#' \item{trial}{Trial number in the entire experimental session.}
#' \item{block}{The number of the trial block.}
#' \item{block_trial}{Trial number within the trial block.}
#' \item{bias}{Direction of eventual manipulated bias: left, right or no bias.}
#' }
#' @references
#' \insertAllCited{}
"df_dots"

#' Data from an experiment involving an agreement attraction design with Likert ratings and accuracy of response \insertCite{AnnaLphd;textual}{bcogsci}
#'
#' The dataset, from experiment 1 in chapter 4 of \insertCite{AnnaLphd;textual}{bcogsci}, contains the responses from 4,296 subjects who participated in an internet-based study that elicited Likert ratings and question-response accuracies for a single sentence they were shown. There were two levels of a factor called attractor (levels: match and mismatch) and two levels of another factor called interference (levels: interference and no interference).
#'
#' @format A data frame with 4,296 rows and 7 variables:
#' \describe{
#' \item{item}{Item id.}
#' \item{subj}{Subject id.}
#' \item{attractor}{A factor with two levels, match and mismatch.}
#' \item{interference}{A factor with two levels, interference and no interference.}
#' \item{rating}{A Likert scale rating of the acceptability of the sentence.}
#' \item{rating}{A Likert scale rating of the acceptability of the sentence.}
#' \item{accuracy}{Question response accuracy.}
#' \item{Sentence}{The sentence that the subject was shown.}
#' }
#' @references
#' \insertAllCited{}
"df_discreteagrmt"

#' Reading times at the critical regions of the self-paced reading experiment 1 conducted by  \insertCite{SafaviEtAlFrontiers2016;textual}{bcogsci}.
#'
#' Reading times at the critical region of sentences of Experiment 1 of \insertCite{SafaviEtAlFrontiers2016;textual}{bcogsci}.
#'
#'
#' The experiment examined sentences with four conditions: particle-verb constructions were created with either
#' short or long distance between the particle and verb, and with the particle being either predictable or unpredictable.
#'
#' All the data are available from https://github.com/vasishth/SafaviEtAl2016.
#'
#' @format A data frame with 1,512 rows and 5 variables:
#' \describe{
#'  \item{subj}{Subject id, ranging from 4 to 45.}
#'  \item{item}{Item id, ranging from 1 to 36.}
#' \item{rt}{Reading times in milliseconds}
#' \item{distance}{The factor distance, with levels short and long.}
#' \item{predability}{The factor predictability, with levels predictable and unpredictable.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_persianE1"

#' Reading times at the critical regions of an eyetracking experiment conducted by  \insertCite{VBLD07;textual}{bcogsci}.
#'
#' Reading times at the critical region of sentences of the experiment reported in \insertCite{VBLD07;textual}{bcogsci}.
#'
#'
#' The experiment examined sentences with six conditions: three conditions with negative polarity items (one grammatical, two ungrammatical),
#' and three with positive polarity items (two grammatical, one ungrammatical).
#'
#' The data and associated code are available from https://github.com/vasishth/ProcessingPolarity.
#'
#' @format A data frame with 8,823 rows and 5 variables:
#' \describe{
#'  \item{subject}{Subject id, ranging from 1 to 48.}
#'  \item{item}{Item id, ranging from 1 to 36.}
#' \item{condition}{The conditions labels, ranging from a to f.}
#' \item{times}{The different dependent measures from the eyetracking study.}
#' \item{value}{The dependent measure (milliseconds).}
#' }
#'
#' @references
#' \insertAllCited{}
"df_polarity"

#' Reading times at the critical regions of an eyetracking experiment conducted by  \insertCite{JaegerMertzenVanDykeVasishth2019;textual}{bcogsci}.
#'
#' Reading times at the critical region of sentences of the experiment reported in \insertCite{JaegerMertzenVanDykeVasishth2019;textual}{bcogsci}.
#'
#'
#' The experiment, which is a replication attempt of Dillon et al. 2013, examined sentences with eight conditions.
#'
#' The data and associated code are available from https://osf.io/reavs/.
#'
#' @format A data frame with 8,628 rows and 8 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{cond}{The conditions labels, ranging from a to h.}
#' \item{acc}{Question-response accuracy.}
#' \item{roi}{The region of interest.}
#' \item{FPRT}{First-pass reading time.}
#' \item{TFT}{Total fixation time.}
#' \item{FPR}{First-pass regression.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_dillonrep"

#' Voice onset times (VOTs) from a Mandarin experiment conducted by  \insertCite{li2013effect;textual}{bcogsci}.
#'
#' Voice onset times from Mandarin speakers in an experiment reported in \insertCite{li2013effect;textual}{bcogsci}.
#'
#'
#' The experiment has mean voice onset times and their standard errors, along with mean vowel durations and their standard error.
#'
#' The data and associated code are available from https://osf.io/g4zpv/.
#'
#' @format A data frame with 20 rows and 6 variables:
#' \describe{
#'  \item{subject}{Subject id, 10 female speakers and 10 male speakers.}
#'  \item{meanVOT}{Mean voice onset time for each speaker in milliseconds.}
#' \item{meanvdur}{Mean vowel duration for each speaker in milliseconds.}
#' \item{sevdur}{Standard error of the mean vowel duration in milliseconds.}
#' \item{sevot}{Standard error of the mean voice onset time in milliseconds.}
#' \item{c_meanvdur}{Centered mean vowel duration.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VOTmandarin"

#' Voice onset times (VOTs) from an English experiment conducted by  \insertCite{li2013effect;textual}{bcogsci}.
#'
#' Voice onset times from English speakers in an experiment reported in \insertCite{li2013effect;textual}{bcogsci}.
#'
#'
#' The experiment has mean voice onset times and their standard errors, along with mean vowel durations and their standard error.
#'
#' The data and associated code are available from https://osf.io/g4zpv/.
#'
#' @format A data frame with 20 rows and 6 variables:
#' \describe{
#' \item{subject}{Subject id, 10 female speakers and 10 male speakers.}
#' \item{meanVOT}{Mean voice onset time for each speaker in milliseconds.}
#' \item{seVOT}{Standard error of the mean voice onset time in milliseconds.}
#' \item{meanvdur}{Mean vowel duration for each speaker in milliseconds.}
#' \item{sevdur}{Standard error of the mean vowel duration in milliseconds.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VOTenglish"


#' Estimates (mean effect and their standard error) reported in a study on the picture-word interference paradigm \insertCite{BuerkiEtAl2020;textual}{bcogsci}.
#'
#' Data from a meta-analysis by \insertCite{BuerkiEtAl2020;textual}{bcogsci}.
#'
#' The data provide, for each individual study that investigated the picture-word
#'  interference phenomenon, the estimated interference effect and its
#'  standard error in milliseconds.
#'
#' The data and associated code are available from https://osf.io/k6f4c/.
#'
#' @format A data frame with 162 rows and 4 variables:
#' \describe{
#' \item{study}{The publication and experiment details of each study.}
#' \item{d}{The interference effect in milliseconds.}
#' \item{se}{Standard error of the effect in milliseconds.}
#' \item{study_id}{A numerical id for each study.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_buerki"

#' Reading times at the critical region (verb) of a self-paced reading experiment conducted by  \insertCite{smith2021encoding;textual}{bcogsci}.
#'
#' Reading times at the critical region of sentences of experiment 1 reported in \insertCite{smith2021encoding;textual}{bcogsci}.
#'
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' One factor, labeled SemFactor, is semantic similarity of a noun 2 with the subject of the sentence (noun 1); the levels are labeled SemSim (semantically similar) and SemDissim
#' (semantically dissimilar). The other factor, labeled N2Factor, marks whether the
#' second noun phrase was singular (N2sg) or plural (N2pl) marked.
#'
#' The data and associated code are available from https://osf.io/hjrkn/.
#'
#' @format A data frame with 3,441 rows and 5 variables:
#' \describe{
#'  \item{Participant}{Subject id.}
#'  \item{StimSet}{Item id.}
#' \item{RT}{Reading times in milliseconds at the critical region.}
#' \item{N2Factor}{The two levels of a factor representing the number marking on the second noun.}
#' \item{SemFactor}{The two levels of a factor representing the number marking on the second noun.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_smithE1"

#' Reading times at the critical region of sentences of experiment 2 reported in \insertCite{smith2021encoding;textual}{bcogsci}.
#'
#'
#' The experiment examined sentences with eight conditions (a 2x2x2 design).
#' One factor, labeled SemFactor, is semantic similarity of a noun 2 with the subject of the sentence (noun 1); the levels are labeled SemSim (semantically similar) and SemDissim
#' (semantically dissimilar). The second factor, labeled N2Factor, marks whether the
#' second noun phrase was singular (N2sg) or plural (N2pl) marked. The third factor
#' is VerbFactor, which marks whether the verb is singular (Vsg) or plural (Vpl) marked.
#'
#' The data and associated code are available from https://osf.io/hjrkn/.
#'
#' @format A data frame with 3,459 rows and 6 variables:
#' \describe{
#'  \item{Participant}{Subject id.}
#'  \item{StimSet}{Item id.}
#' \item{RT}{Reading times in milliseconds at the critical region.}
#' \item{N2Factor}{The two levels of a factor representing the number marking on the second noun.}
#' \item{SemFactor}{The two levels of a factor representing the number marking on the second noun.}
#' \item{VerbFactor}{The two levels of a factor representing the number marking on the verb.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_smithE2"

#' Data from a self-paced reading experiment that records reading times in milliseconds of subject and object relative clauses in Chinese. \insertCite{gibsonwu;textual}{bcogsci}
#'
#' The dataset is from an experiment reported in \insertCite{gibsonwu;textual}{bcogsci}, and contains reading times from a self-paced reading experiment on subject and object relative clauses in Chinese. There are 37 subjects who read 15 items in a Latin square design. The data are from the relative clause head noun, which is the critical region of interest.
#'
#' @format A data frame with 547 rows and 4 variables:
#' \describe{
#' \item{subj}{The subject id, ranging from 1 to 40.}
#' \item{item}{The item id, ranging from 1 to 16.}
#' \item{type}{Condition labels; obj-ext represents object relatives, and subj-ext represents subject relatives.}
#' \item{rt}{The reading times at the critical region (the relative clause head noun) in milliseconds.}
#' }
#' @references
#' \insertAllCited{}
"df_gibsonwu"

#' Data from a self-paced reading experiment that records reading times in milliseconds of subject and object relative clauses in Chinese. \insertCite{VasishthetalPLoSOne2013;textual}{bcogsci}
#'
#' The dataset is from a replication attempt of experiment by \insertCite{gibsonwu;textual}{bcogsci}; the replication attempt was reported in \insertCite{VasishthetalPLoSOne2013;textual}{bcogsci}, and contains reading times from a self-paced reading experiment on subject and object relative clauses in Chinese. There are 40 subjects who read 15 items in a Latin square design. The data are from the relative clause head noun, which is the critical region of interest.
#'
#' @format A data frame with 595 rows and 6 variables:
#' \describe{
#' \item{subj}{The subject id, ranging from 1 to 40.}
#' \item{item}{The item id, ranging from 1 to 16.}
#' \item{condition}{Condition labels; obj-ext represents object relatives, and subj-ext represents subject relatives.}
#' \item{pos}{The word position of the critical region in the sentence.}
#' \item{rt}{The reading times at the critical region (the relative clause head noun) in milliseconds.}
#' \item{region}{The label for the critical region (head noun) in the sentence.}
#' }
#' @references
#' \insertAllCited{}
"df_gibsonwu2"

#' Data from reading studies that list the difference in reading times in milliseconds object vs. subject relative clauses in Chinese. \insertCite{VasishthMScStatistics;textual}{bcogsci}
#'
#' The data set is from a meta-analysis reported in \insertCite{VasishthMScStatistics;textual}{bcogsci}; the replication attempt was reported in \insertCite{VasishthMScStatistics;textual}{bcogsci}, and contains reading times from a self-paced reading experiment on subject and object relative clauses in Chinese. There are 40 subjects who read 15 items in a Latin square design. The estimates are from the relative clause head noun, which is the critical region of interest.
#'
#' @format A data frame with 13 rows and 4 variables:
#' \describe{
#' \item{study.id}{The study id.}
#' \item{study}{The study name.}
#' \item{y}{The difference in object vs. subject reading times at the critical region (the relative clause head noun) in milliseconds.}
#' \item{se}{The standard error of the difference in means between object vs. subject relative clauses.}
#' }
#' @references
#' \insertAllCited{}
"df_chineseRCs"

#' Data from an eyetracking reading experiment that records total reading times in milliseconds at an auxiliary verb in so-called low and high interference conditions. \insertCite{Dillon-EtAl-2013;textual}{bcogsci}
#'
#' The data set is from an eyetracking experiment by \insertCite{Dillon-EtAl-2013;textual}{bcogsci}, and contains reading times (total reading times) from a design that originally had eight conditions. There are 40 subjects who read 48 items in a Latin square design. The data shown here focus on two conditions from the experiment, high and low interference conditions in a subject-verb number agreement configuration in ungrammatical sentences.
#'
#' @format A data frame with 2,855 rows and 5 variables:
#' \describe{
#' \item{subj}{The subject id, ranging from 1 to 40.}
#' \item{item}{The item id, ranging from 1 to 48. Each item id is prefixed by dillonE1.}
#' \item{rt}{The total reading times at the critical region (auxiliary verb) in milliseconds.}
#' \item{int}{The two levels of the interference manipulation, low and high.}
#' \item{expt}{The experiment id.}

#' }
#' @references
#' \insertAllCited{}
"df_dillonE1"

#' Data from a self-paced reading experiment that records reading times in milliseconds at the post-critical region. \insertCite{swets2008underspecification;textual}{bcogsci}
#'
#' The data set is from a self-paced reading experiment by \insertCite{swets2008underspecification;textual}{bcogsci}, and contains reading times from a 3x3 design.
#'
#' @format A data frame with 5,184 rows and 6 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{item}{The item id.}
#' \item{resp.RT}{Response times to questions.}
#' \item{qtype}{The three levels of the between-subjects factor, question type.}
#' \item{attachment}{The three levels of the within-subjects factor, attachment type.}
#' \item{RT}{Reading times at the post-critical region.}
#' }
#' @references
#' \insertAllCited{}
"df_swets08"

#' Data from a self-paced reading experiment that records log reading times in log milliseconds of grammatical and ungrammatical double center embeddings in English. \insertCite{VSLK08;textual}{bcogsci}
#'
#' The data set is from a self-paced reading study by \insertCite{VSLK08;textual}{bcogsci}, and contains reading times from a design that had two conditions, grammatical and ungrammatical double center embeddings in English. There are 48 subjects who read 16 items in a Latin square design. The data shown here focus on log reading times at the noun phrase following the final verb in a double center embedding.
#'
#' @format A data frame with 768 rows and 4 variables:
#' \describe{
#' \item{subject}{The subject id, ranging from 1 to 49.}
#' \item{item}{The item id, ranging from 1 to 16.}
#' \item{condition}{Grammatical conditions are coded as +1, and ungrammatical conditions as -1.}
#' \item{NP1}{The log reading times at the noun phase following the final verb in a double center embedding.}
#' }
#' @references
#' \insertAllCited{}
"df_english"

#' Data from a self-paced reading experiment that records log reading times in log milliseconds of grammatical and ungrammatical double center embeddings in Dutch. \insertCite{FrankEtAl2015;textual}{bcogsci}
#'
#' The data set is from a self-paced reading study by \insertCite{FrankEtAl2015;textual}{bcogsci}, and contains reading times from a design that had two conditions, grammatical and ungrammatical double center embeddings in Dutch. There are 24 subjects who read 16 items in a Latin square design. The data shown here focus on log reading times at the noun phrase following the final verb in a double center embedding.
#'
#' @format A data frame with 372 rows and 4 variables:
#' \describe{
#' \item{subject}{The subject id, ranging from 1 to 24. Each subject id is preceded by an s.}
#' \item{item}{The item id, ranging from 1 to 16. Each subject id is preceded by an i.}
#' \item{condition}{Grammatical conditions are coded as +1, and ungrammatical conditions as -1.}
#' \item{NP1}{The log reading times at the noun phase following the final verb in a double center embedding.}
#' }
#' @references
#' \insertAllCited{}
"df_dutch"

#' Data from an experiment on the effect of power posing on testosterone levels, originally reported by \insertCite{carney2010power;textual}{bcogsci}
#'
#' The data set is from a study by \insertCite{carney2010power;textual}{bcogsci}, and contains testosterone measurements before and after treatement (which can be either high or low power posing). There is one set of measurements (before and after) from each subject. The gender and age are of each subject are also provided.
#'
#' @format A data frame with 39 rows and 6 variables:
#' \describe{
#' \item{id}{Subject id.}
#' \item{female}{A binary variable marking gender.}
#' \item{age}{A continuous variable, age in years.}
#' \item{hptreat}{Power pose treatment; high power pose or low power pose.}
#' \item{testm1}{Testosterone level before treatment.}
#' \item{testm1}{Testosterone level after treatment.}
#' }
#' @references
#' \insertAllCited{}
"df_powerpose"

#' Data from an experiment on the effect of fertility status on the color of clothing worn by women, originally reported by \insertCite{beall2013women;textual}{bcogsci}
#'
#' The data set is from a study by \insertCite{beall2013women;textual}{bcogsci}, and contains information
#' about the color of the clothing worn (red, pink, or redorpink) when the participant (female) is at risk of becoming pregnant (is ovulating, self-reported).
#'
#' @format A data frame with 124 rows and 5 variables:
#' \describe{
#' \item{risk}{A 0,1 variable indicating whether the participant is at risk of pregnancy or not.}
#' \item{age}{The age of the participant in years.}
#' \item{red}{A 0,1 coded variable indicating whether the participant reported wearing red.}
#' \item{pink}{A 0,1 coded variable indicating whether the participant reported wearing pink.}
#' \item{redorpink}{A 0,1 coded variable indicating whether the participant reported wearing either red or pink.}
#' }
#' @references
#' \insertAllCited{}
"df_red"

#' Data from replication of Experiment 2 of Raymond, Shapiro, and Arnell (1992), The Attentional Blink by \insertCite{grassi_two_2021;textual}{bcogsci}
#'
#' The data set is from the UK participants of the replication of Experiment 2 of  \insertCite{raymond1992temporary}{bcogsci}. This data set contains the experimental condition of this experiment: A fast stream of black letters except for a white one (the target). In the experimental condition, the stream includes the letter "X" (the probe). The probe can appear in the target position or lag up to eight relative serial positions after the target. In the control condition, the participants are asked to detect the probe (i.e., the letter "X"). This subset includes trials where the participants reported correctly the identity of the target and then indicate the presence or absence of the probe (see Raymond et al. 1992, Fig. 1). For this experiment, the refresh rate of the screen was 60Hz.
#'
#' Original data set can be found in https://figshare.com/articles/dataset/Two_replications_of_Raymond_Shapiro_and_Arnell_1992_The_Attentional_Blink/6834353
#'
#' @format A data frame with 10,800 rows and 14 variables:
#' \describe{
#' \item{subj}{Subject index.}
#' \item{gender}{Subject gender.}
#' \item{age}{Subject age.}
#' \item{condition}{Condition of the experiment (either experimental or control).}
#' \item{trial}{Trial number}
#' \item{probe_presence}{A logical value. It is equal to 1 if in the trial the probe is presented, 0 is in the trial the probe is not presented.}
#' \item{lag}{Lag of the trial. When the probe is absent, lag is equal to "NA".}
#' \item{target_correct}{Response accuracy on the target letter, 1 correct, 0 incorrect. The value 999 informs that the trial did not ask for a response for the target letter (i.e., all control trials).}
#' \item{probe_correct}{Response accuracy on the probe (i.e., the letter X). 1Ó correct, 0 incorrect.}
#' \item{target_position}{The serial position of the target within the stimulus string.}
#' \item{target_letter}{The target letter.}
#' \item{target_letter_response}{The actual response given by the participant for the target letter.}
#' \item{probe_response}{The actual response given by the participant for the probe. It can be either 1 (detected the probe) or 0 (did not detect the probe).}
#' \item{string}{The stimulus string.}
#' }
#' @references
#' \insertAllCited{}
"df_ab_complete"


#' Experimental condition where the target was detected from the replication of Experiment 2 of Raymond, Shapiro, and Arnell (1992), The Attentional Blink by \insertCite{grassi_two_2021;textual}{bcogsci}
#'
#' The dataset is from the UK participants of the replication of Experiment 2 of  \insertCite{raymond1992temporary}{bcogsci}. In this experiment, participants are presented with a fast stream of letters. Letters are black except for a white one (the target). In half of the trials, the stream includes the letter "X" (the probe). The probe can appear in the target position or lag up to eight relative serial positions after the target. In the control condition, the participants are asked to detect the probe (i.e., the letter "X"). In the experimental condition, the participants first have to report the identity of the target and then indicate the presence or absence of the probe (see Raymond et al. 1992, Fig. 1). For this experiment, the refresh rate of the screen was 60Hz.
#'
#'
#' Complete dataset can be found in [df_ab_complete].Original data set can be found in https://figshare.com/articles/dataset/Two_replications_of_Raymond_Shapiro_and_Arnell_1992_The_Attentional_Blink/6834353
#'
#' @format A data frame with 2,101 rows and 4 variables:
#' \describe{
#' \item{subj}{Subject index.}
#' \item{trial}{Trial number}
#' \item{lag}{Lag of the trial. When the probe is absent, lag is equal to "NA".}
#' \item{probe_correct}{Response accuracy on the probe (i.e., the letter X). 1 correct, 0 incorrect.}
#' }
#' @references
#' \insertAllCited{}
"df_ab"

#' Response frequencies of 128 participants who took part in a source-monitoring experiment in \insertCite{wickelmaier2018using;textual}{bcogsci}.
#'
#' This dataset is from a source-monitoring experiment and was originally provided by the psychotools package \insertCite{psychotools}{bcogsci}. In this version the format of the original data frame was modified for ease of use with Stan.
#'
#' In this type of experiment, subjects study items from (at least) two different sources, A and B. After the presentation of the study items, subjects are required to classify each item as coming from source A, B, or as new: N (that is, a distractor). In the version of the experiment from \insertCite{wickelmaier2018using;textual}{bcogsci}, participants had to read items either quietly (think) or aloud (say). In the recall task, they wrote them down (write) or read them aloud (say).


#' @format A data frame with 384 rows and 8 variables:
#' \describe{
#' \item{experiment}{ write-say or think-say}
#' \item{age}{ Age of the respondent in years.}
#' \item{gender}{ Gender of the respondent.}
#' \item{subj}{ Subject id.}
#' \item{source}{ Item source, a, b or b (new)}
#' \item{a`, `b`, `N}{ Number of responses for each type of stimuli}
#' }
#' @references
#' \insertAllCited{}
"df_source_monitoring"

#' Reading times at the critical region of sentences of experiment 1 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat Hans Gerntner ... den Fussball versteckt und somit...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat Hans Gerntner ... [ADJ zur Ahndung] den Fussball versteckt...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat Hans Gerntner ... [DAT dem Sohn] den Fussball versteckt...
#' d. Nachdem der Lehrer [               ] [            ] ... hat Hans Gerntner ... [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt...
#'
#' @format A data frame with 672 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{cond}{The four condition levels.}
#' \item{rt}{Reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E1"

#' Reading times at the critical region of sentences of experiment 2 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat Hans Gerntner ... den Fussball versteckt und somit...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat Hans Gerntner ... [ADJ zur Ahndung] den Fussball versteckt...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat Hans Gerntner ... [DAT dem Sohn] den Fussball versteckt...
#' d. Nachdem der Lehrer [               ] [            ] ... hat Hans Gerntner ... [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt...
#'
#' @format A data frame with 670 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{condition}{The four condition levels.}
#' \item{TFT}{Total reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E2"

#' Reading times at the critical region of sentences of experiment 3 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat der Mitschuler, der den Fussball versteckt hat, ...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat der Mitschuler, der [ADJ zur Ahndung] den Fussball versteckt hat, ...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat der Mitschuler, der [DAT dem Sohn] den Fussball versteckt hat, ...
#' d. Nachdem der Lehrer [               ] [            ] ... hat der Mitschuler, der [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt hat, ...
#'
#' @format A data frame with 672 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{cond}{The four condition levels.}
#' \item{rt}{Reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E3"

#' Reading times at the critical region of sentences of experiment 4 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat der Mitschuler, der den Fussball versteckt hat, ...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat der Mitschuler, der [ADJ zur Ahndung] den Fussball versteckt hat, ...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat der Mitschuler, der [DAT dem Sohn] den Fussball versteckt hat, ...
#' d. Nachdem der Lehrer [               ] [            ] ... hat der Mitschuler, der [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt hat, ...
#'
#' @format A data frame with 655 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{condition}{The four condition levels.}
#' \item{TFT}{Total reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E4"

#' Reading times at the critical region of sentences of experiment 5 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat Hans Gerntner ... den Fussball versteckt und somit...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat Hans Gerntner ... [ADJ zur Ahndung] den Fussball versteckt...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat der Mitschuler, der [DAT dem Sohn] den Fussball versteckt hat, ...
#' d. Nachdem der Lehrer [               ] [            ] ... hat der Mitschuler, der [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt hat, ...
#'
#' @format A data frame with 672 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{cond}{The four condition levels.}
#' \item{word}{The word read in the critical region.}
#' \item{rt}{Reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E5"

#' Reading times at the critical region of sentences of experiment 6 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat Hans Gerntner ... den Fussball versteckt und somit...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat Hans Gerntner ... [ADJ zur Ahndung] den Fussball versteckt...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat der Mitschuler, der [DAT dem Sohn] den Fussball versteckt hat, ...
#' d. Nachdem der Lehrer [               ] [            ] ... hat der Mitschuler, der [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt hat, ...
#'
#' @format A data frame with 670 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{condition}{The four condition levels.}
#' \item{TFT}{Total reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E6"

#' Reading times at the critical region of sentences of experiment 7 reported in \insertCite{VasishthMertzenJaegerGelman2018;textual}{bcogsci}.
#'
#' The experiment examined sentences with four conditions (a 2x2 design).
#' This eyetracking experiment examined sentences with four conditions (a 2x2 design).
#' One factor is whether a dative phrase is in the main or subordinate clause;
#' another factor is whether an adjunct phrase is in the main or subordinate clause.
#'
#' The conditions (simplified) are:
#' a. Nachdem der Lehrer [ADJ zur Ahndung] [DAT dem Sohn] ... hat Hans Gerntner ... den Fussball versteckt und somit...
#' b. Nachdem der Lehrer [               ] [DAT dem Sohn] ... hat Hans Gerntner ... [ADJ zur Ahndung] den Fussball versteckt...
#' c. Nachdem der Lehrer [ADJ zur Ahndung] [            ] ... hat der Mitschuler, der [DAT dem Sohn] den Fussball versteckt hat, ...
#' d. Nachdem der Lehrer [               ] [            ] ... hat der Mitschuler, der [ADJ zur Ahndung] [DAT dem Sohn]
#' den Fussball versteckt hat, ...
#'
#' @format A data frame with 2,384 rows and 4 variables:
#' \describe{
#'  \item{subj}{Subject id.}
#'  \item{item}{Item id.}
#' \item{condition}{The four condition levels.}
#' \item{TFT}{Total reading times in milliseconds at the critical region.}
#' }
#'
#' @references
#' \insertAllCited{}
"df_VMJG18E7"



#' Data from a simple visual tracking experiment for schizophrenic patients and controls from \insertCite{belin1990analysis;textual}{bcogsci}
#'
#' Reaction times (in milliseconds) for 11 non-schizophrenics and 6
#' schizophrenics (30 measurements for each person) doing a simple visual tracking experiment from \insertCite{belin1990analysis;textual}{bcogsci}.
#'
#' @format A data frame with 372 rows and 4 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{trial}{Trial number}
#' \item{patient}{Indicates whether the it is a schizophrenic patient (1) or not (0).}
#' \item{rt}{Reaction times in milliseconds.}
#' }
#' @references
#' \insertAllCited{}
"df_schizophrenia"


#' Subset of the data from the lexical decision task  of the British Lexicon project \insertCite{keuleers2012british}{bcogsci}
#'
#' Reaction times (in milliseconds) and accuracy for a subset of 2000 observations of 40 participants in a lexical decision task of the British Lexicon project \insertCite{keuleers2012british}{bcogsci}.
#'
#' The column names are modified from the original dataset (see below). The freq column indicates the frequency per million words according to the British National Corpus (BNC, available at http://www.natcorp.ox.ac.uk), with the following modifications: Non-words have a frequency of zero, and all words have a frequency of at least 0.01. The original data set can be found in http://crr.ugent.be/programs-data/lexicon-projects.
#'
#' @format A data frame with 36000 rows and 8 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{block}{Block number.}
#' \item{lex}{lexicality of the string: Either word or non-word.}
#' \item{trial}{Trial number.}
#' \item{string}{String of letters.}
#' \item{acc}{1 for correct, 0 for incorrect.}
#' \item{rt}{Raw reaction times of all strings in milliseconds. (Observations with zero reaction times are omited)}
#' \item{freq}{Frequency per million words, see details.}
#' }
#' @references
#' \insertAllCited{}
"df_blp"


#' Data from the lexical decision task  of the British Lexicon project \insertCite{keuleers2012british}{bcogsci}
#'
#' Reaction times (in milliseconds) and accuracy for the lexical decision task of the British Lexicon project \insertCite{keuleers2012british}{bcogsci}.
#'
#' The column names are modified from the original dataset (see below). The freq column indicates the frequency per million words according to the British National Corpus (BNC, available at http://www.natcorp.ox.ac.uk), with the following modifications: Non-words have a frequency of zero, and all words have a frequency of at least 0.01. The original data set can be found in http://crr.ugent.be/programs-data/lexicon-projects.
#'
#' @format A data frame with 2240802 rows and 8 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{block}{Block number.}
#' \item{lex}{lexicality of the string: Either word or non-word.}
#' \item{trial}{Trial number.}
#' \item{string}{String of letters.}
#' \item{acc}{1 for correct, 0 for incorrect.}
#' \item{rt}{Raw reaction times of all strings in milliseconds. (Observations with zero reaction times are omited)}
#' \item{freq}{Frequency per million words, see details.}
#' }
#' @references
#' \insertAllCited{}
"df_blp_complete"

#' Data from a self-paced reading study on Spanish reported in \insertCite{lago2015agreement}{bcogsci}
#'
#' Reading times (in milliseconds) from a self-paced reading study on Spanish reported in \insertCite{lago2015agreement}{bcogsci}.
#'
#' The column names are modified from the original dataset. The reading times are from the post-critical word (en) in the sentences shown below.
#'
#' -(a) Ungram , singular attractor (interference condition)
#' La *nota* que la chica escribieron en la clase alegró a su amiga
#' The note that the girl wrote-pl during class cheered her friend up
#' -(b) Ungram , plural attractor (baseline condition)
#' Las *notas* que la chica escribieron en la clase alegraron a su amiga
#' The notes that the girl wrote-pl during class cheered her friend up
#'
#' There are 32 subjects who read 48 items in a Latin square design. The data shown here focus on two conditions from the experiment, high and low interference conditions in a subject-verb number agreement configuration in ungrammatical sentences. The language under study is Spanish.
#'
#' @format A data frame with 768 rows and 6 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{item}{The item id.}
#' \item{rt}{Reading time at the post-critical word in the sentence.}
#' \item{int}{The interference conditions (high and low).}
#' \item{x}{Sum contrast coding of the interference conditions.}
#' \item{expt}{The experiment id.}
#' }
#' @references
#' \insertAllCited{}
"df_lagoE1"


#' Working memory capacity scores and speed of the rapid automatized naming task from the exploratory data of \insertCite{NicenboimEtAlCogSci2018;textual}{bcogsci}
#'
#'Data from from the exploratory experiment  of \insertCite{NicenboimEtAlCogSci2018;textual}{bcogsci}.
#'The data shows (1) partial-credit unit scores, which indicate the mean proportion of correctly recalled items within the sets of an operation span task, as an index of working memory capacity \insertCite{conway2005working}{bcogsci} together with their SE, and (2) the mean speeds in the rapid automatized naming task, RAN, \insertCite{DenklaRudel1976}{bcogsci} as a measure of reading fluency (in characters/second) together with their SE.
#'
#'
#' @format A data frame with 82 rows and 5 variables:
#' \describe{
#' \item{subj}{The subject id.}
#' \item{mean_rspeed}{Mean speed at the RAN.}
#' \item{se_rspeed}{SE of the speed at the RAN.}
#' \item{mean_pcu}{Mean pcu at the operation span task}
#' \item{se_rspeed}{SE of the speed at the operation span task.}
#' }
#' @references
#' \insertAllCited{}
"df_indiv"

