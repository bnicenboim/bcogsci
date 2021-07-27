functions {
  real recnormal_lpdf(vector RT, real mu, real sigma){
    real lpdf;
    lpdf = normal_lpdf(1 ./ RT | mu, sigma)
    - num_elements(RT) * normal_lccdf(0 | mu, sigma)
    - sum(2 * log(RT));
    return lpdf;
  }
  real recnormal_rng(real mu, real sigma){
    real pred_rt = 0;
    while (pred_rt <= 0)
      pred_rt = 1 / normal_rng(mu, sigma);
    return pred_rt;
  }
}
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
  target += recnormal_lpdf(RT | mu, sigma);
}
generated quantities {
  real rt_pred[N];
  for (n in 1:N)
    rt_pred[n] = recnormal_rng(mu, sigma);
}
