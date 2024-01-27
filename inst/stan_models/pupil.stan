data {
  int<lower=1> N;
  vector[N] p_size;
  vector[N] c_load;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
}
model {
  // priors:
  target += normal_lpdf(alpha | 1000, 500);
  target += normal_lpdf(beta | 0, 100);
  target += normal_lpdf(sigma | 0, 1000)
    - normal_lccdf(0 | 0, 1000);
  // likelihood
  target += normal_lpdf(p_size | alpha + c_load * beta, sigma);
}
