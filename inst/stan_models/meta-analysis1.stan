data {
  int<lower=1> N;
  vector[N] effect;
  vector[N] SE;
  vector[N] study_id;
}
parameters {
  real zeta;
  real<lower = 0> tau;
  vector[N] z;
}
transformed parameters {
  vector[N] zeta_n = z * tau + zeta;
}
model {
  target += normal_lpdf(effect| zeta_n, SE);
  target += std_normal_lpdf(z);
  target += normal_lpdf(zeta | 0, 100);
  target += normal_lpdf(tau | 0, 100)
    - normal_lccdf(0 | 0, 100);
}
