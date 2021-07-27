data {
  int<lower = 1> N;
  vector[N] recRT;
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
  target += normal_lpdf(sigma_s | .5, .5);
  target += normal_lpdf(recRT | mu, sigma);
}
