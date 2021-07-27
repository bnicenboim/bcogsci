data {
  int<lower = 1> N;
  vector[N] RT;
}
parameters {
  real mu_s;
  real<lower = 0> sigma_s;
}
transformed parameters {
  real mu = mu_s / 1000;
  real sigma = sigma_s / 1000;
}
model {
  target += normal_lpdf(mu_s | 2, 2);
  target += lognormal_lpdf(sigma_s | log(.5), 1);
  target += normal_lpdf(1 ./ RT | mu, sigma)
     - N * normal_lccdf(0 | mu, sigma)
    - sum(2 * log(RT));
}
