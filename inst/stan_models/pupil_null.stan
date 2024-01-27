data {
  int<lower = 1> N;
  vector[N] c_load;
  vector[N] c_trial;
  vector[N] p_size;
}
parameters {
  real alpha;
  real beta2;
  real beta3;
  real<lower = 0> sigma;
}
model {
  target += normal_lpdf(alpha | 1000, 500);
  target += normal_lpdf(beta2 | 0, 100);
  target += normal_lpdf(beta3 | 0, 100);
  target += normal_lpdf(sigma | 0, 1000)
    - normal_lccdf(0 | 0, 1000);
  target += normal_lpdf(p_size | alpha + c_trial * beta2 +
                                 c_load .* c_trial * beta3, sigma);
}
generated quantities{
  array[N] real log_lik;
  for (n in 1:N){
    log_lik[n] = normal_lpdf(p_size[n] | alpha + c_trial[n] * beta2 +
                             c_load[n] * c_trial[n] * beta3, sigma);
  }
}
