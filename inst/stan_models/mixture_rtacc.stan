data {
  int<lower = 1> N;
  vector[N] x;
  vector[N] rt;
  array[N] int acc;
}
parameters {
  real alpha;
  real beta;
  real<lower = 0> sigma;
  real<upper = alpha> gamma;
  real<lower = 0> sigma2;
  real<lower = 0, upper = 1> p_correct;
  real<lower = 0, upper = 1> p_task;
}
model {
  target += normal_lpdf(alpha | 6, 1);
  target += normal_lpdf(beta | 0, .3);
  target += normal_lpdf(sigma | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += normal_lpdf(gamma | 6, 1) -
    normal_lcdf(alpha | 6, 1);
  target += normal_lpdf(sigma2 | .5, .2)
    - normal_lccdf(0 | .5, .2);
  target += beta_lpdf(p_correct | 995, 5);
  target += beta_lpdf(p_task | 8, 2);
  for(n in 1:N){
    target +=
      log_sum_exp(log(p_task) +
                 lognormal_lpdf(rt[n] | alpha + x[n] * beta, sigma) +
                 bernoulli_lpmf(acc[n] | p_correct),
                 log1m(p_task) +
                 lognormal_lpdf(rt[n] | gamma, sigma2) +
                 bernoulli_lpmf(acc[n] | .5));
  }
}
