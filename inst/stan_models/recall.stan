data {
  int<lower = 1> N;
  int<lower=0> K;   // number of predictors
  matrix[N, K] X;   // model matrix
  array[N] int correct;
}
parameters {
  real alpha;
  vector[K] beta;
}
model {
  // priors including all constants
  target += normal_lpdf(alpha | 0, 1.5);
  target += normal_lpdf(beta | 0, .1);
  target += bernoulli_logit_glm_lpmf(correct | X, alpha, beta);
}
