data {
  int<lower = 1> N;
  vector[N] x;
  vector[N] rt;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
  real gamma; //guessing
  real<lower = 0> sigma2;
  real<lower = 0, upper = 1> p_task;
}
model {
  // priors for the task component
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, 0.1);
  target += normal_lpdf(sigma | 0.5, 0.2)
    - normal_lccdf(0 | 0.5, 0.2);
  // priors for the guessing component
  target += normal_lpdf(gamma | 6, 1);
  target += normal_lpdf(sigma2 | 0.5, 0.2)
    - normal_lccdf(0 | 0.5, 0.2);
  target += beta_lpdf(p_task | 1, 1);
  // likelihood
  for(n in 1:N)
    target +=
      log_sum_exp(log(p_task) +
                  lognormal_lpdf(rt[n] | alpha + x[n] * beta, sigma),
                  log1m(p_task) +
                  lognormal_lpdf(rt[n] | gamma, sigma2));
}
