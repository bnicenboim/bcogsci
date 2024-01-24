functions {
  real recnormal_lpdf(vector y, real mu, real sigma){
    real lpdf;
    lpdf = normal_lpdf(1 ./ y | mu, sigma)
    - num_elements(y) * normal_lccdf(0 | mu, sigma)
    - sum(2 * log(y));
    return lpdf;
  }
  real recnormal_rng(real mu, real sigma){
    real y = 0;
    while (y <= 0)
      y = 1 / normal_rng(mu, sigma);
    return y;
  }
}
data {
  int<lower = 1> N;
  vector[N]<lower = 0> RT;
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
  target += normal_lpdf(mu_s | 2, 1);
  target += normal_lpdf(sigma_s | 0.4, 0.2)
            - normal_lccdf(0 | 0.4, 0.2);
  target += recnormal_lpdf(RT | mu, sigma);
}
generated quantities {
  array[N] real rt_pred;
  for (n in 1:N)
    rt_pred[n] = recnormal_rng(mu, sigma);
}
