% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{df_dots}
\alias{df_dots}
\title{Data of a global motion detection task from \insertCite{Dutilh2019quality;textual}{bcogsci}}
\format{
A data frame with 56,097 rows and 12 variables:
\describe{
\item{subj}{}
\item{diff}{Difficulty of the trial (easy or hard).}
\item{emphasis}{Whether the instructions emphasize 'speed' or 'accuracy'.}
\item{rt}{Response time in milliseconds.}
\item{acc}{1 if stim == resp, 0 otherwise.}
\item{fix_dur}{Duration of the presentation of the fixation cross before stimulus in milliseconds.}
\item{resp}{Button pressed}
\item{trial}{Trial number in the entire experimental session.}
\item{block}{The number of the trial block.}
\item{block_trial}{Trial number within the trial block.}
\item{bias}{Direction of eventual manipulated bias: left, right or no bias.}
}
}
\usage{
df_dots
}
\description{
The dataset from \insertCite{Dutilh2019quality;textual}{bcogsci} contains the trials of each of the 20 subjects participating in a global motion detection task. There were two level of coherence yielding hard and easy trials (`diff`), and the trials where done under instructions that emphasized either accuracy or speed (`emphasis`).
}
\details{
This is a slightly modified version of the original dataset that can be found   in https://osf.io/utkjf/.
}
\references{
\insertAllCited{}
}
\keyword{datasets}
