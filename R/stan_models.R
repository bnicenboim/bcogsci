#' Stan model for fitting a binomial likelihood with a beta prior.
#'
#' Stan model for fitting a binomial likelihood with a beta prior.
#'
#' @examples
#' # The file can be located as follows:
#' binomial <- system.file("stan_models", "binomial_cloze.stan", package = "bcogsci")
#' # See the models code:
#' file.show(binomial)
#' @name stan-binomial_cloze
NULL

#' Stan model for fitting a normal likelihood.
#'
#' Stan model for fitting a normal likelihood.
#'
#' @examples
#' # The file can be located as follows:
#' normal <- system.file("stan_models", "normal.stan", package = "bcogsci")
#' # See the models code:
#' file.show(normal)
#' @name stan-normal
NULL

#' Stan model for fitting a normal likelihood with a for-loop.
#'
#' Stan model for fitting a normal likelihood with a for-loop.
#'
#' @examples
#' # The file can be located as follows:
#' normal <- system.file("stan_models", "normal2.stan", package = "bcogsci")
#' # See the models code:
#' file.show(normal2)
#' @name stan-normal2
NULL


#' Stan model for fitting a linear regression to the pupil size data.
#'
#' Stan model for fitting a linear regression to the pupil size data.
#'
#' @examples
#' # The file can be located as follows:
#' normal <- system.file("stan_models", "pupil_model.stan", package = "bcogsci")
#' # See the models code:
#' file.show(pupil_model)
#' @name stan-pupil_model
NULL

#' Stan model for fitting a linear regression to the pupil size data and generating predictive distributions.
#'
#' Stan model for fitting a linear regression to the pupil size data and generating predictive distributions.
#'
#' @examples
#' # The file can be located as follows:
#' normal <- system.file("stan_models", "pupil_gen.stan", package = "bcogsci")
#' # See the models code:
#' file.show(pupil_gen)
#' @name stan-pupil_gen
NULL

#' Stan model for a random-effects meta-analysis.
#'
#' Stan model for a random-effects meta-analysis.
#'
#' @examples
#' # The file can be located as follows:
#' rema <- system.file("stan_models", "rema.stan", package = "bcogsci")
#' # See the model code:
#' file.show(rema)
#' @name stan-rema
NULL
