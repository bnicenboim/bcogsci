#' Generate Prior Predictive Distributions
#'
#' This function generates prior predictive distributions by taking samples from the priors
#' and using them to generate a data set based on the normal distribution. This function appears in section 3.3. A faster and more efficient alternative shown in Box 3.1 is \link{normal_predictive_distribution}.
#'
#'
#' @param mu_samples A numeric vector of samples from the prior distribution of the mean parameter (\eqn{\mu}).
#' @param sigma_samples A numeric vector of samples from the prior distribution of the standard deviation parameter (\eqn{\sigma}).
#' @param N_obs An integer indicating the number of observations to generate for each sample.
#'
#' @return A tibble containing the generated data sets. Each row represents a generated observation with the columns:
#' \describe{
#'   \item{trialn}{The trial number (from 1 to \code{N_obs}).}
#'   \item{t_pred}{The predicted value generated from the normal distribution with parameters \code{mu} and \code{sigma}.}
#'   \item{iter}{The iteration number corresponding to the sample from the prior distributions.}
#' }
#'
#' @examples
#' # Example usage:
#' mu_samples <- rnorm(100, 0, 1)  # 100 samples from a normal prior with mean 0 and standard deviation 1
#' sigma_samples <- runif(100, 0.1, 2)  # 100 samples from a uniform prior with values between 0.1 and 2
#' N_obs <- 10  # Number of observations to generate for each sample
#' prior_predictive_data <- normal_predictive_distribution_slow(mu_samples, sigma_samples, N_obs)
#' head(prior_predictive_data)
#'
#' @export
normal_predictive_distribution_slow <- function(mu_samples, sigma_samples, N_obs) {
  # empty data frame with headers:
  df_pred <- dplyr::tibble(trialn = numeric(0),
                           t_pred = numeric(0),
                           iter = numeric(0))
  # i iterates from 1 to the length of mu_samples,
  # which we assume is identical to
  # the length of the sigma_samples:
  for (i in seq_along(mu_samples)) {
    mu <- mu_samples[i]
    sigma <- sigma_samples[i]
    df_pred <- dplyr::bind_rows(df_pred,
                                dplyr::tibble(trialn = seq_len(N_obs),
                                              # seq_len generates 1, 2,..., N_obs
                                              t_pred = rnorm(N_obs, mu, sigma),
                                              iter = i))
  }
  df_pred
}

#' Generate Prior Predictive Distributions
#'
#' This function generates prior predictive distributions by taking samples from the priors
#' and using them to generate a data set based on the normal distribution. The slower but easier to read function shown in section 3.3 is \link{normal_predictive_distribution_slow}.

#'
#' @param mu_samples A numeric vector of samples from the prior distribution of the mean parameter (\eqn{\mu}).
#' @param sigma_samples A numeric vector of samples from the prior distribution of the standard deviation parameter (\eqn{\sigma}).
#' @param N_obs An integer indicating the number of observations to generate for each sample.
#'
#' @return A tibble containing the generated data sets. Each row represents a generated observation with the columns:
#' \describe{
#'   \item{trialn}{The trial number (from 1 to \code{N_obs}).}
#'   \item{t_pred}{The predicted value generated from the normal distribution with parameters \code{mu} and \code{sigma}.}
#'   \item{iter}{The iteration number corresponding to the sample from the prior distributions.}
#' }
#'
#' @examples
#' # Example usage:
#' mu_samples <- rnorm(100, 0, 1)  # 100 samples from a normal prior with mean 0 and standard deviation 1
#' sigma_samples <- runif(100, 0.1, 2)  # 100 samples from a uniform prior with values between 0.1 and 2
#' N_obs <- 10  # Number of observations to generate for each sample
#' prior_predictive_data <- normal_predictive_distribution(mu_samples, sigma_samples, N_obs)
#' head(prior_predictive_data)
#'
#' @export
normal_predictive_distribution <- function(mu_samples, sigma_samples, N_obs) {
  purrr::map2_dfr(mu_samples, sigma_samples, function(mu, sigma) {
    dplyr::tibble(trialn = seq_len(N_obs),
           t_pred = rnorm(N_obs, mu, sigma))
  }, .id = "iter") %>%
    # .id is always a string and
    # needs to be converted to a number
    dplyr::mutate(iter = as.numeric(iter))
}



#' Compute Mean and Standard Deviation of the Parent Distribution of a Truncated Distribution
#'
#' This function computes the mean and standard deviation of the parent distribution
#' of a truncated distribution.
#'
#' @param a Lower bound of the truncated distribution. Default is `-Inf`.
#' @param b Upper bound of the truncated distribution. Default is `Inf`.
#' @param mean_trunc The mean of the truncated distribution.
#' @param sd_trunc The standard deviation of the truncated distribution.
#' @param startvals Starting values for the optimization algorithm. Default is c(1, 1).
#'
#' @return The location and scale parameters of the parent distribution.
#' @examples
#' \dontrun{
#' compute_meansd_parent(a=0, b=1000, mean_trunc=500, sd_trunc=50)
#' }
#' @export
compute_meansd_parent <- function(a = -Inf, b = Inf, mean_trunc = NULL, sd_trunc = NULL,
                                  startvals = c(1, 1)) {
  mu <- mean_trunc
  sigma <- sd_trunc

  model <- function(x) {
    c(
      F1 = mu - x[1] + x[2] * ((dnorm((b - x[1]) / x[2]) -
                                  dnorm((a - x[1]) / x[2])) / (pnorm((b - x[1]) / x[2]) -
                                                                 pnorm((a - x[1]) / x[2]))),
      F2 = sigma - x[2] * sqrt((1 -
                                  (((b - x[1]) / x[2]) * dnorm((b - x[1]) / x[2]) -
                                     ((a - x[1]) / x[2]) * dnorm((a - x[1]) / x[2])) /
                                  (pnorm((b - x[1]) / x[2]) - pnorm((a - x[1]) / x[2])) - ((dnorm((b - x[1]) / x[2]) -
                                                                                              dnorm((a - x[1]) / x[2])) / (pnorm((b - x[1]) / x[2]) -
                                                                                                                             pnorm((a - x[1]) / x[2])))
                                ^2))
    )
  }
  soln <- rootSolve::multiroot(f = model,
                               positive = TRUE,
                               maxiter = 1000,
                               start = startvals)
  list(location = soln$root[1], scale =  soln$root[2])
}

#' Compute the Generalized Inverse with Nicely Formatted Output
#'
#' This function computes the generalized inverse of a matrix using the \code{\link[MASS]{ginv}} function from the \code{MASS} package. The output is nicely formatted with dimension names preserved and the matrix entries represented as fractions.
#'
#' @param x A numeric matrix for which the generalized inverse is to be computed.
#'
#' @return A matrix that is the generalized inverse of the input matrix \code{x}, with dimension names preserved and entries formatted as fractions.
#'
#' @examples
#' \dontrun{
#' A <- matrix(c(1, 2, 3, 4), 2, 2)
#' rownames(A) <- c("a","b")
#' colnames(A) <- c("c","d")
#' ginv2(A)
#' }
#'
#' @export
ginv2 <- function(x) {
  inv <- MASS::ginv(x)
  if(!is.null(rownames(x)) & !is.null(colnames(x))) {
    inv <- provideDimnames(inv, base = dimnames(x)[2:1])
  }
    MASS::fractions(inv)
}
