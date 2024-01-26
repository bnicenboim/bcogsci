data {
  // Total number of answers
  int<lower = 1> N;
  // Number of times umbrella was answered:
  int<lower = 0, upper = N> k;
}
parameters {
  // theta is a probability, must be constrained between 0 and 1
  real<lower = 0, upper = 1> theta;
}
model {
  // Prior on theta:
  target += beta_lpdf(theta | 4, 4);
  // Likelihood:
  target += binomial_lpmf(k | N, theta);
}

