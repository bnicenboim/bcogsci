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
