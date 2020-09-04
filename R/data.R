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
