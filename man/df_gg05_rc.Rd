% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{df_gg05_rc}
\alias{df_gg05_rc}
\title{Reading times at the critical regions of the self-paced reading experiment 1 conducted by  \insertCite{grodnergibson2005;textual}{bcogsci}.}
\format{
A data frame with 673 rows and 6 variables:
\describe{
 \item{subj}{}
 \item{item}{}
\item{condition}{ Either object-RC (objgap) or subject-RC (subjgap).}
\item{RT}{Reading times in milliseconds}
\item{residRT}{Residual reading times computed by subtracting variance due to length from unadjusted reading times (using the procedure described by Frazier & Clifton, 1986).}
\item{qcorrect}{Whether the comprehension question was answered correctly or not.}
}
}
\usage{
df_gg05_rc
}
\description{
Reading times at the critical regions of sentences of Experiment 1 of \insertCite{grodnergibson2005;textual}{bcogsci}.
}
\details{
The experiment examined sentences with object-RC (relative clauses) vs sentences with subject-RC, such as the following (the critical region is indicated in bold).

- (SRC) The reporter who the photographer *sent* to the editor hoped for a story.
- (ORC) The reporter who *sent* the photographer to the editor hoped for a story.

Complete dataset can be found in [df_gg05_complete]
}
\references{
\insertAllCited{}
}
\keyword{datasets}
