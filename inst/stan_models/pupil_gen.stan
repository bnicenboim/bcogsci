data {
  int<lower = 1> N;
  vector[N] c_load;
  int<lower= 0, upper = 1> onlyprior;
  vector[N] p_size;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
}
model {
  // priors including all constants
  target += normal_lpdf(alpha | 1000, 500);
  target += normal_lpdf(beta | 0, 100);
  target += normal_lpdf(sigma | 0, 1000)
    - normal_lccdf(0 | 0, 1000);
  if (!onlyprior)
    target += normal_lpdf(p_size | alpha + c_load * beta, sigma);
}
generated quantities {
  real p_size_pred[N];
  p_size_pred = normal_rng(alpha + c_load * beta, sigma);
}
